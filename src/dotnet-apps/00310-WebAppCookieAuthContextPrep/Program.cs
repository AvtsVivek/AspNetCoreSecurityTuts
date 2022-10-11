using System.Diagnostics;
using WebAppCookieAuthContextPrep;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddRazorPages();


builder.Services.AddAuthentication(Constants.AuthTypeSchemeName).AddCookie(Constants.AuthTypeSchemeName, options =>
{
    options.Cookie.Name = Constants.AuthTypeSchemeName;
});

var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Error");
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}

app.Use(async (context, next) =>
{

    if (context.User.Identity == null)
        Debugger.Break();
    Console.WriteLine($"The authenticated status {context.User.Identity!.IsAuthenticated}");
    await next.Invoke();
    Console.WriteLine($"The authenticated status {context.User.Identity!.IsAuthenticated}");
    if (context.User.Identity == null)
        Debugger.Break();
});


app.UseHttpsRedirection();
app.UseStaticFiles();

app.UseRouting();

app.UseAuthentication();

app.UseAuthorization();

app.MapRazorPages();

app.Run();
