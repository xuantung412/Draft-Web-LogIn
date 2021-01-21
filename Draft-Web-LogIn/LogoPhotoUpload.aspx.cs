using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
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
            if(!IsPostBack)
            {
                try
                {

                //Get UserID base on UserName
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\TungDemoDB.mdf;Integrated Security=True");
                con.Open();
                string bcd = "select LogInInformation.UserID from LogInInformation inner join liveaccount on LogInInformation.UserName= liveaccount.username";
                SqlDataAdapter sda = new SqlDataAdapter(bcd, con);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                string userID = dt.Rows[0][0] + "";   //Get UserID
                                                      //Response.Write("<script>alert('" + userID + "')</script>");
                con.Close();

                    //Get image data from database and retrieve

                    con.Open();
                string insertQuerry = "select LogoImage from UserAgencyDetail where userid = '" + userID+"'";
                sda = new SqlDataAdapter(insertQuerry, con);
                dt = new DataTable();
                sda.Fill(dt);
                byte[] logoSource = (byte[])dt.Rows[0][0];
                string logoData = Convert.ToBase64String(logoSource);
                this.LogoImage.ImageUrl = String.Format("data:image/jpg;base64,{0}", logoData);
                con.Close();
                }
                    catch(Exception e43)
                {

                }


            }
        }

        protected void YesButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/TemplateEcomercePage.aspx");
        }

        protected void UploadButton_Click(object sender, EventArgs e)
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

            //Get bitmap from upload image
            if (FileUploadControl.HasFile)  //User up
            {
                HttpPostedFile postedFile = FileUploadControl.PostedFile;
                string fileName = Path.GetFileName(postedFile.FileName);
                string fileExtension = Path.GetExtension(fileName);
                int fileSize = postedFile.ContentLength;

                if (fileSize <= 100 * 1021 && (fileExtension.ToLower().Equals(".jpg") || fileExtension.ToLower().Equals(".png") || fileExtension.ToLower().Equals(".jpeg") || fileExtension.ToLower().Equals(".gif") || fileExtension.ToLower().Equals(".svg")))
                {

                    //Accepted type. Save image to database in binary format
                    byte[] bytes;
                    using (BinaryReader br = new BinaryReader(FileUploadControl.PostedFile.InputStream))
                    {
                        bytes = br.ReadBytes(FileUploadControl.PostedFile.ContentLength);
                    }
                    using (SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\TungDemoDB.mdf;Integrated Security=True"))
                    {
                        string sql = "update UserAgencyDetail set LogoImage= @imageData where UserID = '" +userID+"'";
                        using (SqlCommand cmd1 = new SqlCommand(sql, conn))
                        {
                            cmd1.Parameters.AddWithValue("@imageData", bytes);
                            conn.Open();
                            cmd1.ExecuteNonQuery();
                            conn.Close();
                            //Display image on screen
                            string PROFILE_PIC = Convert.ToBase64String(bytes);
                            this.LogoImage.ImageUrl = String.Format("data:image/jpg;base64,{0}", PROFILE_PIC);
                        }
                    }

                }
                else
                {
                    if (fileSize > 100 * 1021)
                    {
                        Response.Write("<script>alert('" + "The limit for your File Size is 100kb. Please check !" + "')</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('" + "Only accepted Image with .JPG, .JPEG, .PNG, .GIF and .SVG format." + "')</script>");
                    }

                }

            }


        }

        protected void NoButton_Click(object sender, EventArgs e)
        {
            this.LogoImage.ImageUrl = "~/DefaultImage.png";
        }
    }
}