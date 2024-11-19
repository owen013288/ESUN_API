using ESUN_API.Middlewares;
using ESUN_API.Models;
using ESUN_API.Service;
using Microsoft.EntityFrameworkCore;
using Serilog;
using Serilog.Events;

var builder = WebApplication.CreateBuilder(args);

#region Serilog ���]�m�Ψϥ�
// �]�m
Log.Logger = new LoggerConfiguration()
    .MinimumLevel.Error() // �]�w�̤p��x�ŧO�� Error
    .WriteTo.Console()  // ��X�챱��x
    .MinimumLevel.Override("Microsoft.AspNetCore", LogEventLevel.Warning)
    .Enrich.FromLogContext()
    .WriteTo.File("logs/log-.txt", rollingInterval: RollingInterval.Day)
    .CreateLogger();

// �ϥ�
builder.Host.ConfigureLogging(logging => logging.AddConsole().AddSerilog());
#endregion

builder.Services.AddControllers();
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

#region �s�u�r��
builder.Services.AddDbContext<ESUNContext>(
        options => options
            .UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection")));
#endregion

#region DI�`�J
builder.Services.AddScoped<RevenueService>();
builder.Services.AddScoped<ESUNContextExtend>();
#endregion

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