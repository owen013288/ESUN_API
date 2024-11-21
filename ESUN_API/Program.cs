using ESUN_API.Middlewares;
using ESUN_API.Models;
using ESUN_API.Service;
using Microsoft.EntityFrameworkCore;
using Serilog;
using Serilog.Events;

var builder = WebApplication.CreateBuilder(args);

#region Serilog 的設置及使用
// 設置
Log.Logger = new LoggerConfiguration()
    .MinimumLevel.Error() // 設定最小日誌級別為 Error
    .WriteTo.Console()  // 輸出到控制台
    .MinimumLevel.Override("Microsoft.AspNetCore", LogEventLevel.Warning)
    .Enrich.FromLogContext()
    .WriteTo.File("logs/log-.txt", rollingInterval: RollingInterval.Day)
    .CreateLogger();

// 使用
builder.Host.ConfigureLogging(logging => logging.AddConsole().AddSerilog());
#endregion

builder.Services.AddControllers();
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

#region AutoMapper
builder.Services.AddAutoMapper(AppDomain.CurrentDomain.GetAssemblies());
#endregion

#region 連線字串
builder.Services.AddDbContext<ESUNContext>(
        options => options
            .UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection")));
#endregion

#region DI注入
builder.Services.AddScoped<RevenueService>();
builder.Services.AddScoped<ESUNContextExtend>();
#endregion

// 註冊 MediatR
builder.Services.AddMediatR(cfg => cfg.RegisterServicesFromAssembly(typeof(Program).Assembly));

var app = builder.Build();

if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseMiddleware<ErrorLoggingMiddleware>();

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();