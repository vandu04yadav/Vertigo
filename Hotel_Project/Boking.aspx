<%@ Page Title="" Language="C#" MasterPageFile="~/HotelMaster.Master" AutoEventWireup="true" CodeBehind="Boking.aspx.cs" Inherits="Hotel_Project.Hotel.Boking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div class="container">
   <div>
    

       <div class="mt-5">
           <h2 class="text-center">BOOKING DETAILS</h2>

           
       </div>
     <%--  <div>
           <asp:Label ID="CKEditorControl1" runat="server" Text="Label"></asp:Label>
       </div>--%>
       <div>
       </div>
       <div class="d-flex justify-content-around mt-5 hotel-select">
         <div>
            <asp:Label ID="LblHname" runat="server" Text="Label"></asp:Label>
        </div>
      
        <div>
            <asp:Label ID="LblPrice" runat="server" Text="Label"></asp:Label><span> Starting Rate /Night</span>
         </div>
       </div>

      <%-- <div class="d-flex">
       <div>
            <asp:Label ID="LblEmail" runat="server" Text="Label"></asp:Label>
       </div>
       <div>
            <asp:Label ID="LblTel" runat="server" Text="Label"></asp:Label>
       </div>
       </div>--%>

    <%--   <div class="d-flex justify-content-around">
       <div class="mt-5">         
            Name
            <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
        </div>
       <div class="mt-5">         
            Price
            <asp:TextBox ID="TxtPrice" runat="server"></asp:TextBox>
        </div>
       </div>--%>

      <div class="d-flex justify-content-around mt-5">
        <div class="mt-5">         
            First Name
            <asp:TextBox class="form-control" ID="Txtfname" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Txtfname" ErrorMessage="*" style="color: #FF0000"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Txtfname" ErrorMessage="Invalid Name" ValidationExpression="^[a-zA-z\s]*$" style="color: #FF0000"></asp:RegularExpressionValidator>
        </div>
          <div class="mt-5">         
            Last Name
            <asp:TextBox ID="Txtlname" class="form-control" runat="server"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Txtlname" ErrorMessage="*" style="color: #FF0000"></asp:RequiredFieldValidator>
              <br />
              <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Txtlname" ErrorMessage="Invalid Name" ValidationExpression="^[a-zA-z\s]*$" style="color: #FF0000"></asp:RegularExpressionValidator>
        </div>
        <div class="mt-5">         
            Email
            <asp:TextBox ID="TxtEmail" class="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtEmail" ErrorMessage="*" style="color: #FF0000"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="TxtEmail" ErrorMessage="Invalid Email Id" style="color: #FF0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </div>  
      </div>


       <div class="d-flex justify-content-around">
        <div class="mt-5">         
            Contact
            <asp:TextBox ID="TxtContact" class="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtContact" ErrorMessage="*" style="color: #FF0000"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TxtContact" ErrorMessage="Invalid Contact " ValidationExpression="^[0-9]{10}$" style="color: #FF0000"></asp:RegularExpressionValidator>
        </div>
       
        <div class="mt-5">         
            Address
            <asp:TextBox ID="Txtaddress" class="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Txtaddress" ErrorMessage="*" style="color: #FF0000"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="Txtaddress" ErrorMessage="Invalid Address" style="color: #FF0000" ValidationExpression="^[a-zA-Z0-9\s]*$"></asp:RegularExpressionValidator>
        </div>
         <div class="mt-5">         
            City
            <asp:TextBox ID="TxtCity" class="form-control" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TxtCity" ErrorMessage="*" style="color: #FF0000"></asp:RequiredFieldValidator>
             <br />
             <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TxtCity" ErrorMessage="Invalid City" ValidationExpression="^[a-zA-z\s]*$" style="color: #FF0000"></asp:RegularExpressionValidator>
        </div>
       </div>
       <div class="d-flex justify-content-between">
         <div class="mt-5">         
            State
            <asp:TextBox ID="TxtState" class="form-control" runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TxtState" ErrorMessage="*" style="color: #FF0000"></asp:RequiredFieldValidator>
             <br />
             <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TxtState" ErrorMessage="Invalid State" ValidationExpression="^[a-zA-z\s]*$" style="color: #FF0000"></asp:RegularExpressionValidator>
        </div>
         <div class="mt-5">         
            Room Type
           <%-- <asp:TextBox ID="Txtroomtype" runat="server"></asp:TextBox>--%>
             <asp:DropDownList ID="Txtroomtype" class="form-control"  runat="server" Width="340px">
                 <asp:ListItem>Single</asp:ListItem>
                 <asp:ListItem>Double</asp:ListItem>
                 <asp:ListItem>Standard</asp:ListItem>
             </asp:DropDownList>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="Txtroomtype" ErrorMessage="*" style="color: #FF0000"></asp:RequiredFieldValidator>
        </div>
              <div class="mt-5">
        No of Rooms<asp:TextBox ID="TxtNoroom" class="form-control"  runat="server" Min="1" TextMode="Number" AutoPostBack="True" OnTextChanged="TxtNoroom_TextChanged" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TxtNoroom" ErrorMessage="*" style="color: #FF0000"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;
            <asp:Label ID="LblTotalprice" runat="server"></asp:Label>
            <br />
        </div>
       </div>

       <div class="d-flex mt-5 justify-content-between">
        <div class="">
            Check-In Date<br />
            <asp:TextBox ID="TxtCheckin" class="form-control" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TxtCheckin" ErrorMessage="*" style="color: #FF0000"></asp:RequiredFieldValidator>
            <div class="mt-3">
            <asp:Calendar ID="CalCheckIn" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" OnSelectionChanged="CalCheckIn_SelectionChanged" OnDayRender="CalCheckIn_DayRender" Width="330px"  >
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

    <div class="ml-5">
        Check-Out Date<br />
        <asp:TextBox ID="TxtCheckout" class="form-control" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TxtCheckout" ErrorMessage="*" style="color: #FF0000"></asp:RequiredFieldValidator>
        <div class="mt-3">
        <asp:Calendar ID="CalCheckout" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" OnSelectionChanged="CalCheckout_SelectionChanged" OnDayRender="CalCheckout_DayRender" Width="330px">
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
       </div>
   
     <%--   <div class="mt-5">
        No of Rooms<asp:TextBox ID="TxtNoroom" runat="server" Min="1" TextMode="Number" AutoPostBack="True" OnTextChanged="TxtNoroom_TextChanged" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TxtNoroom" ErrorMessage="*" style="color: #FF0000"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;
            <asp:Label ID="LblTotalprice" runat="server"></asp:Label>
            <br />
        </div>--%>
       <div class="mt-5 mb-5">
        <asp:Button ID="BtnBook" runat="server" type="submit"  OnClick="BtnBook_Click" Text="Book Now" Height="50px" Width="135px" BackColor="#CB934D" BorderStyle="None" Font-Bold="True" ForeColor="White"/>
       </div>
    </div>
    </div>
</asp:Content>
