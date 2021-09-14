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
    public partial class GuestProfile : System.Web.UI.Page
    {
        string hotel_constr = ConfigurationManager.ConnectionStrings["hotel_constr"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.Identity.IsAuthenticated)
            {
                Response.Redirect("~/Registration.aspx");
            }

            else if (User.Identity.IsAuthenticated && !User.IsInRole("Guest"))
            {
                Response.Redirect("~/Home.aspx");
            }

         
            MembershipUser currentUserName = Membership.GetUser(User.Identity.Name);
            Guid CurrentUserid = (Guid)currentUserName.ProviderUserKey;
          //  Session["PresentID"] = CurrentUserid;




           // string Pid;
           // Pid = Convert.ToString(Session["PresentID"]);
            if (!IsPostBack)
             {
                using (SqlConnection con = new SqlConnection(hotel_constr))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = "Select * from aspnet_Users where UserId like @pid";
                    cmd.Parameters.AddWithValue("@pid", CurrentUserid);
                    cmd.Connection = con;
                    SqlDataReader data = cmd.ExecuteReader();
                    {                     
                        {
                            while (data.Read())
                            {
                               
                                LblName.Text = data["UserName"].ToString();
                              
                              
                            }                          
                        }
                    }
                }
                
                //    LblNoroom.Text = Session["rmprice"].ToString();
              
               
                using (SqlConnection con = new SqlConnection(hotel_constr))
                {
                    con.Open();
                    //string Pid;
                   // Pid = Convert.ToString(Session["PresentID"]);
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = "Select * from BookingDetails where UserId like @pid";
                    cmd.Parameters.AddWithValue("@pid", CurrentUserid);
                    cmd.Connection = con;
                  

                    SqlDataReader data = cmd.ExecuteReader();
                    {
                        //GridView1.DataSource = data;
                        //GridView1.DataBind();
                      
                        {
                            while (data.Read())
                            {
                                LblHname.Text = data["Name"].ToString();
                                LblPrice.Text = data["Price"].ToString();
                               
                                LblFname.Text = data["FName"].ToString();
                                LblLname.Text = data["LName"].ToString();
                                LblContact.Text = data["Contact"].ToString();
                                LblEmail.Text = data["Email"].ToString();
                                LblAddress.Text = data["Address"].ToString();
                                LblCity.Text = data["City"].ToString();
                                LblState.Text = data["State"].ToString();
                                LblRoomtype.Text = data["Roomtype"].ToString();
                                LblNoroom.Text = data["NOOFRoom"].ToString();
                                //LblEmail.Text = data["Contact"].ToString();
                                Lblchkin.Text = data["Check_In"].ToString();
                                Lblchkout.Text = data["Check_Out"].ToString();



                                Session["Bid"] = data["BookingID"];
                                Session["GFName"] = data["FName"];
                                Session["GLName"] = data["LName"];
                                Session["GContact"] = data["Contact"];
                                Session["GEmail"] = data["Email"];
                                Session["GAddress"] = data["Address"];
                                Session["GCity"] = data["City"];
                                Session["GState"] = data["State"];
                                Session["GRoomtype"] = data["Roomtype"];
                            
                                Session["GChkin"] = data["Check_in"];
                                Session["GChkout"] = data["Check_out"];
                                Session["GNoRoom"] = data["NOOFRoom"];
                              

                            }


                        }
                    }
                       
                    
                }
               
            }
        }

        protected void BtnUpdate_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/GuestUpdate.aspx");
        }
    }
}