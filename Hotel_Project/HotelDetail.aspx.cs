using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

namespace Hotel_Project.Hotel
{
    public partial class HotelDetail : System.Web.UI.Page
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




            //else if (User.Identity.IsAuthenticated && User.IsInRole("Hotel"))
            //{
            //    Response.Redirect("~/HotelDetails.aspx");
            //}


        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            //string single= Chksingle.Checked ? "Y" : "N";
            //string double_room = Chkdouble.Checked ? "Y" : "N";
            //string standard = Chkstd.Checked ? "Y": "N";

            //string ac = Chkair.Checked ? "Y" : "N";
            //string internet = Chknet.Checked ? "Y" : "N";
            //string tv = Chktv.Checked ? "Y" : "N";

            //string park =Chkpark.Checked ? "Y" : "N";
            //string rest =Chkrest.Checked ? "Y" : "N";
            //string club = Chkclub.Checked ? "Y" : "N";
            //string pet = Chkpet.Checked ? "Y" : "N";

            string single;
            string double_room;
            string standard;

            string ac;
            string internet;
            string tv;

            string park;
            string rest;
            string club;
            string pet;


            if (Chksingle.Checked)
            {
                 single = "Single";
            }
            else
            { single = null; }

            if (Chkdouble.Checked)
            {
                double_room = "Doblue";
            }
            else
            { double_room = ""; }

            if (Chkstd.Checked)
            {
                standard = "Standard";
            }
            else
            { standard = ""; }

          
            if (Chkair.Checked)
            {
                ac = "Air Condition";
            }
            else
            { ac = ""; }

            if (Chknet.Checked)
            {
                internet = "Internet";
            }
            else
            { internet = ""; }

            if (Chktv.Checked)
            {
                tv = "Television";
            }
            else
            { tv = ""; }

          
            if (Chkpark.Checked)
            {
                park = "Parking";
            }
            else
            { park = ""; }

            if (Chkrest.Checked)
            {
                rest = "Restaurant";
            }
            else
            { rest = ""; }
            if (Chkclub.Checked)
            {
                club = "Health club";
            }
            else
            { club = ""; }

            if (Chkpet.Checked)
            {
                pet = "Pet";
            }
            else
            { pet = ""; }


