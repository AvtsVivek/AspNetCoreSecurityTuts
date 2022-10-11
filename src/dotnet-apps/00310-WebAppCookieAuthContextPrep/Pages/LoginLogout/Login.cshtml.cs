using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using System.Security.Claims;
using WebAppCookieAuth.Models;

namespace WebAppCookieAuthContextPrep.Pages.Account
{
    public class LoginModel : PageModel
    {
        [BindProperty]
        public User UserCreds { get; set; } = default!;

        public void OnGet()
        {            

        }

        public async Task<IActionResult> OnPost()
        {
            if (!ModelState.IsValid) return Page();

            // Verify the credential
            if (UserCreds.UserName == "admin" && UserCreds.Password == "123")
            {
                // Creating the security context
                var claims = new List<Claim> {
                    new Claim(ClaimTypes.Name, "admin"),
                    new Claim(ClaimTypes.Email, "admin@mywebsite.com")
                };

                var identity = new ClaimsIdentity(claims, Constants.AuthTypeSchemeName);

                // We are creating the claims principal, which is the security context.
                var claimsPrincipal = new ClaimsPrincipal(identity);

                await HttpContext.SignInAsync(Constants.AuthTypeSchemeName, claimsPrincipal);

                return RedirectToPage("/Index");
            }

            return Page();
        }
    }
}
