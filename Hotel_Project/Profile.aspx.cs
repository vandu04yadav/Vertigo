using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hotel_Project
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!User.Identity.IsAuthenticated)
            {
                Response.Redirect("~/Registration.aspx");
            }
            else if (User.Identity.IsAuthenticated && !User.IsInRole("Hotel"))
            {
                //Response.Redirect("~/GuestProfile.aspx");
                Server.Transfer("~/GuestProfile.aspx");
            }
            else if(User.Identity.IsAuthenticated && !User.IsInRole("Guest"))
            {
                //Response.Redirect("~/HotelProfile.aspx");
                Server.Transfer("~/HotelProfile.aspx");
            }
        }
    }
}