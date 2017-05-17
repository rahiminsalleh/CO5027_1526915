using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Collections;
using System.Data.SqlClient;
using System.IO;

namespace CO5027
{
    public partial class UploadImage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string productId = Request.QueryString["ID"];
            string filename = productId + ".jpg";

            CurrentImage.ImageUrl = "~/ProductImages/" + filename;
        }

        protected void imageFileUploadControl_Click(object sender, EventArgs e)
        {

            string filename = Request.QueryString["ID"] ;
            string imagetitle = filename + ".jpg";
            string path = Server.MapPath("~/ProductImages/" + imagetitle);

            ImageUpload.SaveAs(path);

            SqlConnection con = new SqlConnection(@"Data Source=SQL2016.FSE.Network;Initial Catalog=db_1526915_j30718_co5027;Integrated Security=False;User ID=user_db_1526915_j30718_co5027;Password=Chester1526915;Connect Timeout=15;Encrypt=False;TrustServerCertificate=True;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");

            con.Open();

            SqlCommand cmd = new SqlCommand("Insert into Images(ImageName,ImagePath)values(@ImageName,@ImagePath)", con);

            cmd.Parameters.AddWithValue("@ImageName", imagetitle);
            cmd.Parameters.AddWithValue("@ImagePath", "~/ProductImages/" + imagetitle);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void btnReturn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin/Products.aspx");
        }
    }
}