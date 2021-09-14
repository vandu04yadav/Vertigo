using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

using System.Net;
using System.IO;
using System.Net.Mail;

using System.Data;
using System.Drawing;
using System.Xml.Linq;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;


namespace Hotel_Project.Hotel
{
    public partial class Boking : System.Web.UI.Page
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

            if (!IsPostBack)
            {
                LblHname.Text = Convert.ToString(Session["Booking_HotelName"]);
                LblPrice.Text = Convert.ToString(Session["Booking_Price"]);

            }
        }

        protected void BtnBook_Click(object sender, EventArgs e)
        {

            MembershipUser currentUserName = Membership.GetUser(User.Identity.Name);
            Guid CurrentUserid = (Guid)currentUserName.ProviderUserKey;
         
            //Session["Booking_HotelID"] = abc;
            //string hotelname = Request.QueryString["hotelnm"];

            using (SqlConnection con = new SqlConnection(hotel_constr))
            {
               
                con.Open();
                SqlCommand cmd = new SqlCommand();
                string hid;

                hid = Convert.ToString(Session["Booking_HotelID"]);
                //LblHname.Text=Convert.ToString(Session["Booking_HotelName"]);
                //LblPrice.Text = Convert.ToString(Session["Booking_Price"]);


                cmd.CommandText = "insert into BookingDetails(UserID, HotelID,Name,Price, FName,LName,Email,Contact,Address,City,State,Roomtype,Check_In,Check_Out,NOOFRoom)values(@uid,@hid,@Hname,@Bprice,@fname,@lname,@Bemail,@Bcontact,@address,@city,@state,@roomtype,@indate,@outdate,@noroom)";
                cmd.Parameters.AddWithValue("@uid", CurrentUserid);
                cmd.Parameters.AddWithValue("@hid", hid);
                cmd.Parameters.AddWithValue("@Hname", LblHname.Text);
                cmd.Parameters.AddWithValue("@Bprice", LblPrice.Text);
                cmd.Parameters.AddWithValue("@fname", Txtfname.Text);
                cmd.Parameters.AddWithValue("@lname", Txtlname.Text);
                cmd.Parameters.AddWithValue("@Bemail", TxtEmail.Text);
                cmd.Parameters.AddWithValue("@Bcontact", TxtContact.Text);
                cmd.Parameters.AddWithValue("@address", Txtaddress.Text);
                cmd.Parameters.AddWithValue("@city", TxtCity.Text);
                cmd.Parameters.AddWithValue("@state", TxtState.Text);
                cmd.Parameters.AddWithValue("@roomtype", Txtroomtype.SelectedValue);

                cmd.Parameters.AddWithValue("@indate", TxtCheckin.Text);
                cmd.Parameters.AddWithValue("@outdate", TxtCheckout.Text);
                cmd.Parameters.AddWithValue("@noroom", TxtNoroom.Text);
                cmd.Connection = con;

                cmd.Connection = con;
                cmd.ExecuteNonQuery();

                int rmprice;
                rmprice = ((Convert.ToInt32(TxtNoroom.Text)) * (Convert.ToInt32(LblPrice.Text)));
                Session["NoOfRoomPrice"] = rmprice;


            }

            // string useremail = currentUserName.Email;
                           string useremail = TxtEmail.Text;

                            string to = useremail; //To address    
                            string from = "vertigoprj04@gmail.com"; //From address
                            string msg = "It’s confirmed,! Thank you for booking with us. We look forward to welcoming you soon!";
                            MailMessage message = new MailMessage(from, to);

                            // string mailbody = CKEditorControl1.Text;
                            message.Subject = " Hotel Booking Confirmation Email";
                            message.Body = msg;
                            // message.Body = CKEditorControl1.Text;
                            message.BodyEncoding = System.Text.Encoding.UTF8;
                            message.IsBodyHtml = true;
                            SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
                            System.Net.NetworkCredential basicCredential1 = new
                            System.Net.NetworkCredential("vertigoprj04@gmail.com", "vertigo@1234");
                            client.EnableSsl = true;
                            client.UseDefaultCredentials = false;
                            client.Credentials = basicCredential1;
                            try
                            {
                                client.Send(message);
                            }

                            catch (Exception ex)
                            {
                                Response.Write(ex.Message);
                            }
            Response.Redirect("GuestProfile.aspx");

        }






        protected void CalCheckIn_SelectionChanged(object sender, EventArgs e)
        {
                TxtCheckin.Text = CalCheckIn.SelectedDate.ToLongDateString();
        }
        protected void CalCheckIn_DayRender(object sender, DayRenderEventArgs e)
        {
            DateTime pastday = e.Day.Date;
            DateTime date = DateTime.Now;
            int year = date.Year;
            int month = date.Month;
            int day = date.Day;
            DateTime today = new DateTime(year, month, day);
            if (pastday.CompareTo(today) < 0)
            {
                e.Cell.BackColor = System.Drawing.Color.Gray;
                e.Day.IsSelectable = false;

            }


        }

        protected void CalCheckout_SelectionChanged(object sender, EventArgs e)
        {
            TxtCheckout.Text = CalCheckout.SelectedDate.ToLongDateString();
        }

        protected void CalCheckout_DayRender(object sender, DayRenderEventArgs e)
        {
            DateTime pastday = e.Day.Date;
            DateTime date = DateTime.Now;
            int year = date.Year;
            int month = date.Month;
            int day = date.Day;
            DateTime today = new DateTime(year, month, day);
            if (pastday.CompareTo(today) < 0)
            {
                e.Cell.BackColor = System.Drawing.Color.Gray;
                e.Day.IsSelectable = false;

            }


        }


        protected void TxtNoroom_TextChanged(object sender, EventArgs e)
        {
            LblTotalprice.Text = Convert.ToInt32(TxtNoroom.Text) * Convert.ToInt32(LblPrice.Text)+"";
        }
    }
    
}












