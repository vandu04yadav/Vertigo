<%@ Page Title="" Language="C#" MasterPageFile="~/HotelMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Hotel_Project.Hotel.Login" %>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <link href="../CSS/Style.css" rel="stylesheet" type="text/css" />

    <div class="container">
    <div class="login-sec d-flex justify-content-lg-center">
    <br />
    <table class="w-100" style="width: 97%">
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Login ID="Login1" runat="server">
                </asp:Login>
            </td>
            <asp:Login ID="Login1" CheckBoxStyle-CssClass="table-active table-borderless font-weight-bold"  runat="server" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" Height="300px" Width="560px"  ForeColor="#333333">
<CheckBoxStyle CssClass="table-active table-borderless font-weight-bold"></CheckBoxStyle>

                <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
                <TextBoxStyle Font-Size="0.8em" />

        <TitleTextStyle BackColor="#507CD1" Font-Bold="True" ForeColor="#FFFFFF" Font-Size="0.9em" />
    </asp:Login>
            <td>&nbsp;</td>
        </tr>
    </table>
</div>
    </div>
    
    </asp:Content>--%>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../CSS/Style.css" rel="stylesheet" />
    <br />
    <p  style="text-decoration: underline; font-size: xx-large; text-align:'center'; font-family: 'Poppins', sans-serif, 'Times New Roman', Times, serif" class="text-center">
        </p>
    <p  style="text-decoration: underline; font-size: xx-large; text-align:'center'; font-family: 'Poppins', sans-serif, 'Times New Roman', Times, serif" class="text-center">
        <strong>LOGIN HERE</strong></p>
<div class="d-flex justify-content-lg-center login-sec1">
    
&nbsp;<asp:Login ID="Login1" CheckBoxStyle-CssClass="table-active table-borderless font-weight-bold"  runat="server" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" Height="350px" Width="800px" BorderPadding="4" ForeColor="#333333" DestinationPageUrl="~/Home.aspx">
<CheckBoxStyle CssClass="table-active table-borderless font-weight-bold"></CheckBoxStyle>

        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
        <LoginButtonStyle Width="100px" Height="40px" BackColor="#507CD1" BorderColor="#507CD1" BorderStyle="Solid"  BorderWidth="1px" Font-Names="Verdana" Font-Size="16px" ForeColor="white" />
        <TextBoxStyle Font-Size="18px" />

        <TitleTextStyle BackColor="#507CD1" Font-Bold="True" ForeColor="#FFFFFF" Font-Size="18px" />
    </asp:Login>
    <br />
    <br />
    <br />
</div>

</asp:Content>
