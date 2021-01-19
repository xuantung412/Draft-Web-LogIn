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
    public partial class PreviewBackEnd : System.Web.UI.Page
    {
        string selectedTemplateToReview = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            //Get UserID
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\TungDemoDB.mdf;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            string bcd = "select * from liveaccount";
            SqlDataAdapter sda = new SqlDataAdapter(bcd, con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            string selectedTemplate = dt.Rows[0][2] + "";   //Get UserID
            con.Close();
            selectedTemplateToReview = selectedTemplate;

            BackEndReviewImage.ImageUrl = "~/WebTemplateImage/Template" + selectedTemplateToReview + ".png";
        }
    }
}