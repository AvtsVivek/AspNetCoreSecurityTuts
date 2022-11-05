using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using RegisterUserEmailService.Model;
using RegisterUserEmailService.Services;

namespace RegisterUserEmailService.Pages.Account
{
    public class RegisterModel : PageModel
    {
        private readonly UserManager<IdentityUser> _userManager;
        private readonly IEmailService _emailService;

        public RegisterModel(UserManager<IdentityUser> userManager, IEmailService emailService)
        {
            _userManager = userManager;
            _emailService = emailService;
        }

        [BindProperty]
        public RegisterViewModel RegisterViewModel { get; set; } = new RegisterViewModel();

        public void OnGet()
        {

        }

        public async Task<IActionResult> OnPostAsync()
        {
            if (!ModelState.IsValid) return Page();

            // Validating Email address (Optional)

            // Create the user 

            var user = new IdentityUser
            {
                Email = RegisterViewModel.Email,
                UserName = RegisterViewModel.Email
            };

            var result = await _userManager.CreateAsync(user, RegisterViewModel.Password);

            if (result.Succeeded)
            {
                await _emailService.SendConformationEmail(user, Url);

                return RedirectToPage("/Account/RegisterSuccess");
            }
            else
            {
                foreach (var error in result.Errors)
                {
                    ModelState.AddModelError("Register", error.Description);
                }

                return Page();
            }
        }

        //private async Task SendConformationEmail(IdentityUser user, IUrlHelper urlHelper)
        //{
        //    var confirmationToken = await _userManager.GenerateEmailConfirmationTokenAsync(user);
        //    var confirmationLink = urlHelper.PageLink(pageName: "/Account/ConfirmEmail",
        //        values: new { userId = user.Id, token = confirmationToken });

        //    var messagee = new MailMessage("vivek@gmail.com", user.Email,
        //        "Please confirm your email",
        //        $"Please click on this link to confirm your email address: {confirmationLink}");

        //    using (var emailClient = new SmtpClient("localhost", 1025))
        //    {
        //        emailClient.Credentials = new NetworkCredential(
        //            "vivek@gmail.com",
        //            "VqaRACgdU3Xp5cWB");

        //        await emailClient.SendMailAsync(messagee);
        //    }
        //}
    }
}
