using ESUN_API.Models;
using ESUN_API.Service;
using Microsoft.EntityFrameworkCore;

var builder = WebApplication.CreateBuilder(args);

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

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();