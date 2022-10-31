# Web App Aspdotnet core identity.

- This builds on the previous example. That example has a register page to register user.
- This example adds a login page, so users can login to the app.
- The login page basically uses a signin manager object to login the user.
- Also add the login link in the layout page.
  ```html
  <li class="nav-item">
      <a class="nav-link text-dark" asp-area="" asp-page="/Account/Login">Login</a>
  </li>
  ```