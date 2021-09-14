<%@ Page Title="" Language="C#" MasterPageFile="~/HotelMaster.Master" AutoEventWireup="true" CodeBehind="MoreDetailsPage.aspx.cs" Inherits="Hotel_Project.Hotel.MoreDetailsPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  
    <link href="../CSS/Style.css" rel="stylesheet" type="text/css" />

    <p>
        <br />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </p>
   <div class="container mt-5">
       <div class="" >
       <div>
           <asp:Image ID="hotel_img" runat="server" Height="350px" Width="600px" />
       </div>
           <div class="d-flex justify-content-around mt-5">
           <div>
    <div class="mt-3">
         <strong>Hotel:
         <asp:Label ID="lblName" runat="server" style="color: #4A4A4A"></asp:Label>
         </strong>
    </div>

    <div class="d-flex mt-3">
    <div class="">
         <strong>State</strong>:<strong><asp:Label ID="LblState" runat="server" style="color: #4A4A4A"></asp:Label>
         </strong>
    </div>
    <div class="ml-5">
        <strong>City:</strong> <strong>
        <asp:Label ID="LblCity" runat="server" style="color: #4A4A4A"></asp:Label>
        </strong>
    </div>
    </div>

    <div class="mt-3">
        <span><i class="fas fa-rupee-sign"></i></span> <asp:Label ID="Lblprice" runat="server"></asp:Label><span> Starting Rate /Night</span>
    </div>
       
       
        <div>
              <h5 class="mt-3"><strong>About Us:</strong></h5>
            
              <strong>
            
              <asp:Label ID="LblDescription" runat="server"  Width="500px" style="color: #4A4A4A"></asp:Label>
              </strong>
        </div>
         
      
            <h5 class="mt-5"><strong>Available Types of Hotel Rooms:</strong></h5>
      <div class="d-flex mt-4">
         
          <div>
              &nbsp;<strong><asp:Label ID="LblSingle" runat="server" style="color: #4A4A4A"></asp:Label>
              </strong>
          </div>
          <div class="ml-5">
               <strong>
               <asp:Label ID="lblDouble" runat="server" style="color: #4A4A4A"></asp:Label>
               </strong>
          </div>
          <div class="ml-5">              
              <strong>              
              <asp:Label ID="LblStd" runat="server" style="color: #4A4A4A"></asp:Label>
              </strong>
          </div>
      </div>
                 </div>

           <div>

           <h5 class="mt-2"><strong>Room Facilities</strong></h5>
    <div class="d-flex mt-4">
        <div style="color: #4A4A4A">
             <strong>
             <asp:Label ID="LblAir" runat="server" style="color: #4A4A4A"></asp:Label>
             </strong>
        </div>
        <div class="ml-5">
            <strong>
            <asp:Label ID="LblInternet" runat="server" style="color: #4A4A4A"></asp:Label>
            </strong>
        </div>
        <div class="ml-5">
            <strong>
            <asp:Label ID="LblTv" runat="server" style="color: #4A4A4A"></asp:Label>
            </strong>
        </div>
    </div>
      
            <h5 class="mt-5"><strong>Other Facilities</strong></h5>
    <div class="d-flex">
        <div>
              <strong>
              <asp:Label ID="LblPark" runat="server" style="color: #4A4A4A"></asp:Label>
              </strong>
        </div>
         <div class="ml-5">
              <strong>
              <asp:Label ID="LblRest" runat="server" style="color: #4A4A4A"></asp:Label>
              </strong>
        </div>
         <div class="ml-5">
              <strong>
              <asp:Label ID="LblHealth" runat="server" style="color: #4A4A4A"></asp:Label>
              </strong>
        </div>
        <div class="ml-5">
             <strong>
             <asp:Label ID="LblPet" runat="server" style="color: #4A4A4A"></asp:Label>
             </strong>
        </div>
    </div>
  
     <h5 class="mt-4"><strong>Contact</strong></h5>    <div>
        <div>
             <span><i class="fas fa-phone-alt"></i></span> <strong>Tel:</strong> <strong>  <asp:Label ID="LblTel" runat="server" style="color: #4A4A4A"></asp:Label>
             </strong>
        </div>
        <div class="mt-3">
             <span><i class="far fa-envelope"></i></span>  <strong>Email:</strong> <strong>  <asp:Label ID="LblEmail" runat="server" style="color: #4A4A4A"></asp:Label>              
             </strong>              
        </div>
        <div class="mt-5 mb-4">
             <asp:Button ID="BookBtn" runat="server" Height="50px" Text="Book Now" Width="135px" OnClick="BookBtn_Click" BackColor="#CB934D" BorderStyle="None" Font-Bold="True" ForeColor="White" />
        </div>
    </div>
   
   </div>
               </div>
       </div>


          <h5 class="mt-5"><strong>Other Images</strong></h5>
       <div class="d-flex flex-wrap justify-content-around mt-5 mb-5">
           <div class="">
             <asp:Image ID="hotel_img1" runat="server"  Height="300px" Width="520px"/>
           </div>
         
            <div class="">
             <asp:Image ID="hotel_img2" runat="server" Height="300px" Width="520px" />
           </div>
          
            <div class="mt-4">
             <asp:Image ID="hotel_img3" runat="server" Height="300px" Width="520px"/>
           </div>

            <div class="mt-4">
             <asp:Image ID="hotel_img4" runat="server" Height="300px" Width="520px" />
           </div>
       </div>


    </div>
   
   

</asp:Content>
