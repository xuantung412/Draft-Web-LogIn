using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Draft_Web_LogIn
{
    public partial class LogoPhotoUpload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void YesButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/TemplateEcomercePage.aspx");
        }
    }
}