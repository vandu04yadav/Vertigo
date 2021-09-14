<%@ Page Title="" Language="C#" MasterPageFile="~/HotelMaster.Master" AutoEventWireup="true" CodeBehind="GuestProfile.aspx.cs" Inherits="Hotel_Project.GuestProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
    <div class="mt-5">
        <h1 class="text-center"><strong>My Profile</strong></h1>
    </div>
        
    <div class="mt-3">
        &nbsp;<asp:Label ID="LblName" runat="server" Text="Label"></asp:Label>
    &nbsp;Your booking has been confirmed, We have sent you an email confirmation.</div>
    <%--<div class="mt-3">
        Email
        <asp:Label ID="LblEmail" runat="server" Text="Label"></asp:Label>
    </div>--%>
    <%--<div class="mt-3">
        Checkin Date
          <asp:Label ID="Lblchkin" runat="server" Text="Label"></asp:Label>
    </div>
    <div class="mt-3">
        Checkout Date
         <asp:Label ID="Lblchkout" runat="server" Text="Label"></asp:Label>
    </div>--%>
    </div>



    
       <div class=" mt-5">
           <h4 class="room-dtls">BOOKING INFORMATION :</h4>
           <div class="dtls-head2 p-0">         
            </div>
     <div class="container contact-sec">

          <div class=" mt-5">
           <h4 class="room-dtls">Hotel Details :</h4>
           <div class="d-flex">
            <div class="mt-3 ml-4">
             <strong>Hotel:</strong>
              <asp:Label ID="LblHname" runat="server"></asp:Label>
            </div>
            <div class="mt-3 ml-5">
             <strong>Price:</strong>&nbsp;
            <asp:Label ID="LblPrice" runat="server" Text="Label"></asp:Label>
           </div>
          </div>

              <div class="d-flex">
          <div class="mt-3">
              <strong>Contact:</strong>&nbsp;
        <asp:Label ID="LblContact" runat="server" Text="Label"></asp:Label>
    </div>
          <div class="mt-3 ml-5">
              <strong>Email:</strong>&nbsp;
        <asp:Label ID="LblEmail" runat="server" Text="Label"></asp:Label>
    </div>
              </div>
         <div class="mt-3">
             <strong>First Name:&nbsp;</strong>
        <asp:Label ID="LblFname" runat="server" Text="Label"></asp:Label>
    </div>

           <div class="mt-3">
               <strong>Last Name:&nbsp;</strong>
        <asp:Label ID="LblLname" runat="server" Text="Label"></asp:Label>
    </div>
          <div class="mt-3">
              <strong>Address:&nbsp;</strong>
        <asp:Label ID="LblAddress" runat="server" Text="Label"></asp:Label>
    </div>
          <div class="mt-3">
              <strong>City:&nbsp;</strong>
        <asp:Label ID="LblCity" runat="server" Text="Label"></asp:Label>
    </div>
          <div class="mt-3">
              <strong>State:&nbsp;</strong>
        <asp:Label ID="LblState" runat="server" Text="Label"></asp:Label>
    </div>
         <div class="mt-3">
             <strong>Room Type:</strong>&nbsp;
        <asp:Label ID="LblRoomtype" runat="server" Text="Label"></asp:Label>
    </div>
           <div class="mt-3">
               <strong>No of Room:</strong> &nbsp;
        <asp:Label ID="LblNoroom" runat="server" Text="Label"></asp:Label>
    </div>

          <div>  
              <br />
              <strong>Checkin Date: </strong>&nbsp;<asp:Label ID="Lblchkin" runat="server" Text="Label"></asp:Label>
         </div>
   
    <div class="mt-3">
        <strong>Checkout Date: </strong>&nbsp;<asp:Label ID="Lblchkout" runat="server" Text="Label"></asp:Label>
    </div>

         <div>
             <asp:Button ID="BtnUpdate" runat="server" Text="Update" OnClick="BtnUpdate_Click" />
         </div>
         </div>
    </div>
         
   
</asp:Content>
