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
    public partial class UserInformation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Get UserID base on UserName
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\TungDemoDB.mdf;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            string bcd = "select LogInInformation.UserID from LogInInformation inner join liveaccount on LogInInformation.UserName= liveaccount.username";
            SqlDataAdapter sda = new SqlDataAdapter(bcd, con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            string userID = dt.Rows[0][0] + "";   //Get UserID
                                                  //Response.Write("<script>alert('" + userID + "')</script>");
            con.Close();

            con.Open();
            //Get User Information to retrieve data.
            string query = "select * from UserInformation where UserID = '" + userID + "'";
            sda = new SqlDataAdapter(query, con);
            dt = new DataTable();
            sda.Fill(dt);
            try
            {
                this.UserTitleDropDownList.SelectedValue = dt.Rows[0][1].ToString();
            }
            catch (Exception ee) { };
            try
            {
                this.FirstNameTextBox.Text = dt.Rows[0][2].ToString();

            }
            catch (Exception e1) { };
            try
            {
                this.SurNameTextBox.Text = dt.Rows[0][3].ToString();

            }
            catch (Exception e1) { };
            try
            {
                this.YearInTravelDropDownList.SelectedValue = dt.Rows[0][4].ToString();

            }
            catch (Exception e1) { };
            try
            {
                this.EmailTextBox.Text = dt.Rows[0][5].ToString();

            }
            catch (Exception e1) { };
            try
            {
                this.UserCountryDropDownList.SelectedValue = dt.Rows[0][6].ToString();

            }
            catch (Exception e1) { };
            try
            {
                this.UserPhoneNumberTextBox.Text = dt.Rows[0][7].ToString();
            }
            catch ( Exception e5)
            {

            }
            con.Close();
        }
        public int userID = 0;
        protected void NextButton_Click(object sender, EventArgs e)
        {
            if (this.AgreeCheckBox.Checked)
            {
                //User agreed. Countinue

                //Get UserID base on UserName
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\TungDemoDB.mdf;Integrated Security=True");
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                string bcd = "select LogInInformation.UserID from LogInInformation inner join liveaccount on LogInInformation.UserName= liveaccount.username";
                SqlDataAdapter sda = new SqlDataAdapter(bcd, con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                string userID = dt.Rows[0][0]+"";   //Get UserID
                //Response.Write("<script>alert('" + userID + "')</script>");
                con.Close();

                //Delete old information
                con.Open();
                string bcd1 = "delete from UserAgencyDetail where UserID = '"+ userID + "'";
                cmd = new SqlCommand(bcd1, con);
                cmd.ExecuteNonQuery();
                con.Close();

                con.Open();
                string bcd2 = "delete from UserInformation where UserID = '" + userID + "'";
                cmd = new SqlCommand(bcd2, con);
                cmd.ExecuteNonQuery();
                con.Close();

                //Insert information into UserGencyDetail
                con.Open();
                string insertQuerry = "Insert INTO UserAgencyDetail(UserID,CompanyName,TradingName,Website,BusinessType,NumberOfEmployee,MembershipNumber,CompanyRegistrationNumber,TradeAssociation,Country,StateRegion,Address,City,Poscode,SolutionOfInterest) values ";
                insertQuerry += "('"+ userID + "','" +this.CompanyNameTextBox.Text + "','" + this.TradingNameTextBox.Text + "','" + WebsiteTextBox.Text +"','" +this.BusinessTypeDropdownlist.SelectedValue.ToString() + "','" + this.NumberOfEmployeesDropdownlist.SelectedValue.ToString() + "','" +this.LicenseIndustryMembershipNumberTextBox.Text + "','" +this.CompanyRegisterNumberTextBox.Text+ "','" + this.TradingNameTextBox.Text + "','" + this.AgenCountryDropDownList.SelectedValue.ToString() + "','" +this.StateRegionTextBox.Text+ "','" + this.AddressTextBox.Text + "','" + this.CityTextBox.Text + "','" + this.PostcodeTextbox.Text + "','" + this.SolutionOfInterestDropDownList.SelectedValue.ToString() + "')"; 
                cmd = new SqlCommand(insertQuerry, con);

                cmd.ExecuteNonQuery();
                con.Close();

                //Insert information into UserInformation
                con.Open();
                 insertQuerry = "Insert INTO UserInformation(UserID,Title,FirstName,SurName,YearsInTravel,Email,CountryCode,PhoneNumber) values ";
                insertQuerry += "('" + userID + "','" + this.UserTitleDropDownList.SelectedValue.ToString() + "','" + this.FirstNameTextBox.Text + "','" + this.SurNameTextBox.Text + "','" + this.YearInTravelDropDownList.SelectedValue.ToString() + "','" + EmailTextBox.Text + "','" + this.UserCountryDropDownList.SelectedValue.ToString() + "','" + this.UserPhoneNumberTextBox.Text + "')";
                cmd = new SqlCommand(insertQuerry, con);

                cmd.ExecuteNonQuery();
                con.Close();
            }
            else
            {
                Response.Write("<script>alert('" + "Please stick  the agreement !." + "')</script>");

            }
            Response.Redirect("~/LogoPhotoUpload.aspx");
        }
    }
}