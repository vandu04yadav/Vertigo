using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Drawing;

namespace Hotel_Project.Hotel
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (User.Identity.IsAuthenticated)
            {
                Response.Redirect("~/Home.aspx");
            }
        }

        protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
        {
            // Roles.AddUsersToRole(CreateUserWizard1.UserName,ddlRole.SelectedValue);
            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            MembershipCreateStatus createStatus;
            MembershipUser user = Membership.CreateUser(txtUserName.Text, txtPwd.Text, txtEmail.Text, txtQuestion.Text, txtAnswer.Text, true, out createStatus);
            switch (createStatus)
            {
                
                case MembershipCreateStatus.Success:
                    lblResult.ForeColor = Color.Green;
                    lblResult.Text = "The user account was successfully created";
                  //  Response.Redirect("~/Login.aspx");

                    Roles.AddUserToRole(txtUserName.Text.Trim(),ddlRoles.SelectedValue);
                    txtUserName.Text = string.Empty;
                    txtEmail.Text = string.Empty;
                    txtQuestion.Text = string.Empty;
                    txtAnswer.Text = string.Empty;
                    Response.Redirect("~/Login.aspx");
                    break;
               
                case MembershipCreateStatus.DuplicateUserName:
                    lblResult.ForeColor = Color.Red;
                    lblResult.Text = "The user with the same UserName already exists!";
                    break;
               
                case MembershipCreateStatus.DuplicateEmail:
                    lblResult.ForeColor = Color.Red;
                    lblResult.Text = "The user with the same email address already exists!";
                    break;
              
                case MembershipCreateStatus.InvalidEmail:
                    lblResult.ForeColor = Color.Red;
                    lblResult.Text = "The email address you provided is invalid.";
                    break;
             
                case MembershipCreateStatus.InvalidAnswer:
                    lblResult.ForeColor = Color.Red;
                    lblResult.Text = "The security answer was invalid.";
                    break;
               
                case MembershipCreateStatus.InvalidPassword:
                    lblResult.ForeColor = Color.Red;
                    lblResult.Text = "The password you provided is invalid. It must be 7 characters long and have at least 1 special character.";
                    break;
                default:
                    lblResult.ForeColor = Color.Red;
                    lblResult.Text = "There was an unknown error; the user account was NOT created.";
                    break;
            }
        }
    }
}
    
