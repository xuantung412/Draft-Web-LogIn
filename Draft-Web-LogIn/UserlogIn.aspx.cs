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
    public partial class UserlogIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void PrivacyPolicy_Click(object sender, EventArgs e)
        {

        }

        protected void Sign_Click1(object sender, EventArgs e)
        {
            string userName = this.UserNameTextBox.Text.ToString();
            string userPassword = this.PasswordTextBox.Text.ToString();

            char emailCharacter = '@';
            string sqlQuery = "";
            if (userName.Contains(emailCharacter))  //Check whether user use UserName or Email to log in
            {
                sqlQuery = "select * from LogInInformation where email = '"; //User use Email.
            }
                else //User use UserName
                {
                    sqlQuery = "select * from LogInInformation where username = '";
                }

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\TungDemoDB.mdf;Integrated Security=True");
            SqlDataAdapter sda = new SqlDataAdapter(sqlQuery + userName + "' and password='" + userPassword + "'", con);

            DataTable dt = new DataTable();
            sda.Fill(dt);

            int totalAccount = dt.Rows.Count;
            con.Close();
            if (totalAccount > 0)  //Account exist or not
            {
                //Account exist
                //Delete old active account from LiveAccount table
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                string bcd = "drop table liveaccount";
                cmd = new SqlCommand(bcd, con);
                cmd.ExecuteNonQuery();
                con.Close();

                //Insert this user to LiveAccount table
                con.Open();
                cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                bcd = "CREATE TABLE [dbo].[LiveAccount]([UserName] VARCHAR(MAX) NOT NULL,[ID] INT NULL,[SelectedTemplate] INT NULL);";
                cmd = new SqlCommand(bcd, con);
                cmd.ExecuteNonQuery();
                con.Close();



                //Insert this user to LiveAccount table
                con.Open();
                cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                string stringcommand = "('" + this.UserNameTextBox.Text.ToString()+"')";
                bcd = "Insert INTO LiveAccount(UserName) values " + stringcommand;
                //Response.Write("<script>alert('" + bcd+ "')</script>");
                cmd = new SqlCommand(bcd, con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("~/UserInformation.aspx");

            }
            else
            {
                Response.Write("<script>alert('" + "Username or Password is incorrect. Please check !" + "')</script>");
            }
        }

        protected void RegistrationButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UserRegistration.aspx");
        }
    }
}