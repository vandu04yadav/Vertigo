using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Hotel_Project.Hotel
{
    public partial class Home : System.Web.UI.Page
    {
        string hotel_constr = ConfigurationManager.ConnectionStrings["hotel_constr"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Roles.CreateRole("Guest");
        }

            protected void Button1_Click(object sender, EventArgs e)
        {
            using (SqlConnection con = new SqlConnection(hotel_constr))
            {
                con.Open();
                {
                    string val = TxtSearch.Text;
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = "select * from HotelDetails where City like @cityname";

                    cmd.Parameters.AddWithValue("@cityname", "%" + val + "%");
                    cmd.Connection = con;

                    SqlDataAdapter dr = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    dr.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataSourceID = String.Empty;
                }
                // TxtSearch.Text = String.Empty;
            }


        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandName == "dtls")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = GridView1.Rows[index];
                string nm = row.Cells[0].Text;

                //Response.Write(row.Cells[0]);
                //Response.Write(row.Cells[1]);
                //Response.Write(row.Cells[2]);

                //using (SqlConnection con = new SqlConnection(hotel_constr))
                //{
                //    con.Open();
                //    SqlCommand cmd = new SqlCommand();
                //    cmd.CommandText = "Select * from HotelDetails where name like @name";
                //    cmd.Parameters.AddWithValue("@name", nm);
                //    cmd.Connection = con;

                //    SqlDataReader data = cmd.ExecuteReader();
                //    GridView2.DataSource = data;
                //    GridView2.DataBind();

                //}
               // Response.Redirect("~/Hotel/MoreDetailsPage.aspx?hotelnm=" + (row.Cells[0].Text));



            }
        }
            protected void LinkButton1_Click(object sender, EventArgs e)
            {
                Response.Redirect("~/MoreDetailsPage.aspx?"+"hotelnm=" + ((LinkButton)sender).Text);
            }

        protected void TxtSearch_TextChanged(object sender, EventArgs e)
        {
            if (TxtSearch.Text.Equals(""))
            {
                //  Page_Load(this,null);


                Response.Redirect("~/Home.aspx");
            }
            else
            {
                using (SqlConnection con = new SqlConnection(hotel_constr))
                {
                    con.Open();
                    {
                        string val = TxtSearch.Text;
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = "select * from HotelDetails where City like @cityname";

                        cmd.Parameters.AddWithValue("@cityname", "%" + val + "%");
                        cmd.Connection = con;

                        SqlDataAdapter dr = new SqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        dr.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataSourceID = String.Empty;
                    }
                    // TxtSearch.Text = String.Empty;
                }
            }
        }
    }


    }

    

    



