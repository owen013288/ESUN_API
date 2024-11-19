using ESUN_API.Dto.Rs;
using System.Net;
using System.Security.Claims;
using System.Text.RegularExpressions;
using System.Text;
using Serilog;

namespace ESUN_API.Middlewares
{
    /// <summary>
    /// 全局錯誤紀錄Log
    /// </summary>
    public class ErrorLoggingMiddleware
    {
        private readonly RequestDelegate _next;

        public ErrorLoggingMiddleware(RequestDelegate next)
        {
            _next = next;
        }

        public async Task InvokeAsync(HttpContext context)
        {
            var originalBodyStream = context.Response.Body;

            using (var newBodyStream = new MemoryStream())
            {
                context.Response.Body = newBodyStream;

                try
                {
                    await _next(context);

                    if (context.Response.StatusCode >= 400)
                    {
                        var request = context.Request;
                        var controllerName = request.RouteValues["controller"]?.ToString();
                        var actionName = request.RouteValues["action"]?.ToString();
                        var userName = context.User.FindFirstValue(ClaimTypes.Name);
                        var email = context.User.FindFirstValue(ClaimTypes.Email);

                        var responseBody = await GetResponseBodyAsync(newBodyStream);

                        responseBody = ConvertUnicodeToString(responseBody);

                        // 記錄錯誤信息
                        Log.Error($"{request.Scheme}://{request.Host.Value}/{controllerName}/{actionName} 中{email}_{userName}遇到狀態碼: {context.Response.StatusCode}錯誤, 錯誤訊息: {responseBody}！");
                    }
                }
                catch (Exception ex)
                {
                    var request = context.Request;
                    var controllerName = request.RouteValues["controller"]?.ToString();
                    var actionName = request.RouteValues["action"]?.ToString();
                    var userName = context.User.FindFirstValue(ClaimTypes.Name);
                    var email = context.User.FindFirstValue(ClaimTypes.Email);

                    Log.Error($"{request.Scheme}://{request.Host.Value}/{controllerName}/{actionName} 中{email}_{userName}遇到狀態碼: {context.Response.StatusCode}錯誤, 錯誤訊息: {ex}！");

                    context.Response.ContentType = "application/json";
                    context.Response.StatusCode = (int)HttpStatusCode.InternalServerError;

                    var response = new DataRs
                    {
                        Status = StatusCodes.Status500InternalServerError,
                        Message = "伺服器內部錯誤！",
                        Data = "",
                        Details = ex.Message
                    };

                    // 寫入錯誤響應
                    await context.Response.WriteAsJsonAsync(response);
                }
                finally
                {
                    // 將新流的內容複製回原始流
                    newBodyStream.Seek(0, SeekOrigin.Begin);
                    await newBodyStream.CopyToAsync(originalBodyStream);
                }
            }
        }

        /// <summary>
        /// 取得回應
        /// </summary>
        /// <param name="responseStream"></param>
        /// <returns></returns>
        private async Task<string> GetResponseBodyAsync(Stream responseStream)
        {
            responseStream.Seek(0, SeekOrigin.Begin);
            using (var reader = new StreamReader(responseStream, Encoding.UTF8, leaveOpen: true))
            {
                return await reader.ReadToEndAsync();
            }
        }

        /// <summary>
        /// 萬國馬編譯
        /// </summary>
        /// <param name="unicodeString"></param>
        /// <returns></returns>
        private string ConvertUnicodeToString(string unicodeString)
        {
            // 正則表達式檢查是否包含 Unicode 編碼
            string pattern = @"\\u[0-9A-Fa-f]{4}";
            Regex regex = new Regex(pattern);
            if (regex.IsMatch(unicodeString))
            {
                // 使用 StringBuilder 來處理轉換
                var stringBuilder = new System.Text.StringBuilder();

                // 按照字元逐一處理
                for (int i = 0; i < unicodeString.Length; i++)
                {
                    if (unicodeString[i] == '\\' && i + 1 < unicodeString.Length && unicodeString[i + 1] == 'u')
                    {
                        // 取得 Unicode 編碼
                        string hex = unicodeString.Substring(i + 2, 4);
                        int codePoint = Convert.ToInt32(hex, 16);

                        // 將編碼轉換為字符並加入 StringBuilder
                        stringBuilder.Append((char)codePoint);

                        // 跳過已處理的編碼
                        i += 5;
                    }
                    else
                    {
                        // 其他字符直接加入 StringBuilder
                        stringBuilder.Append(unicodeString[i]);
                    }
                }

                return stringBuilder.ToString();
            }

            return unicodeString;
        }
    }
}