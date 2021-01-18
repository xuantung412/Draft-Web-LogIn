using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Draft_Web_LogIn
{
    public partial class Site_NestedTKGFlatform : System.Web.UI.MasterPage
    {
        protected void MyProfileDropdownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect(MyProfileDropdownList.SelectedValue);
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MyProfileDropdownList.SelectedValue = Request.Url.AbsolutePath;
            }
        }
    }
}