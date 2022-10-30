# Web App calls and gets data from a secured Web Api using JWT tokens. 

- In this example, We will apply policy based authorization. 
- So first configure session middle ware the service.
```cs
app.UseSession();
```

```cs
builder.Services.AddDistributedMemoryCache();

builder.Services.AddSession(options =>
{
    options.Cookie.Name = ".AdventureWorks.Session";
    options.Cookie.HttpOnly = true;
    options.IdleTimeout = TimeSpan.FromHours(8);
    options.Cookie.IsEssential = true;
});
```

- Now take a look the Engg.cshtml.cs file.