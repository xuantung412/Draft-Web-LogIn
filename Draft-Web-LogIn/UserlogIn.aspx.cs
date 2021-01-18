using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Draft_Web_LogIn
{
    public partial class UserlogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void PrivacyPolicy_Click(object sender, EventArgs e)
        {

        }

        protected void Sign_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UserInformation.aspx");
        }

        protected void Sign_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/UserInformation.aspx");

        }

        protected void RegistrationButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UserRegister.aspx");
        }
    }
}