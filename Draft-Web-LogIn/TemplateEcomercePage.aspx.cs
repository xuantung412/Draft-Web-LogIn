using AjaxControlToolkit;
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
    public partial class DemoWeb : System.Web.UI.Page
    {
        public int selectedTemplate = 0; 




        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void Template1Button_Click(object sender, EventArgs e)
        {

        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void SelectThisTemplateButton_Click(object sender, EventArgs e)
        {
            int selectedTemplate = 1;
            //Get UserID
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\TungDemoDB.mdf;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            string bcd = "select * from liveaccount";
            SqlDataAdapter sda = new SqlDataAdapter(bcd, con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            string userID = dt.Rows[0][0] + "";   //Get UserID

            Response.Write("<script>alert('" + userID + "')</script>");

            //Response.Write("<script>alert('" + userID + "')</script>");
            con.Close();

            con.Open();
            //Read save selectedTemplate to database
            string bcd1 = "update liveaccount set SelectedTemplate =" + selectedTemplate+" where username ='" + userID+"'";
            cmd = new SqlCommand(bcd1, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/PreviewWebEmpty.aspx");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int selectedTemplate = 2;
            //Get UserID
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\TungDemoDB.mdf;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            string bcd = "select * from liveaccount";
            SqlDataAdapter sda = new SqlDataAdapter(bcd, con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            string userID = dt.Rows[0][0] + "";   //Get UserID

            Response.Write("<script>alert('" + userID + "')</script>");

            //Response.Write("<script>alert('" + userID + "')</script>");
            con.Close();

            con.Open();
            //Read save selectedTemplate to database
            string bcd1 = "update liveaccount set SelectedTemplate =" + selectedTemplate + " where username ='" + userID + "'";
            cmd = new SqlCommand(bcd1, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/PreviewWebEmpty.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            int selectedTemplate = 3;
            //Get UserID
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\TungDemoDB.mdf;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            string bcd = "select * from liveaccount";
            SqlDataAdapter sda = new SqlDataAdapter(bcd, con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            string userID = dt.Rows[0][0] + "";   //Get UserID

            Response.Write("<script>alert('" + userID + "')</script>");

            //Response.Write("<script>alert('" + userID + "')</script>");
            con.Close();

            con.Open();
            //Read save selectedTemplate to database
            string bcd1 = "update liveaccount set SelectedTemplate =" + selectedTemplate + " where username ='" + userID + "'";
            cmd = new SqlCommand(bcd1, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/PreviewWebEmpty.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            int selectedTemplate = 4;
            //Get UserID
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\TungDemoDB.mdf;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            string bcd = "select * from liveaccount";
            SqlDataAdapter sda = new SqlDataAdapter(bcd, con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            string userID = dt.Rows[0][0] + "";   //Get UserID

            Response.Write("<script>alert('" + userID + "')</script>");

            //Response.Write("<script>alert('" + userID + "')</script>");
            con.Close();

            con.Open();
            //Read save selectedTemplate to database
            string bcd1 = "update liveaccount set SelectedTemplate =" + selectedTemplate + " where username ='" + userID + "'";
            cmd = new SqlCommand(bcd1, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/PreviewWebEmpty.aspx");
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            int selectedTemplate = 5;
            //Get UserID
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\TungDemoDB.mdf;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            string bcd = "select * from liveaccount";
            SqlDataAdapter sda = new SqlDataAdapter(bcd, con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            string userID = dt.Rows[0][0] + "";   //Get UserID

            Response.Write("<script>alert('" + userID + "')</script>");

            //Response.Write("<script>alert('" + userID + "')</script>");
            con.Close();

            con.Open();
            //Read save selectedTemplate to database
            string bcd1 = "update liveaccount set SelectedTemplate =" + selectedTemplate + " where username ='" + userID + "'";
            cmd = new SqlCommand(bcd1, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/PreviewWebEmpty.aspx");
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            int selectedTemplate = 6;
            //Get UserID
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\TungDemoDB.mdf;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            string bcd = "select * from liveaccount";
            SqlDataAdapter sda = new SqlDataAdapter(bcd, con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            string userID = dt.Rows[0][0] + "";   //Get UserID

            Response.Write("<script>alert('" + userID + "')</script>");

            //Response.Write("<script>alert('" + userID + "')</script>");
            con.Close();

            con.Open();
            //Read save selectedTemplate to database
            string bcd1 = "update liveaccount set SelectedTemplate =" + selectedTemplate + " where username ='" + userID + "'";
            cmd = new SqlCommand(bcd1, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/PreviewWebEmpty.aspx");
        }
    }
}