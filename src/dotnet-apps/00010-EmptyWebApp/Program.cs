using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Http;
using System.Diagnostics;

var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

// app.MapGet("/", () => "Hello World!");

app.Use(async (context, next) =>
{
    await next.Invoke();
});

app.Run(async context =>
{
    Debugger.Break();
    await context.Response.WriteAsync("Hello !!!!");
    Debugger.Break();
});

app.Run();
