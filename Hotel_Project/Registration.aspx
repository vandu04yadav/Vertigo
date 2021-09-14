<%@ Page Title="" Language="C#" MasterPageFile="~/HotelMaster.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Hotel_Project.Hotel.Registration" %>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
  
   
    
    <p>
        <table class="w-100">
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" Height="574px" style="margin-left: 197px" OnCreatedUser="CreateUserWizard1_CreatedUser">
                        <WizardSteps>
                            <asp:CreateUserWizardStep runat="server" >
                                <ContentTemplate>
                                    <table style="font-size: 100%; height: 574px;">
                                        <tr>
                                            <td align="center" colspan="2">Sign Up for Your New Account</td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <asp:Label runat="server" AssociatedControlID="UserName" ID="UserNameLabel">User Name:</asp:Label></td>
                                            <td>
                                                <asp:TextBox runat="server" ID="UserName"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ValidationGroup="CreateUserWizard1" ToolTip="User Name is required." ID="UserNameRequired">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <asp:Label runat="server" AssociatedControlID="Password" ID="PasswordLabel">Password:</asp:Label></td>
                                            <td>
                                                <asp:TextBox runat="server" TextMode="Password" ID="Password"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ValidationGroup="CreateUserWizard1" ToolTip="Password is required." ID="PasswordRequired">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <asp:Label runat="server" AssociatedControlID="ConfirmPassword" ID="ConfirmPasswordLabel">Confirm Password:</asp:Label></td>
                                            <td>
                                                <asp:TextBox runat="server" TextMode="Password" ID="ConfirmPassword"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Confirm Password is required." ValidationGroup="CreateUserWizard1" ToolTip="Confirm Password is required." ID="ConfirmPasswordRequired">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <asp:Label runat="server" AssociatedControlID="Email" ID="EmailLabel">E-mail:</asp:Label></td>
                                            <td>
                                                <asp:TextBox runat="server" ID="Email"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email" ErrorMessage="E-mail is required." ValidationGroup="CreateUserWizard1" ToolTip="E-mail is required." ID="EmailRequired">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <asp:Label runat="server" AssociatedControlID="Question" ID="QuestionLabel">Security Question:</asp:Label></td>
                                            <td>
                                                <asp:TextBox runat="server" ID="Question"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Question" ErrorMessage="Security question is required." ValidationGroup="CreateUserWizard1" ToolTip="Security question is required." ID="QuestionRequired">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="right">
                                                <asp:Label runat="server" AssociatedControlID="Answer" ID="AnswerLabel">Security Answer:</asp:Label></td>
                                            <td>
                                                <asp:TextBox runat="server" ID="Answer"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="Answer" ErrorMessage="Security answer is required." ValidationGroup="CreateUserWizard1" ToolTip="Security answer is required." ID="AnswerRequired">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="font" align="right">Role:</td>
                                           <td>
                                                <asp:DropDownList ID="ddlRoles" runat="server" value="" class="form-control" Height="40px" Width="126px"  DataTextField="RoleName" DataValueField="RoleName">
                                                    <asp:ListItem>Hotel </asp:ListItem>
                                                    <asp:ListItem>Guest </asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="2">
                                                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" ErrorMessage="The Password and Confirmation Password must match." Display="Dynamic" ValidationGroup="CreateUserWizard1" ID="PasswordCompare"></asp:CompareValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="2" style="color: Red;">
                                                <asp:Literal runat="server" ID="ErrorMessage" EnableViewState="False"></asp:Literal>
                                            </td>
                                        </tr>
                                    </table>
                                </ContentTemplate>
                            </asp:CreateUserWizardStep>
                            <asp:CompleteWizardStep runat="server" />
                        </WizardSteps>
                    </asp:CreateUserWizard>
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
    </p>
   
  
   
    
</asp:Content>--%>









<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <p style="font-size: xx-large; font-family: Poppins, 'Times New Roman', Times, serif; text-align:center; text-decoration: underline; height: 83px; margin-top: 506;">
        </p>
    <p style="font-size: xx-large; font-family: Poppins, 'Times New Roman', Times, serif; text-align:center; text-decoration: underline; height: 83px; margin-top: 506;">
        <strong><dfn style="font-style: normal">CREATE ACCOUNT</dfn></strong></p>
