using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

namespace Hotel_Project
{
    public partial class HotelProfile : System.Web.UI.Page
    {
        string hotel_constr = ConfigurationManager.ConnectionStrings["hotel_constr"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.Identity.IsAuthenticated)
            {
                Response.Redirect("~/Registration.aspx");
            }

            else if (User.Identity.IsAuthenticated && !User.IsInRole("Hotel"))
            {
                Response.Redirect("~/Home.aspx");
            }
            MembershipUser currentUserName = Membership.GetUser(User.Identity.Name);
            Guid CurrentUserid = (Guid)currentUserName.ProviderUserKey;
            if (!IsPostBack)
            {
                //string hotelname = Request.QueryString["hotelnm"];
                string userID=CurrentUserid.ToString();
                 

                using (SqlConnection con = new SqlConnection(hotel_constr))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = "Select * from HotelDetails where UserId like @Hinfo";
                    cmd.Parameters.AddWithValue("@Hinfo", userID);
                    cmd.Connection = con;

                    SqlDataReader data = cmd.ExecuteReader();
                   

                    {
                        while (data.Read())
                        {
                           

                            string imgpath = data["Imagepath"].ToString();
                            hotel_img.ImageUrl = "" + imgpath;

                            TxtName.Text = data["Name"].ToString();
                            TxtState.Text = data["State"].ToString();
                            TxtCity.Text = data["City"].ToString();
                            TxtPrice.Text = data["Price"].ToString();
                            TxtDesc.Text = data["Description"].ToString();

                            //ChkSingle.Text = data["Single"].ToString();
                            //ChkDouble.Text = data["Double_rm"].ToString();
                            //ChkStd.Text = data["Standard"].ToString();

                            //ChkAir.Text = data["Air_condition"].ToString();
                            //ChkInternet.Text = data["Internet"].ToString();
                            //ChkTV.Text = data["Television"].ToString();
                            //ChkPark.Text = data["Parking"].ToString();
                            //ChkRest.Text = data["Restaurant"].ToString();

                            Txtstaffnm.Text = data["Staff_name"].ToString();
                            TxtDesignation.Text = data["Designation"].ToString();

                            TxtTel.Text = data["Tel"].ToString();
                            TxtEmail.Text = data["Email"].ToString();

                            //string imgpath1 = data["Imagepath1"].ToString();
                            //hotel_img.ImageUrl = "~" + imgpath;

                            //string imgpath2 = data["Imagepath2"].ToString();
                            //hotel_img.ImageUrl = "~" + imgpath;

                            //string imgpath3 = data["Imagepath3"].ToString();
                            //hotel_img.ImageUrl = "~" + imgpath;

                            //string imgpath4 = data["Imagepath4"].ToString();
                            //hotel_img.ImageUrl = "~" + imgpath;


                        }

                    }


                }
            }
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            MembershipUser currentUserName = Membership.GetUser(User.Identity.Name);
            Guid CurrentUserid = (Guid)currentUserName.ProviderUserKey;
            string hotel_constr = ConfigurationManager.ConnectionStrings["hotel_constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(hotel_constr))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand();

                cmd.CommandText = "update HotelDetails  set Name=@name,State=@state,City=@city,Imagepath=@image,Price=@price,Description=@desc,Single=@single,Double_rm=@doublerm,Standard=@std,Air_condition=@ac,Internet=@internet,Television=@tv,Parking=@park,Restaurant=@rest,Health=@health,pet=@pet,Staff_name=@staffname,Designation=@designation,Tel=@tel,Email=@email where UserId like @CUserid";
                cmd.Parameters.AddWithValue("@name", TxtName.Text);
                cmd.Parameters.AddWithValue("@CUserid", CurrentUserid);
                cmd.Parameters.AddWithValue("@city", TxtCity.Text);
                cmd.Parameters.AddWithValue("@state", TxtState.Text);
                cmd.Parameters.AddWithValue("@image", hotel_img.ImageUrl);
                cmd.Parameters.AddWithValue("@price", TxtPrice.Text);
                cmd.Parameters.AddWithValue("@desc", TxtDesc.Text);
               
                cmd.Parameters.AddWithValue("@single", ChkSingle.SelectedValue);
                cmd.Parameters.AddWithValue("@doublerm", ChkDouble.SelectedValue);
                cmd.Parameters.AddWithValue("@std", ChkStd.SelectedValue);
                
                cmd.Parameters.AddWithValue("@ac", ChkAir.SelectedValue);
                cmd.Parameters.AddWithValue("@internet", ChkInternet.SelectedValue);
                cmd.Parameters.AddWithValue("@tv", ChkTV.SelectedValue);

                cmd.Parameters.AddWithValue("@park", ChkPark.SelectedValue);
                cmd.Parameters.AddWithValue("@rest", ChkRest.SelectedValue);
                cmd.Parameters.AddWithValue("@health", ChkHealth.SelectedValue);
                cmd.Parameters.AddWithValue("@pet", ChkPet.SelectedValue);
                cmd.Parameters.AddWithValue("@staffname", Txtstaffnm.Text);
                cmd.Parameters.AddWithValue("@designation", TxtDesignation.Text);
                cmd.Parameters.AddWithValue("@tel", TxtTel.Text);
                cmd.Parameters.AddWithValue("@email", TxtEmail.Text);

                cmd.Connection = con;
                cmd.ExecuteNonQuery();

                Response.Redirect("~/Home.aspx");
            }
           
        }

    }
}

