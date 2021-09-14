<%@ Page Title="" Language="C#" MasterPageFile="~/HotelMaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Hotel_Project.Hotel.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="../JavaScript.js"></script>
    <link href="../CSS/Style.css" rel="stylesheet" type="text/css" />
    
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="LblTable" runat="server"></asp:Label>
    </p>
 
    <div class="" style="width:90%; margin:auto;">
        <div class="d-flex">
           <div class="d-flex ml-5 mt-5">
        <div >
   
        <asp:TextBox Class=" form-control searchbox" ID="TxtSearch" placeholder="Search City" runat="server" Height="40px" Width="400px" AutoPostBack="True" OnTextChanged="TxtSearch_TextChanged"></asp:TextBox>   
       </div>
       <%-- <div>
             <asp:Button ID="Button1" Class="ml-2" runat="server" OnClick="Button1_Click" Text="Search" Height="40px" Width="100px" />
         </div>--%>
   
    </div>
        <div>
            
          <%-- 
           <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">
  Launch demo modal
</button>--%>

<!-- Modal -->
<div class="modal" tabindex="-1">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>Modal body text goes here.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>

        </div>
        </div>
    <h1 class="text-center mt-5" style="color: #323232">
        <strong>STUNNING HOTELS</strong></h1>
        <asp:GridView ID="GridView1"  runat="server" AutoGenerateColumns="False" GridLines="None" DataSourceID="SqlDataSource1" Width="100%" OnRowCommand="GridView1_RowCommand"  >
            <Columns>
                <%--<asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />--%>
            <%-- <asp:BoundField DataField="Imagepath" HeaderText="Imagepath" SortExpression="Imagepath" />--%>
               <%-- <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="Single" HeaderText="Single" SortExpression="Single" />
                <asp:BoundField DataField="Double_rm" HeaderText="Double_rm" SortExpression="Double_rm" />
                <asp:BoundField DataField="Standard" HeaderText="Standard" SortExpression="Standard" />
                <asp:BoundField DataField="Air_condition" HeaderText="Air_condition" SortExpression="Air_condition" />
                <asp:BoundField DataField="Internet" HeaderText="Internet" SortExpression="Internet" />
                <asp:BoundField DataField="Television" HeaderText="Television" SortExpression="Television" />
                <asp:BoundField DataField="Parking" HeaderText="Parking" SortExpression="Parking" />
                <asp:BoundField DataField="Restaurant" HeaderText="Restaurant" SortExpression="Restaurant" />
                <asp:BoundField DataField="Health" HeaderText="Health" SortExpression="Health" />
                <asp:BoundField DataField="pet" HeaderText="pet" SortExpression="pet" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Tel" HeaderText="Tel" SortExpression="Tel" />--%>


                <asp:TemplateField>
                    <ItemTemplate>
                    <div class="container-fluid">
                        <div class="row mt-5">
                          <div class="col-lg-4">
                            <asp:Image class="img-fluid" ID="Image1" runat="server" Width="1200px" Height="400px"  ImageUrl='<%# Eval("Imagepath") %>' />   
                           </div>
                          <div class="col-lg-8">
                              <div>                        
                                  <div class="">
                                      <h3 class="mt-3"><asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>'></asp:Label></h3>
                                     
                                     <div class="mt-2">
                                          <span style="color: #1E1E1E"><strong>State</strong></span>:
                                      <asp:Label ID="LblState" runat="server" Text='<%# Eval("State") %>' BorderStyle="None" ForeColor="#4A4A4A" ></asp:Label>
                                          &nbsp;&nbsp; |&nbsp;&nbsp; <span style="color: #323232"><strong>City</strong></span>:&nbsp;
                                      <asp:Label ID="LblCity" runat="server" Text='<%# Eval("City") %>' ForeColor="#4A4A4A"></asp:Label>
                                     </div>
                                  </div>
                                  <div class="mt-2">
                                      <span><i class="fas fa-rupee-sign"></i></span>
                                      <asp:Label ID="LblPrice" runat="server"  Text='<%# Eval("Price") %>' BorderStyle="None" ForeColor="#4A4A4A"></asp:Label>
                                      &nbsp; Starting Rate /Night</div>
                                  </div>
                                 <div class="hotel-desc mt-4">
                                     
                                     <span style="color: #323232"><strong>About Hotel</strong></span>
                                     <br />
                                     
                                     <asp:Label ID="LblDesc" runat="server" Text='<%# Eval("Description") %>' ForeColor="#4A4A4A"></asp:Label>

                                </div>
                              <div class="mt-3">
                                  
                                  <strong><span style="color: #323232">Available Types of Hotel Rooms:<br /></span></strong>&nbsp;<asp:Label ID="Lblsingle" runat="server" Text='<%# Eval("Single") %>'></asp:Label>
                               
                                  <%--<asp:Label ID="Lblsingle" runat="server" Text= '<%# Eval("Single")=="Y" ? "Single" : "not" %>'></asp:Label>--%>

                                 

                                <%--<asp:Label ID="Lblsingle" runat="server" Text='<%# Eval("Single") %>'></asp:Label>--%>
                                  <strong><span style="color: #323232">&nbsp;&nbsp; </span></strong>&nbsp;<asp:Label ID="Label2" runat="server" Text='<%# Eval("Double_rm") %>'></asp:Label>
                                  <strong>&nbsp;&nbsp; </strong>
                                  <asp:Label ID="Label3" runat="server" Text='<%# Eval("Standard") %>'></asp:Label>
                              </div>
                             
                          
          
                              More Details :<em><strong><asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Text='<%#Eval("Name") %>'></asp:LinkButton>
                              </strong></em>
           
       
                              
                            
                          </div>
                       </div>
                    </div>
                    </ItemTemplate>
                     
                </asp:TemplateField>



             
                 



            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:hotel_constr %>" SelectCommand="SELECT [UserId], [Name], [State], [City], [Imagepath], [Price], [Description], [Single], [Double_rm], [Standard], [Air_condition], [Internet], [Television], [Parking], [Restaurant], [Health], [pet], [Email], [Tel] FROM [HotelDetails]"></asp:SqlDataSource>
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>
    
    


    
</asp:Content>