<p style="font-size: xx-large; font-family: Poppins, 'Times New Roman', Times, serif">
   
   <%-- <h3 class="font-weight-normal">Create New User</h3> --%>
    <h3 style="font-size: x-large; font-family: Poppins, 'Times New Roman', Times, serif">
    <asp:Label id="Msg" ForeColor="maroon" runat="server" />  
    <br />  
    <table class="table table-active table-light table-borderless">  
        <tr>  
            <td style="width: 399px"></td>  
            <td colspan="2">  
                <b>Sign Up for New User Account</b>  
            </td>  
        </tr>  
         <tr>  
            <td colspan="2">  
                <asp:Label ID="lblResult" runat="server" Font-Bold="true"/>  
            </td>  
        </tr>
        <tr>  
            <td class="font" style="width: 399px">User Name:</td>  
            <td>  
                <asp:TextBox ID="txtUserName" Class="form-control" runat="server"/>  
            </td>  
            <td>  
                <asp:RequiredFieldValidator ID="rqfUserName" runat="server" ControlToValidate="txtUserName" Display="Dynamic" ErrorMessage="Required" ForeColor="Red"/>  
            </td>  
        </tr>  
        <tr>  
            <td class="font" style="width: 399px">Password:</td>  
            <td>  
                <asp:TextBox ID="txtPwd" Class="form-control" runat="server" TextMode="Password"/>  
            </td>  
            <td>  
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPwd" Display="Dynamic" ErrorMessage="Required" ForeColor="Red"/>  
            </td>  
        </tr>  
        <tr>  
            <td class="font" style="width: 399px">Confirm Password:</td>  
            <td>  
                <asp:TextBox ID="txtCnfPwd" Class="form-control" runat="server" TextMode="Password"/>  
            </td>  
            <td>  
                <asp:RequiredFieldValidator id="PasswordConfirmRequiredValidator" runat="server" ControlToValidate="txtCnfPwd" ForeColor="red" Display="Dynamic" ErrorMessage="Required" />  
                <asp:CompareValidator id="PasswordConfirmCompareValidator" runat="server" ControlToValidate="txtCnfPwd" ForeColor="red" Display="Dynamic" ControlToCompare="txtPwd" ErrorMessage="Confirm password must match password." />  
            </td>  
        </tr>  
        <tr>  
            <td class="font" style="width: 399px">Email:</td>  
            <td>  
                <asp:TextBox ID="txtEmail" Class="form-control" runat="server"/>  
            </td>  
            <td>  
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" Display="Static" ErrorMessage="Required" ForeColor="Red"/>  
            </td>  
        </tr>  
        <tr>  
            <td class="font" style="width: 399px">Security Question:</td>  
            <td>  
                <asp:TextBox ID="txtQuestion" Class="form-control" runat="server"/>  
            </td>  
            <td>  
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtQuestion" Display="Static" ErrorMessage="Required" ForeColor="Red"/>  
            </td>  
        </tr>  
        <tr>  
            <td class="font" style="width: 399px">Security Answer:</td>  
            <td>  
                <asp:TextBox ID="txtAnswer" Class="form-control" runat="server"/>  
            </td>  
            <td>  
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtAnswer" Display="Static" ErrorMessage="Required" ForeColor="Red"/>  
            </td>  
        </tr>  
        <tr>
            <td class="font" style="width: 399px">What type of user are you:</td>
            <td><asp:DropDownList ID="ddlRoles"  runat="server" class="form-control" Height="40px" Width="156px">
                <asp:ListItem Value="Hotel"></asp:ListItem>
                <asp:ListItem Value="Guest"></asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>  
            <td style="width: 399px"></td>  
            <td>  
                <asp:Button ID="btnSubmit" class="btn btn-primary btn-lg" runat="server" Text="Create User" onclick="btnSubmit_Click" />  
            </td>  
        </tr>  
       <%-- <tr>  
            <td colspan="3">  
                <asp:Label ID="lblResult" runat="server" Font-Bold="true"/>  
            </td>  
        </tr>--%>  
    </table>  
            </h3>
</asp:Content>
