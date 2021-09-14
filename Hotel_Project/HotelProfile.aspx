<%@ Page Title="" Language="C#" MasterPageFile="~/HotelMaster.Master" AutoEventWireup="true" CodeBehind="HotelProfile.aspx.cs" Inherits="Hotel_Project.HotelProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div class="container mt-5">
            <div>
                <asp:Image ID="hotel_img" runat="server" Height="400px" Width="450px" />
            </div>
            <div class="d-flex justify-content-around mt-5">
            <div>
                Hotel
                <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
                <strong>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtName" ErrorMessage="*" style="color: #FF0000"></asp:RequiredFieldValidator>
                <br />
                </strong>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtName" ErrorMessage="Invalid Name" style="color: #FF0000" ValidationExpression="^[a-zA-Z\s]*$"></asp:RegularExpressionValidator>
                <br />
            </div>
              <div>
                  State
                <asp:TextBox ID="TxtState" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtState" ErrorMessage="*" style="color: #FF0000"></asp:RequiredFieldValidator>
                  <br />
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TxtState" ErrorMessage="Invalid State" style="color: #FF0000" ValidationExpression="^[a-zA-Z\s]*$"></asp:RegularExpressionValidator>
            </div>
            </div>
             <div class="d-flex justify-content-around mt-4" >
              <div>
                  City
                <asp:TextBox ID="TxtCity" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtCity" ErrorMessage="*" style="color: #FF0000"></asp:RequiredFieldValidator>
                  <br />
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TxtCity" ErrorMessage="Invalid City" style="color: #FF0000" ValidationExpression="^[a-zA-Z\s]*$"></asp:RegularExpressionValidator>
               </div>        
              <div>
                  Price
                <asp:TextBox ID="TxtPrice" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtPrice" ErrorMessage="*" style="color: #FF0000"></asp:RequiredFieldValidator>
                  <br />
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TxtPrice" ErrorMessage="Invalid Price" style="color: #FF0000" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
               </div>
             </div>

           
              <div class="mt-4">
                  Description
                <asp:TextBox ID="TxtDesc" runat="server" Height="128px" TextMode="MultiLine" Width="350px"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TxtDesc" ErrorMessage="*" style="color: #FF0000"></asp:RequiredFieldValidator>
              </div>
             <div class="d-flex justify-content-around mt-5">
             <div class="d-block">
               <div>
                 <asp:CheckBoxList ID="ChkSingle" runat="server">
                     <asp:ListItem>Single</asp:ListItem>
                  </asp:CheckBoxList>
            </div>
          <div>
                 <asp:CheckBoxList ID="ChkDouble" runat="server">
                     <asp:ListItem>Double</asp:ListItem>
                  </asp:CheckBoxList>
            </div>
              <div>
                 <asp:CheckBoxList ID="ChkStd" runat="server">
                     <asp:ListItem>Standard</asp:ListItem>
                  </asp:CheckBoxList>
            </div>
                </div>
               
       
       <%--  <div class="d-block">
              <div>
                <asp:TextBox ID="ChkAir" runat="server"></asp:TextBox>
            </div>
       
              <div>
                <asp:TextBox ID="ChkInternet" runat="server"></asp:TextBox>
            </div>
              <div>
                <asp:TextBox ID="ChkTV" runat="server"></asp:TextBox>
            </div>
         </div>--%>

           <div class="d-block">
              <div>                
                  <asp:CheckBoxList ID="ChkAir" runat="server">
                      <asp:ListItem>Air Condition</asp:ListItem>
                  </asp:CheckBoxList>
              </div> 
            <div class="">
                 <asp:CheckBoxList ID="ChkInternet" runat="server">
                     <asp:ListItem>Internet</asp:ListItem>
                 </asp:CheckBoxList>
            </div>
              <div>
                 <asp:CheckBoxList ID="ChkTV" runat="server">
                     <asp:ListItem>Television</asp:ListItem>
                  </asp:CheckBoxList>
            </div>
         </div>
<%--
              <div>
                <asp:TextBox ID="ChkPark" runat="server"></asp:TextBox>
            </div>
              <div>
                <asp:TextBox ID="ChkRest" runat="server"></asp:TextBox>
            </div>--%>


         <div class="d-block">
              <div>                
                  <asp:CheckBoxList ID="ChkPark" runat="server">
                      <asp:ListItem>Parking</asp:ListItem>
                  </asp:CheckBoxList>
              </div> 
            <div class="">
                 <asp:CheckBoxList ID="ChkRest" runat="server">
                     <asp:ListItem>Restaurant</asp:ListItem>
                 </asp:CheckBoxList>
            </div>
              <div>
                 <asp:CheckBoxList ID="ChkHealth" runat="server">
                     <asp:ListItem>Health</asp:ListItem>
                  </asp:CheckBoxList>
            </div>
               <div>
                 <asp:CheckBoxList ID="ChkPet" runat="server">
                     <asp:ListItem>Pet</asp:ListItem>
                  </asp:CheckBoxList>
            </div>
         </div>
                 </div>





       <div class="d-flex justify-content-around mt-5">
          <div>
              Name
                <asp:TextBox ID="Txtstaffnm" runat="server"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Txtstaffnm" ErrorMessage="*" style="color: #FF0000"></asp:RequiredFieldValidator>
              <br />
              <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="Txtstaffnm" ErrorMessage="Invalid Name" style="color: #FF0000" ValidationExpression="^[a-zA-Z\s]*$"></asp:RegularExpressionValidator>
            </div>
              <div>
                  Designation
                <asp:TextBox ID="TxtDesignation" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TxtDesignation" ErrorMessage="*" style="color: #FF0000"></asp:RequiredFieldValidator>
                  <br />
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="TxtDesignation" ErrorMessage="Invalid Designation" style="color: #FF0000" ValidationExpression="^[a-zA-z\s]*$"></asp:RegularExpressionValidator>
            </div>
         </div>
         

            <div class="d-flex justify-content-around mt-5">
              <div>
                  Contact
                <asp:TextBox ID="TxtTel" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TxtTel" ErrorMessage="*" style="color: #FF0000"></asp:RequiredFieldValidator>
                  <br />
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="TxtTel" ErrorMessage="Invalid Contact" style="color: #FF0000" ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>
            </div>
              <div>
                  Email
                <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TxtEmail" ErrorMessage="*" style="color: #FF0000"></asp:RequiredFieldValidator>
                  <br />
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="TxtEmail" ErrorMessage="Invalid Email" style="color: #FF0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                  </div>
                </div>
            <div class="d-flex mt-5">         
                  <asp:Button ID="BtnUpdate" runat="server" OnClick="BtnUpdate_Click" Text="Update" />
                </div>
            
               
    </div>
</asp:Content>
