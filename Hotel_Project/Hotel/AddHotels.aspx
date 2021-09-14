<%@ Page Title="" Language="C#" MasterPageFile="~/Hotel/HotelMaster.Master" AutoEventWireup="true" CodeBehind="AddHotels.aspx.cs" Inherits="Hotel_Project.Hotel.AddHotels" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3>
<h3>
        &nbsp;</h3>
<h3>
        &nbsp;</h3>
<h3>
        &nbsp;</h3>
<h3>
        &nbsp;</h3>
<h3>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </h3>
<h3 class="text-center">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </h3>
    <h3 class="text-center">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Add Hotel Details&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </h3>
     <p class="form-control" style="font-size: xx-large; font-family: Georgia, 'Times New Roman', Times, serif; text-decoration: underline; height: 83px; margin-top: 506;">
        <strong><dfn style="font-style: normal">Hotel Details</dfn></strong></p>
<p style="font-size: xx-large; font-family: Georgia, 'Times New Roman', Times, serif">
    <h3 class="font-weight-normal">&nbsp;</h3>
    <h3 class="font-weight-normal">&nbsp;</h3>
    <h5 class="text-center">
        <asp:Label ID="LblMsg" runat="server" Font-Bold="True" ForeColor="#009933"></asp:Label>
    </h5>
   
    <table class="w-100" style="height: 442px">
        <tr>
            <td style="height: 32px; width: 333px"></td>
            <td style="height: 32px; width: 408px">
                <br />
                <br />
                Hotel Name<asp:TextBox ID="Txthotelname" class="form-control" runat="server" Height="45px" Width="380px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Txthotelname" ErrorMessage="Enter Hotel Name" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Txthotelname" ErrorMessage="Enter valid hotel name" ForeColor="Red" ValidationExpression="^[a-z\sA-Z]*$"></asp:RegularExpressionValidator>
            </td>
            <td style="height: 32px; width: 82px">&nbsp;</td>
            <td style="height: 32px; width: 296px">
                <br />
                Image<br />
                <asp:FileUpload ID="HotelImgUpload"  runat="server" />
                <br />
                <asp:Label ID="LblStatus" runat="server"></asp:Label>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="HotelImgUpload" ErrorMessage="Upload Image" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 32px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 333px">&nbsp;</td>
            <td style="width: 408px">
                <br />
                State<br />
                <asp:TextBox ID="TxtState" class="form-control" runat="server" Height="45px" Width="380px" ></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtState" ErrorMessage="Enter state" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TxtState" ErrorMessage="Enter valid state " ForeColor="Red" ValidationExpression="^[a-zA-Z]*$"></asp:RegularExpressionValidator>
            </td>
            <td style="width: 82px">&nbsp;</td>
            <td style="width: 296px">
                Image Name<br />
                <asp:TextBox ID="TxtImgName" class="form-control" runat="server" Height="45px" Width="380px" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TxtImgName" ErrorMessage="Name of image" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 333px; height: 66px;"></td>
            <td style="width: 408px; height: 66px;">
                City<br />
                <asp:TextBox ID="TxtCity" class="form-control" runat="server" Height="45px" Width="380px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtCity" ErrorMessage="Enter city" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TxtCity" ErrorMessage="Enter valid state " ForeColor="Red" ValidationExpression="^[a-zA-Z]*$"></asp:RegularExpressionValidator>
            </td>
            <td style="width: 82px; height: 66px;">&nbsp;</td>
            <td style="width: 296px; height: 66px;">
                Price<br />
                <asp:TextBox ID="TxtPrice" class="form-control" runat="server" Height="45px" Width="380px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TxtPrice" ErrorMessage="Enter your price" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TxtPrice" ErrorMessage="Enter valid price" ForeColor="Red" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
            </td>
            <td style="height: 66px"></td>
        </tr>
        <tr>
            <td style="width: 333px">&nbsp;</td>
            <td style="width: 408px">
                Type<br />
                <asp:DropDownList ID="ddlHotelType" class="form-control" runat="server" Height="42px" Width="380px">
                    <asp:ListItem>Business</asp:ListItem>
                    <asp:ListItem>Family</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width: 82px">&nbsp;</td>
            <td style="width: 296px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 333px">&nbsp;</td>
            <td style="width: 408px">&nbsp;</td>
            <td style="width: 82px">&nbsp;</td>
            <td style="width: 296px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 32px; width: 333px"></td>
            <td style="height: 32px; width: 408px"></td>
            <td style="height: 32px; " colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="BtnSubmit" runat="server" OnClick="BtnSubmit_Click" Text="Submit" BackColor="#009933" BorderStyle="None" Font-Bold="True" ForeColor="White" Height="46px" Width="138px" />
            </td>
            <td style="height: 32px"></td>
        </tr>
        <tr>
            <td style="width: 333px; height: 36px;"></td>
            <td style="width: 408px; height: 36px;"></td>
            <td style="width: 82px; height: 36px;"></td>
            <td style="width: 296px; height: 36px;"></td>
            <td style="height: 36px"></td>
        </tr>
        <tr>
            <td style="width: 333px">&nbsp;</td>
            <td style="width: 408px">&nbsp;</td>
            <td style="width: 82px">&nbsp;</td>
            <td style="width: 296px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
