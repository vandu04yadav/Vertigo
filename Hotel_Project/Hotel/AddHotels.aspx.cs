using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.Security;

namespace Hotel_Project.Hotel
{
    public partial class AddHotels : System.Web.UI.Page
    {
        string hotel_constr = ConfigurationManager.ConnectionStrings["hotel_constr"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

            //if (!User.Identity.IsAuthenticated)
            //{
            //    Response.Redirect("~/Hotel/Registration.aspx");
            //}
            //else if (!User.Identity.IsAuthenticated && User.IsInRole("Hotel"))
            //{

            //    Response.Redirect("~/Hotel/AddHotels.aspx");
            //}
            //else if(User.Identity.IsAuthenticated && User.IsInRole("Guest"))
            //{
            //    Response.Redirect("~/Hotel/Home.aspx");
            //}
           
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {

            if (HotelImgUpload.HasFile)
            {
                string str = HotelImgUpload.FileName;
                HotelImgUpload.PostedFile.SaveAs(Server.MapPath("~/Upload/" + HotelImgUpload.FileName));
                string Imagepath = "~/Upload/" + str.ToString();
                string extension = System.IO.Path.GetExtension(HotelImgUpload.FileName);
                if (extension == ".png" || extension == ".jpg" || extension == ".jpeg" || extension == ".PNG" || extension == ".JPG" || extension == ".JPEG")
                {
                    HotelImgUpload.PostedFile.SaveAs(Server.MapPath("~/Upload/" + HotelImgUpload.FileName));
                    
                   // string name = TxtImgName.Text;
                    LblStatus.Text = "File Uploaded successfully";
                    LblStatus.ForeColor = System.Drawing.Color.Green;
                    using (SqlConnection con = new SqlConnection(hotel_constr))
                    {

                        MembershipUser currentUserName = Membership.GetUser(User.Identity.Name);
                        Guid CurrentUserid = (Guid)currentUserName.ProviderUserKey;
                        con.Open();
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = "Insert into AddHotels (Hotelname, State,City,Type,Imagename,Imagepath,Price,UserId)values(@hotelname,@state,@city,@type,@Imgname,@ImgPath,@price,@UserId)";
                        cmd.Parameters.AddWithValue("@hotelname", Txthotelname.Text);
                        cmd.Parameters.AddWithValue("@state", TxtState.Text);
                        cmd.Parameters.AddWithValue("@city", TxtCity.Text);
                        cmd.Parameters.AddWithValue("@type", ddlHotelType.SelectedValue);
                        cmd.Parameters.AddWithValue("@Imgname", TxtImgName.Text);
                        cmd.Parameters.AddWithValue("@ImgPath", Imagepath);
                        cmd.Parameters.AddWithValue("@price", TxtPrice.Text);
                        cmd.Parameters.AddWithValue("@UserId", CurrentUserid);

                        cmd.Connection = con;
                        cmd.ExecuteNonQuery();
                        LblMsg.Text = "Hotel Added Sucessfully";
                    }
                }
                else
                {
                    LblStatus.Text = "Select Image File Only..";
                    LblStatus.ForeColor = System.Drawing.Color.Red;
                }

            }
            else
            {
                LblStatus.Text = "Select a file";
            }
           

        }
    }
}