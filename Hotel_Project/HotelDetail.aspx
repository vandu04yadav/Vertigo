<%@ Page Title="" Language="C#" MasterPageFile="~/HotelMaster.Master" AutoEventWireup="true" CodeBehind="HotelDetail.aspx.cs" Inherits="Hotel_Project.Hotel.HotelDetail" %>
<asp:Content ID="Content1"  ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
    <link href="../CSS/Style.css" rel="stylesheet" type="text/css" />

    <div class="container-fluid containt-sec">
        <div class="add-dtls1"> 
            <div class="d-flex justify-content-center pb-5">
                <h1 class="mt-5">Register your hotel with Vertigo</h1>
            </div>
                <div class="dtls-head pt-3">
                    <h3>About Your Hotel :</h3>
                </div>
            <div class="container">
                <div class="d-flex flex-wrap justify-content-between dtls-sec1">
                <div>
                    <div><label><span>Hotel</span></label></div>
                    <asp:TextBox class="form-control TxtInputs" id="TxtHname" placeholder="Enter Hotel name" runat="server" ></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TxtHname" ErrorMessage="Enter Hotel" style="color: #FF0000"></asp:RequiredFieldValidator>  
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtHname" ErrorMessage="Invalid Hotel Name" ValidationExpression="^[a-zA-Z\s]*$" style="color: #FF0000"></asp:RegularExpressionValidator>
                </div>
                <div>
                    <div><label><span>State</span></label></div>
                    <asp:TextBox class="form-control TxtInputs" id="TxtState" placeholder="Enter State" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TxtState" ErrorMessage="Enter State" style="color: #FF0000"></asp:RequiredFieldValidator>  
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TxtState" ErrorMessage="Invalid State" style="color: #FF0000" ValidationExpression="^[a-zA-Z\s]*$"></asp:RegularExpressionValidator>
                </div>
                <div class="mt-5">
                    <div><label><span>City</span></label></div>
                     <asp:TextBox class="form-control TxtInputs" id="TxtCity"  placeholder="Enter City" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TxtCity" ErrorMessage="Enter City" style="color: #FF0000"></asp:RequiredFieldValidator>  
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TxtCity" ErrorMessage="Invalid City" ValidationExpression="^[a-zA-Z\s]*$" style="color: #FF0000"></asp:RegularExpressionValidator>
                </div>
                <div class="mt-5">
                    <div><label><span>Price</span></label></div>
                    <div>
                         <asp:TextBox class="form-control TxtInputs" id="TxtPrice" placeholder="Per Day" runat="server" ></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TxtPrice" ErrorMessage="Enter price" style="color: #FF0000"></asp:RequiredFieldValidator>  
                        <br />
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TxtPrice" ErrorMessage="Invalid Price" ValidationExpression="^[0-9]*$" style="color: #FF0000"></asp:RegularExpressionValidator>
                    </div>
                </div>
                <div class="mt-5">
                    <div><label><span>About Hotel</span></label></div>
                    <div>
                        <asp:TextBox class="form-control " id="TxtDesc"  placeholder="About hotel" runat="server" Height="120px" TextMode="MultiLine" ToolTip="Write something which is special about your hotel" Width="450px"  ></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TxtDesc" ErrorMessage="Enter about hotel" style="color: #FF0000"></asp:RequiredFieldValidator>  
                        <br />
                    </div>
                </div>
                 <div class="mt-5">
                     <div><label><span>Upload Image</span></label></div>
                     <div>
                         <asp:FileUpload ID="HotelImgUpload" runat="server" />
                     &nbsp;&nbsp;&nbsp;
                         <asp:Label ID="LblStatus" runat="server"></asp:Label>
                     </div>
                 </div>                 
            </div>
            </div>
            <div class=" mt-5">
           <h4 class="room-dtls">ROOM DETAILS :</h4>
           <div class="dtls-head1 p-0">         
            </div>
           <div class="container">
               <div class="d-flex justify-content-lg-around">
           <div class="chk-room">
               <div><h4 class="mb-4"> Avaliable Room Type</h4></div>
               <%-- <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                    <asp:ListItem>Standard</asp:ListItem>
                    <asp:ListItem>Single</asp:ListItem>
                    <asp:ListItem>Double</asp:ListItem>
                </asp:CheckBoxList>--%>
               
                <div><asp:CheckBox ID="Chksingle"  runat="server" Text="Single" /></div>
                <div><asp:CheckBox ID="Chkdouble" runat="server" Text="Double" /></div>
                <div><asp:CheckBox ID="Chkstd" runat="server" Text="Standard" /></div>
              
           </div>
           <div class="mt-5">
                <div><h4 class="mb-4">Room Facility</h4></div>
              <%-- <asp:CheckBoxList ID="CheckBoxList2" runat="server">
                   <asp:ListItem>Air Condition</asp:ListItem>
                   <asp:ListItem>Internet</asp:ListItem>
                   <asp:ListItem>Television</asp:ListItem>
               </asp:CheckBoxList>--%>
               
                <div><asp:CheckBox ID="Chkair"  runat="server" Text="Air Condition" /></div>
                <div><asp:CheckBox ID="Chknet" runat="server" Text="Internet" /></div>
                <div><asp:CheckBox ID="Chktv" runat="server" Text="Television" /></div>
               
           </div>
          
            <div class="mt-5">
                <div><h4 class="mb-4">Extra Service</h4></div>
                <%--<asp:CheckBoxList ID="CheckBoxList3" runat="server">
                  <asp:ListItem>Parking</asp:ListItem>
                   <asp:ListItem>Restaurant</asp:ListItem>
                   <asp:ListItem>Health Club</asp:ListItem>
                   <asp:ListItem>Pet Friendly</asp:ListItem>
                   </asp:CheckBoxList>--%>
                 <div><asp:CheckBox ID="Chkpark"  runat="server" Text="Parking" /></div>
                <div><asp:CheckBox ID="Chkrest" runat="server" Text="Restaurant" /></div>
                <div><asp:CheckBox ID="Chkclub" runat="server" Text="Health Club" /></div>
                <div><asp:CheckBox ID="Chkpet" runat="server" Text="Pet Friendly" /></div>
            </div>
           </div>
          
           </div>
          </div>
           </div>

          <div class=" mt-5">
           <h4 class="room-dtls">CONTACT INFORMATION :</h4>
           <div class="dtls-head2 p-0">         
            </div>
              <div class="container contact-sec">
              <div class="d-flex flex-wrap justify-content-lg-between">
                 <div class="mt-5">
                    <div><label><span>Name</span></label></div>
                     <asp:TextBox class="form-control TxtInputs" id="TxtStaffnm"  placeholder="Enter Name" runat="server" ></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtStaffnm" ErrorMessage="Enter Name" style="color: #FF0000"></asp:RequiredFieldValidator>
                     <br />
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TxtStaffnm" ErrorMessage="Invalid Name" ValidationExpression="^[a-zA-Z\s]*$" style="color: #FF0000"></asp:RegularExpressionValidator>
                </div>
                  <div class="mt-5">
                    <div><label><span>Designation</span></label></div>
                     <asp:TextBox class="form-control TxtInputs" id="TxtDesignation"  placeholder="Enter Designation" runat="server" ></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtDesignation" ErrorMessage="Enter Designation" style="color: #FF0000"></asp:RequiredFieldValidator>                      
                      <br />
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="TxtDesignation" ErrorMessage="Invalid Designation" ValidationExpression="^[a-zA-Z\s]*$" style="color: #FF0000"></asp:RegularExpressionValidator>
                </div>
                  <div class="mt-5">
                    <div><label><span>Tel No.</span></label></div>
                     <asp:TextBox class="form-control TxtInputs" id="TxtTelno"  placeholder="Enter Tel No" runat="server" ></asp:TextBox>
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtTelno" ErrorMessage="Enter contact" style="color: #FF0000"></asp:RequiredFieldValidator>  
                      <br />
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="TxtTelno" ErrorMessage="Enter valid contact" ValidationExpression="^[0-9]{10}$" style="color: #FF0000"></asp:RegularExpressionValidator>
                </div>
                  <div class="mt-5">
                    <div><label><span>Email</span></label></div>
                     <asp:TextBox class="form-control TxtInputs" id="TxtEmail"  placeholder="Enter Email" runat="server" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtEmail" ErrorMessage="Enter email" style="color: #FF0000"></asp:RequiredFieldValidator>  
                      <br />
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="TxtEmail" ErrorMessage="Enter valid email id" ValidationExpression="([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" style="color: #FF0000"></asp:RegularExpressionValidator>
                </div>
              </div>
                  <%--<div class="mt-5 d-flex justify-content-end mb-5">
                      <asp:Button ID="BtnSubmit"  runat="server" Text="Submit" BackColor="#3333FF" BorderStyle="None" Font-Bold="True" ForeColor="White" Height="45px" Width="163px" OnClick="BtnSubmit_Click" />
                      <br />
                      <br />
                  </div>--%>
              </div>
          </div>
                     
            

          <div class=" mt-5">
           <h4 class="room-dtls">UPLOAD MORE IMAGES :</h4>
           <div class="dtls-head2 p-0">         
            </div>
              <div class="container contact-sec">
              <div class="d-flex flex-wrap justify-content-lg-between">
                 <div class="mt-5">
                     <asp:FileUpload ID="MoreImg1" runat="server" />
                </div>
                  <div class="mt-5">
                    <asp:FileUpload ID="MoreImg2" runat="server" />
                </div>
                  <div class="mt-5">
                      <asp:FileUpload ID="MoreImg3" runat="server" />
                </div>
                  <div class="mt-5">                  
                      <asp:FileUpload ID="MoreImg4" runat="server" />
                </div>
              </div>
                  <div class="mt-5 d-flex justify-content-end mb-5">
                      <asp:Button ID="BtnSubmit"  runat="server" Text="Submit" BackColor="#3333FF" BorderStyle="None" Font-Bold="True" ForeColor="White" Height="45px" Width="163px" OnClick="BtnSubmit_Click" />
                      <br />
                      <br />
                  </div>
              </div>
          </div>







            
        </div>
    </div>
</asp:Content>
