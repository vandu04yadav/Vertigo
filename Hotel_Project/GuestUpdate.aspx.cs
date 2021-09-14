using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hotel_Project
{
    public partial class GuestUpdate : System.Web.UI.Page
    {
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
               
                TxtContact.Text = Convert.ToString(Session["GContact"]);
                TxtEmail.Text = Convert.ToString(Session["GEmail"]);
                TxtFname.Text = Convert.ToString(Session["GFName"]);
                TxtLname.Text = Convert.ToString(Session["GLName"]);
                TxtAddress.Text = Convert.ToString(Session["GAddress"]);
                TxtCity.Text = Convert.ToString(Session["GCity"]);
                TxtState.Text = Convert.ToString(Session["GState"]);
                //  TxtRoomtype.Text = Convert.ToString(Session["GRoomtype"]);
                TxtNoRoom.Text = Convert.ToString(Session["GNoRoom"]);
                // TxtChkin.Text= Convert.ToString(Session["Check_in"]);
                //TxtChkout.Text= Convert.ToString(Session["Check_Out"]);
            }

        }


        //protected void CalCheckin_SelectionChanged(object sender, EventArgs e)
        //{
        //    TxtChkin.Text = CalCheckin.SelectedDate.ToLongDateString();
        //}

        //protected void CalCheckout_SelectionChanged(object sender, EventArgs e)
        //{
        //    TxtChkout.Text = CalCheckout.SelectedDate.ToLongDateString();
        //}
        protected void BtnUpdate_Click(object sender, EventArgs e)
        {

            string HID;
            HID = Convert.ToString(Session["Bid"]);
            string hotel_constr = ConfigurationManager.ConnectionStrings["hotel_constr"].ConnectionString;
            using (SqlConnection con = new SqlConnection(hotel_constr))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand();

                cmd.CommandText = "update BookingDetails set FName=@fname,LName=@lname, Email=@email,Contact=@contact,Address=@address,City=@city,State=@state,Roomtype=@roomtype,Check_In=@checkin,Check_Out=@checkout,NOOFRoom=@noroom where BookingID like @HID ";
                cmd.Parameters.AddWithValue("@fname", TxtFname.Text);
                cmd.Parameters.AddWithValue("@HID", HID);
                cmd.Parameters.AddWithValue("@lname", TxtLname.Text);
                cmd.Parameters.AddWithValue("@email", TxtEmail.Text);
                cmd.Parameters.AddWithValue("@contact", TxtContact.Text);
                cmd.Parameters.AddWithValue("@address", TxtAddress.Text);
                cmd.Parameters.AddWithValue("@city", TxtCity.Text);
                cmd.Parameters.AddWithValue("@state", TxtState.Text);      
                cmd.Parameters.AddWithValue("@roomtype", TxtRoomtype.SelectedValue);
                cmd.Parameters.AddWithValue("@checkin", TxtChkin.Text);
                cmd.Parameters.AddWithValue("@checkout", TxtChkout.Text);
                cmd.Parameters.AddWithValue("@noroom", TxtNoRoom.Text);
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
               Response.Redirect("~/GuestProfile.aspx");

            }


        }
        protected void CalCheckin_SelectionChanged(object sender, EventArgs e)
        {
            TxtChkin.Text = CalCheckin.SelectedDate.ToLongDateString();
        }
        protected void CalCheckin_DayRender(object sender, DayRenderEventArgs e)
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
            TxtChkout.Text = CalCheckout.SelectedDate.ToLongDateString();
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
    }
    

       
    }
