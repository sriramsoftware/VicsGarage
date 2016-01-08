<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Location.aspx.cs" Inherits="Location" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="LocationID">

        <span id="contactTitle">Contact Us</span>
        <br /><br />
        <span id="intro"> Please feel free to contact us regarding any questions or concerns.&nbsp;</span>
        
        <br /><br />


        <div id="Contact">
            
            <label>First Name</label>
            <asp:TextBox ID="firstName" runat="server" Columns="25"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqFirstName" runat="server"
                ErrorMessage="You must enter your first name"
                Text="*" ForeColor="Red"
                ControlToValidate="firstName" Display="Dynamic" PostBack="true">
            </asp:RequiredFieldValidator>
            <br />
            <label>Last Name</label>
            <asp:TextBox ID="lastName" runat="server" Columns="25"></asp:TextBox>
            <br />
            <label>Phone Number</label>
            <asp:TextBox ID="phoneNum" runat="server" Columns="25"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqPhoneNum" runat="server"
                ErrorMessage="You must enter a phone number."
                Text="*" ForeColor="Red"
                ControlToValidate="phoneNum" Display="Dynamic" PostBack="true">
            </asp:RequiredFieldValidator>
            <br />
            <label>Email</label>
            <asp:TextBox ID="email" runat="server" Columns="25"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqEmail" runat="server"
                ErrorMessage="You must enter an email."
                Text="*" ForeColor="Red"
                ControlToValidate="email" Display="Dynamic" PostBack="true">
            </asp:RequiredFieldValidator>
            <br />
            <label>Message</label>
            <asp:TextBox ID="message" runat="server" Columns="26" TextMode="MultiLine"></asp:TextBox>
            <br /><br />
            <asp:Button ID="submitButton" runat="server" Text="Submit" OnClick="submitButton_Click" />
            <br /><br />
            <asp:ValidationSummary ID="ErrorSummary" runat="server"
                HeaderText="Please fix the following errors:">
            </asp:ValidationSummary>
            <asp:Panel ID="locationPanel" runat="server">Thank you! We will contact you within 48 hours.</asp:Panel>
        </div>
        

         <div id="Location">
            <span id="locationTitle">Location</span>
            <br /><br />
            <img id="map" src="Images/Map.png" /><br /><br />
            <span>2523 W Carmen Ave
            <br />
            Chicago, IL 60625 <br />
            (773) 555-1509
            </span><br /><br />

        </div>
    </div>
</asp:Content>