            if (HotelImgUpload.HasFile)
            {
                string str = HotelImgUpload.FileName;
                HotelImgUpload.PostedFile.SaveAs(Server.MapPath("~/Upload/" + HotelImgUpload.FileName));
                string Imagepath = "~/Upload/" + str.ToString();
                string imgpath = "/Upload/" + str.ToString();

                string extension = System.IO.Path.GetExtension(HotelImgUpload.FileName);
                if (extension == ".png" || extension == ".jpg" || extension == ".jpeg" || extension == ".PNG" || extension == ".JPG" || extension == ".JPEG")
                {
                    HotelImgUpload.PostedFile.SaveAs(Server.MapPath("~/Upload/" + HotelImgUpload.FileName));

                    // string name = TxtImgName.Text;
                    LblStatus.Text = "File Uploaded successfully";
                    LblStatus.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    LblStatus.Text = "Select Image File Only..";
                    LblStatus.ForeColor = System.Drawing.Color.Red;
                }


                if (MoreImg1.HasFile)
                {

                    string str1 = MoreImg1.FileName;
                    MoreImg1.PostedFile.SaveAs(Server.MapPath("~/Upload/" + MoreImg1.FileName));
                    //string Imagepath1 = "~/Upload/" + str1.ToString();
                    string imgpath1 = "/Upload/" + str1.ToString();


                    string extension1 = System.IO.Path.GetExtension(MoreImg1.FileName);
                    if (extension1 == ".png" || extension1 == ".jpg" || extension1 == ".jpeg" || extension1 == ".PNG" || extension1 == ".JPG" || extension1 == ".JPEG")
                    {
                        MoreImg1.PostedFile.SaveAs(Server.MapPath("~/Upload/" + MoreImg1.FileName));
                    }
                    else
                    {
                        LblStatus.Text = "Select Image File Only..";
                        LblStatus.ForeColor = System.Drawing.Color.Red;
                    }



                    if (MoreImg2.HasFile)
                    {

                        string str2 = MoreImg1.FileName;
                        MoreImg2.PostedFile.SaveAs(Server.MapPath("~/Upload/" + MoreImg1.FileName));
                        string Imagepath2 = "~/Upload/" + str1.ToString();
                        string imgpath2 = "/Upload/" + str1.ToString();

                        string extension2 = System.IO.Path.GetExtension(MoreImg2.FileName);
                        if (extension2 == ".png" || extension2 == ".jpg" || extension2 == ".jpeg" || extension2 == ".PNG" || extension2 == ".JPG" || extension2 == ".JPEG")
                        {
                            MoreImg2.PostedFile.SaveAs(Server.MapPath("~/Upload/" + MoreImg2.FileName));
                        }

                        else
                        {
                            LblStatus.Text = "Select Image File Only..";
                            LblStatus.ForeColor = System.Drawing.Color.Red;
                        }


                        if (MoreImg3.HasFile)
                        {

                            string str3 = MoreImg3.FileName;
                            MoreImg3.PostedFile.SaveAs(Server.MapPath("~/Upload/" + MoreImg3.FileName));
                            string Imagepath3 = "~/Upload/" + str3.ToString();
                            string imgpath3 = "/Upload/" + str3.ToString();

                            string extension3 = System.IO.Path.GetExtension(MoreImg3.FileName);
                            if (extension3 == ".png" || extension3 == ".jpg" || extension3 == ".jpeg" || extension3 == ".PNG" || extension3 == ".JPG" || extension3 == ".JPEG")
                            {
                                MoreImg3.PostedFile.SaveAs(Server.MapPath("~/Upload/" + MoreImg3.FileName));
                            }
                            else
                            {
                                LblStatus.Text = "Select Image File Only..";
                                LblStatus.ForeColor = System.Drawing.Color.Red;
                            }


                            if (MoreImg4.HasFile)
                            {

                                string str4 = MoreImg4.FileName;
                                MoreImg4.PostedFile.SaveAs(Server.MapPath("~/Upload/" + MoreImg4.FileName));
                                string Imagepath4 = "~/Upload/" + str4.ToString();
                                string imgpath4 = "/Upload/" + str4.ToString();

                                string extension4 = System.IO.Path.GetExtension(MoreImg4.FileName);
                                if (extension4 == ".png" || extension4 == ".jpg" || extension4 == ".jpeg" || extension4 == ".PNG" || extension4 == ".JPG" || extension4 == ".JPEG")
                                {
                                    MoreImg4.PostedFile.SaveAs(Server.MapPath("~/Upload/" + MoreImg4.FileName));
                                    LblStatus.ForeColor = System.Drawing.Color.Green;
                                }
                                else
                                {
                                    LblStatus.Text = "Select Image File Only..";
                                    LblStatus.ForeColor = System.Drawing.Color.Red;
                                }


                                using (SqlConnection con = new SqlConnection(hotel_constr))
                                {
                                    MembershipUser currentUserName = Membership.GetUser(User.Identity.Name);
                                    Guid CurrentUserid = (Guid)currentUserName.ProviderUserKey;
                                    con.Open();
                                    SqlCommand cmd = new SqlCommand();
                                    cmd.CommandText = ("insert into HotelDetails(UserId,Name,State,City,Imagepath,price,Description,Single,Double_rm,Standard,Air_condition,Internet,Television,parking,Restaurant,Health,pet,Staff_name,Designation,Tel,Email,Imagepath1,Imagepath2,Imagepath3,Imagepath4)values(@UserID,@Name,@State,@City,@Imagepath,@Price,@Description,@Single,@Double_rm,@Standard,@Air_Condition,@Internet,@Television,@Parking,@Restaurant,@Health,@Pet,@Staff_name,@Designation,@Tel,@Email,@Imagepath1,@Imagepath2,@Imagepath3,@Imagepath4)");



                                    cmd.Parameters.AddWithValue("@UserID", CurrentUserid);
                                    cmd.Parameters.AddWithValue("@Name", TxtHname.Text);
                                    cmd.Parameters.AddWithValue("@State", TxtState.Text);
                                    cmd.Parameters.AddWithValue("@City", TxtCity.Text);
                                    cmd.Parameters.AddWithValue("@Imagepath", imgpath);
                                    cmd.Parameters.AddWithValue("@Price", TxtPrice.Text);
                                    cmd.Parameters.AddWithValue("@Description", TxtDesc.Text);

                                    cmd.Parameters.AddWithValue("@Single", single);
                                    cmd.Parameters.AddWithValue("@Double_rm", double_room);
                                    cmd.Parameters.AddWithValue("@Standard", standard);

                                    cmd.Parameters.AddWithValue("@Air_Condition", ac);
                                    cmd.Parameters.AddWithValue("@Internet", internet);
                                    cmd.Parameters.AddWithValue("@Television", tv);

                                    cmd.Parameters.AddWithValue("@Parking", park);
                                    cmd.Parameters.AddWithValue("@Restaurant", rest);
                                    cmd.Parameters.AddWithValue("@Health", club);
                                    cmd.Parameters.AddWithValue("@pet", pet);

                                    cmd.Parameters.AddWithValue("@Staff_name", TxtStaffnm.Text);
                                    cmd.Parameters.AddWithValue("@Designation", TxtDesignation.Text);
                                    cmd.Parameters.AddWithValue("@Tel", TxtTelno.Text);
                                    cmd.Parameters.AddWithValue("@Email", TxtEmail.Text);

                                    cmd.Parameters.AddWithValue("@Imagepath1", imgpath1);
                                    cmd.Parameters.AddWithValue("@Imagepath2", imgpath2);
                                    cmd.Parameters.AddWithValue("@Imagepath3", imgpath3);
                                    cmd.Parameters.AddWithValue("@Imagepath4", imgpath4);

                                    cmd.Connection = con;
                                    cmd.ExecuteNonQuery();
                                }
                            }
                            else
                            {
                                LblStatus.Text = "Select a file";
                            }
                        }
                        else
                        {
                            LblStatus.Text = "Select a file";
                        }
                    }
                    else
                    {
                        LblStatus.Text = "Select a file";
                    }
                }
                else
                {
                    LblStatus.Text = "Select a file";
                }
            }

                //mk

        }
    }



}
            
 
    