using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Hotel_Project.Hotel
{

    public partial class MoreDetailsPage : System.Web.UI.Page
    {
        string hotel_constr = ConfigurationManager.ConnectionStrings["hotel_constr"].ConnectionString;
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string hotelname = Request.QueryString["hotelnm"];

                using (SqlConnection con = new SqlConnection(hotel_constr))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = "Select * from HotelDetails where name like @name";
                    cmd.Parameters.AddWithValue("@name", hotelname);
                    cmd.Connection = con;

                    SqlDataReader data = cmd.ExecuteReader();
                    //GridView1.DataSource = data;
                    //GridView1.DataBind();

                    {
                        while (data.Read())
                        {

                            string imgpath = data["Imagepath"].ToString();
                            //  hotel_img.ImageUrl = "~" + imgpath;
                            hotel_img.ImageUrl ="" + imgpath;

                            //string imgpath1 = data["Imagepath1"].ToString();
                            //string imgpath2 = data["Imagepath2"].ToString();
                            //string imgpath3 = data["Imagepath3"].ToString();
                            //string imgpath4 = data["Imagepath4"].ToString();

                            lblName.Text = data["Name"].ToString();
                            LblState.Text = data["State"].ToString();
                            LblCity.Text = data["City"].ToString();
                            Lblprice.Text = data["Price"].ToString();
                            LblDescription.Text = data["Description"].ToString();

                            LblSingle.Text = data["Single"].ToString();
                            lblDouble.Text = data["Double_rm"].ToString();
                            LblStd.Text = data["Standard"].ToString();

                            LblAir.Text = data["Air_condition"].ToString();
                            LblInternet.Text = data["Internet"].ToString();
                            LblTv.Text = data["Television"].ToString();
                            LblPark.Text = data["Parking"].ToString();
                            LblRest.Text = data["Restaurant"].ToString();

                            LblTel.Text = data["Tel"].ToString();
                            LblEmail.Text = data["Email"].ToString();

                            string imgpath1 = data["Imagepath1"].ToString();
                            hotel_img1.ImageUrl = "" + imgpath1;

                            string imgpath2 = data["Imagepath2"].ToString();
                            hotel_img2.ImageUrl = "" + imgpath2;

                            string imgpath3 = data["Imagepath3"].ToString();
                            hotel_img3.ImageUrl = "" + imgpath3;

                            string imgpath4 = data["Imagepath4"].ToString();
                            hotel_img4.ImageUrl = "" + imgpath4;

                            Session["Booking_HotelID"] = data["Hotel_ID"];
                            Session["Booking_HotelName"] = data["Name"];
                            Session["Booking_Price"] = data["Price"];

                            
                        }
                        
                    }


                }
            }
        }

        protected void BookBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Boking.aspx");
        }
    }
}
