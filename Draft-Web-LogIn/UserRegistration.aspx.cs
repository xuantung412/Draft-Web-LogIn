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
                SqlDataAdapter sda = new SqlDataAdapter("select * from LogInInformation",con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                int totalAccount = dt.Rows.Count;
                int newUserid = totalAccount;
                con.Close();
                string userDataValue = "('"+ newUserid.ToString()+"','"+ this.UserNameTextBox.Text.ToString()+"','"+this.EmailTextbox.Text.ToString() + "','" + this.PasswordTextBox.Text.ToString()+"')";
                con.Open();

                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                string bcd = "Insert INTO LogInInformation(UserID,UserName,Email,Password) values "+ userDataValue;
                cmd = new SqlCommand(bcd, con);

                cmd.ExecuteNonQuery();
                con.Close();

                string setActiveAccount = "Insert INTO ActiveAccount(UserID) values " + this.UserNameTextBox.Text.ToString();



                //Insert information into database
                con.Open();
                cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                string sqlQuery = "('" + newUserid.ToString() + "','" + this.AgencyCompanyNameTextBox.Text.ToString() + "','" + this.AgencyTradingNameTextBox.Text.ToString() + "','" + this.CompanyWebsiteTextBox.Text.ToString() + "','" + this.AgencyMembershipNumberTextBox.Text.ToString() + "','" + this.AgencyCompanyRegistrationNumberTextBox.Text.ToString() + "','" +
                    this.AgencyTravelAssociationTextBox.Text.ToString() + "','" + this.AgencyCountry.Text.ToString() + "','" + this.AgencyRegionTextBox.Text.ToString() + "','" + this.AgencyStreetAddressTextBox.Text.ToString() + "','" + this.AgencyCityTextBox.Text.ToString() + "','" + this.AgencyPostcodeTextBox.Text.ToString() + "','" + this.AgencyPhoneTextBox.Text.ToString() + "','" + this.AgencyFaxTextBox.Text.ToString() + "')";
                bcd = "Insert INTO UserAgencyDetail(userid,companyname,tradingname,website,membershipnumber,companyregistrationnumber,tradeassociation,country,stateregion,address,city,poscode,phone,fax) values " + sqlQuery;
                cmd = new SqlCommand(bcd, con);

                cmd.ExecuteNonQuery();
                con.Close();
                con.Open();
                cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                userDataValue = "('" + newUserid.ToString() + "','" + this.EmailTextbox.Text.ToString() + "')";
                bcd = "Insert INTO UserInformation(UserID,Email) values " + userDataValue;
                cmd = new SqlCommand(bcd, con);

                cmd.ExecuteNonQuery();
                con.Close();

                Response.Redirect("~/UserlogIn.aspx");
                Response.Write("<script>alert('" + "Done" + "')</script>");
            }


        }
    }
}