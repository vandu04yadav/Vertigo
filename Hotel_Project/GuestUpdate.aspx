<%@ Page Title="" Language="C#" MasterPageFile="~/HotelMaster.Master" AutoEventWireup="true" CodeBehind="GuestUpdate.aspx.cs" Inherits="Hotel_Project.GuestUpdate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4 class="room-dtls mt-5">UPDATE YOUR DETAILS</h4>
           <div class="dtls-head2 p-0">         
            </div>
    <div class="container">
        <%--<div class="mt-5">
            Contact
            <asp:TextBox ID="TxtContact" runat="server"></asp:TextBox>
        </div>
         <div class="m-3">
             Email
            <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox>
        </div>--%>

        <%--<h5>Update Your Details</h5>--%>
        
        <div class="d-flex justify-content-around">
         <div class="mt-5">
             First Name
             <br />
            <asp:TextBox ID="TxtFname" class="form-control" runat="server"></asp:TextBox>
             <strong>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TxtFname" ErrorMessage="*" style="color: #FF0000"></asp:RequiredFieldValidator>
             <br />
             </strong>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtFname" ErrorMessage="Invalid Name" style="color: #FF0000" ValidationExpression="^[a-zA-Z\s]*$"></asp:RegularExpressionValidator>
        </div>
        <div class="mt-5">
             Last Name
             <br />
            <asp:TextBox ID="TxtLname" class="form-control" runat="server"></asp:TextBox>
             <strong>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TxtLname" ErrorMessage="*" style="color: #FF0000"></asp:RequiredFieldValidator>
             <br />
             </strong>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TxtLname" ErrorMessage="Invalid Name" style="color: #FF0000" ValidationExpression="^[a-zA-Z\s]*$"></asp:RegularExpressionValidator>
        </div>
        </div>

        <div class="d-flex justify-content-around">
         <div class="mt-5">
             Address
             <br />
            <asp:TextBox ID="TxtAddress" class="form-control" runat="server"></asp:TextBox>
             <strong>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TxtAddress" ErrorMessage="*" style="color: #FF0000"></asp:RequiredFieldValidator>
             <br />
             </strong>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TxtAddress" ErrorMessage="Invalid Address" style="color: #FF0000" ValidationExpression="^[a-zA-Z\s]*$"></asp:RegularExpressionValidator>
        </div>
         <div class="mt-5">
             City
             <br />
            <asp:TextBox ID="TxtCity" class="form-control" runat="server"></asp:TextBox>
             <strong>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TxtCity" ErrorMessage="*" style="color: #FF0000"></asp:RequiredFieldValidator>
             <br />
             </strong>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TxtCity" ErrorMessage="Invalid City" style="color: #FF0000" ValidationExpression="^[a-zA-Z\s]*$"></asp:RegularExpressionValidator>
        </div>
            </div>

        <div class="d-flex justify-content-around">
         <div class="mt-5">
             State
             <br />
            <asp:TextBox ID="TxtState" class="form-control" runat="server"></asp:TextBox>
             <strong>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TxtState" ErrorMessage="*" style="color: #FF0000"></asp:RequiredFieldValidator>
             <br />
             </strong>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TxtState" ErrorMessage="Invalid State" style="color: #FF0000" ValidationExpression="^[a-zA-Z\s]*$"></asp:RegularExpressionValidator>
        </div>
           <div class="mt-5">
            Contact
               <br />
            <asp:TextBox ID="TxtContact" class="form-control" runat="server"></asp:TextBox>
               <strong>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TxtContact" ErrorMessage="*" style="color: #FF0000"></asp:RequiredFieldValidator>
               <br />
               </strong>
               <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="TxtContact" ErrorMessage="Invalid Contact" style="color: #FF0000" ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>
        </div>
            </div>

        <div class="d-flex justify-content-around">
         <div class="mt-5">
             Email
             <br />
            <asp:TextBox ID="TxtEmail" class="form-control" runat="server"></asp:TextBox>
             <strong>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="TxtEmail" ErrorMessage="*" style="color: #FF0000"></asp:RequiredFieldValidator>
             <br />
             </strong>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TxtEmail" ErrorMessage="Invalid Email" style="color: #FF0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </div>
            
        <%-- <div class="mt-3">
             Roomtype
            <asp:TextBox ID="TxtRoomtype" runat="server"></asp:TextBox>
        </div>--%>
         <div class="mt-5">
             No of Room
             <br />
            <asp:TextBox ID="TxtNoRoom" class="form-control" runat="server" TextMode="Number" min="1" Max="20"></asp:TextBox>
             <strong>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="TxtNoRoom" ErrorMessage="*" style="color: #FF0000"></asp:RequiredFieldValidator>
             </strong>
        </div>
            </div>
       
         <div class="mt-5">         
            Room Type      
             <asp:DropDownList ID="TxtRoomtype" class="form-control" runat="server" Width="350px">
                 <asp:ListItem>Single</asp:ListItem>
                 <asp:ListItem>Double</asp:ListItem>
                 <asp:ListItem>Standard</asp:ListItem>
             </asp:DropDownList>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="Txtroomtype" ErrorMessage="*" style="color: #FF0000"></asp:RequiredFieldValidator>
        </div>
    
       
    

    <div class="d-flex justify-content-around">
     <div class="mt-5">
         <asp:TextBox ID="TxtChkin" class="form-control" runat="server" ></asp:TextBox>
         <strong>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="TxtChkin" ErrorMessage="*" style="color: #FF0000"></asp:RequiredFieldValidator>
         </strong>
       <asp:Calendar class="mt-4" ID="CalCheckin" runat="server" OnSelectionChanged="CalCheckin_SelectionChanged" OnDayRender="CalCheckin_DayRender" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" Width="330px" >
           <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
           <DayStyle BackColor="#CCCCCC" />
           <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
           <OtherMonthDayStyle ForeColor="#999999" />
           <SelectedDayStyle BackColor="#333399" ForeColor="White" />
           <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
           <TodayDayStyle BackColor="#999999" ForeColor="White" />
         </asp:Calendar>
    </div>
     <div class="mt-5 ml-3">
          <asp:TextBox ID="TxtChkout" class="form-control" runat="server"></asp:TextBox>
          <strong>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="TxtChkout" ErrorMessage="*" style="color: #FF0000"></asp:RequiredFieldValidator>
          </strong>
        <asp:Calendar class="mt-4" ID="CalCheckout" runat="server" OnSelectionChanged="CalCheckout_SelectionChanged" OnDayRender="CalCheckout_DayRender" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" Width="330px">
            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
            <DayStyle BackColor="#CCCCCC" />
            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
            <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
            <TodayDayStyle BackColor="#999999" ForeColor="White" />
          </asp:Calendar>
    </div>
    </div>
    <div class="text-right mt-4 mb-5">
        <asp:Button ID="BtnUpdate" runat="server" Text="Confirm" OnClick="BtnUpdate_Click" Width="135px" BackColor="#CB934D" BorderStyle="None" Font-Bold="True" ForeColor="White" Height="50px"  />
    </div>
        </div>
</asp:Content>
