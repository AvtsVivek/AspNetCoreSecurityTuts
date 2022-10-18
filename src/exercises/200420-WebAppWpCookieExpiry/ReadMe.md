# Introduces Custom Requirement.

- This builds from the previous example.

- Add expiration to cookie as follows. Also demos SlidingExpiration concept.
 
```cs
cookieAuthenticationOptions.ExpireTimeSpan = TimeSpan.FromSeconds(10);
cookieAuthenticationOptions.SlidingExpiration = false;
```

- Now login, refresh and observe. Also change SlidingExpiration to true/false and then observe again.


