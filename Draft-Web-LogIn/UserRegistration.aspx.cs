using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Draft_Web_LogIn
{
    public partial class UserRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
        {

        }

        protected void SignUpButton_Click(object sender, EventArgs e)
        {

            if (this.UserNameTextBox.Text.ToString().Length <1 || this.PasswordTextBox.Text.ToString().Length < 1 || this.EmailTextbox.Text.ToString().Length < 1)
            {
                Response.Write("<script>alert('" + "UserName or Password or Email is empty. Please fill it" + "')</script>");
            }
            else
            {
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\TungDemoDB.mdf;Integrated Security=True");
                con.Open();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                string bcd = "Insert INTO LogInInformation(UserID,UserName,Email,Password) values (12,13,43,4)";
                cmd = new SqlCommand(bcd, con);

                cmd.ExecuteNonQuery();

                con.Close();

                Response.Write("<script>alert('" + "Done" + "')</script>");


            }

        }
    }
}