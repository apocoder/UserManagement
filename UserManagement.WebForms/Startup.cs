using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(UserManagement.WebForms.Startup))]
namespace UserManagement.WebForms
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
