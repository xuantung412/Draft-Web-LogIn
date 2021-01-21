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
            if(!IsPostBack)
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


            //Get User Information to retrieve data.
            con.Open();
            query = "select * from UserAgencyDetail where UserID = '" + userID + "'";
            sda = new SqlDataAdapter(query, con);
            dt = new DataTable();
            sda.Fill(dt);
            try
            {
                this.CompanyNameTextBox.Text = dt.Rows[0][1].ToString();
            }
            catch (Exception e1){}
            try{this.TradingNameTextBox.Text = dt.Rows[0][2].ToString();}
            catch (Exception e5){}
            try { this.WebsiteTextBox.Text = dt.Rows[0][3].ToString(); }
            catch (Exception e5) { }
            try { this.BusinessTypeDropdownlist.SelectedValue = dt.Rows[0][4].ToString(); }
            catch (Exception e5) { }
            try { this.NumberOfEmployeesDropdownlist.SelectedValue = dt.Rows[0][5].ToString(); }
            catch (Exception e5) { }
            try { this.LicenseIndustryMembershipNumberTextBox.Text = dt.Rows[0][6].ToString(); }
            catch (Exception e5) { }
            try { this.CompanyRegisterNumberTextBox.Text = dt.Rows[0][7].ToString(); }
            catch (Exception e5) { }
            try { this.TravelAssociationTextbox.Text = dt.Rows[0][8].ToString(); }
            catch (Exception e5) { }
            try { this.AgentCountryDropDownList.SelectedValue = dt.Rows[0][9].ToString(); }
            catch (Exception e5) { }
            try { this.StateRegionTextBox.Text = dt.Rows[0][10].ToString(); }
            catch (Exception e5) { }
            try { this.AddressTextBox.Text = dt.Rows[0][11].ToString(); }
            catch (Exception e5) { }
            try { this.CityTextBox.Text = dt.Rows[0][12].ToString(); }
            catch (Exception e5) { }
            try { this.PostcodeTextbox.Text = dt.Rows[0][13].ToString(); }
            catch (Exception e5) { }
            try { this.SolutionOfInterestDropDownList.SelectedValue= dt.Rows[0][14].ToString(); }
            catch (Exception e5) { }

            con.Close();
            }
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

                //Delete old information from UserInformation
                con.Open();
                string bcd2 = "delete from UserInformation where UserID = '" + userID + "'";
                cmd = new SqlCommand(bcd2, con);
                cmd.ExecuteNonQuery();
                con.Close();

                //Insert information into UserGencyDetail
                con.Open();
                string updateQuery = "";
                updateQuery = "update UserAgencyDetail set companyname ='" + this.CompanyNameTextBox.Text + "'," + "tradingname ='" + this.TradingNameTextBox.Text + "'," + "website ='" + WebsiteTextBox.Text + "'," + "businesstype='" + this.BusinessTypeDropdownlist.SelectedValue.ToString() + "'," + "numberofemployee='" + this.NumberOfEmployeesDropdownlist.SelectedValue.ToString() + "'," + "MembershipNumber ='" + LicenseIndustryMembershipNumberTextBox.Text + "'," + "companyregistrationnumber='" + this.CompanyRegisterNumberTextBox.Text + "'," + "tradeassociation ='" + this.TravelAssociationTextbox.Text + "', country='" + this.AgentCountryDropDownList.SelectedValue.ToString() + "',StateRegion ='" + this.StateRegionTextBox.Text + "',address ='" + this.AddressTextBox.Text + "',city ='" + this.CityTextBox.Text + "',Poscode='" + this.PostcodeTextbox.Text + "',solutionofinterest='" + this.SolutionOfInterestDropDownList.SelectedValue.ToString() + "'where UserID = '" + userID + "'";

                string insertQuerry = "";

                cmd = new SqlCommand(updateQuery, con);

                cmd.ExecuteNonQuery();
                con.Close();

                //Insert information into UserInformation
                con.Open();
                insertQuerry = "Insert INTO UserInformation(UserID,Title,FirstName,SurName,YearsInTravel,Email,CountryCode,PhoneNumber) values ";
                insertQuerry += "('" + userID + "','" + this.UserTitleDropDownList.SelectedValue.ToString() + "','" + this.FirstNameTextBox.Text + "','" + this.SurNameTextBox.Text + "','" + this.YearInTravelDropDownList.SelectedValue.ToString() + "','" + EmailTextBox.Text + "','" + this.UserCountryDropDownList.SelectedValue.ToString() + "','" + this.UserPhoneNumberTextBox.Text + "')";
                cmd = new SqlCommand(insertQuerry, con);


                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("~/LogoPhotoUpload.aspx");

            }
            else
            {
                Response.Write("<script>alert('" + "Please stick  the agreement !." + "')</script>");

            }
        }
    }
}