<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="text">
        <span>You are already logged in</span>
        <br /><br />
        <span>What will your username be?</span>
        <br />
        <label>Username: </label>
        <asp:TextBox ID="UsernameBox" runat="server" />
        <br />
        <label>Password: </label>
        <asp:TextBox ID="PasswordBox1" TextMode="Password" runat="server" />
        <br />
        <label>Verify Password: </label>
        <asp:TextBox ID="PasswordBox2" TextMode="Password" runat="server" />
        <br /><br />
        <span>Tell us a bit about yourself.</span>
        <br />
        <label>First Name: </label>
        <asp:TextBox ID="FirstNameBox" runat="server"></asp:TextBox>
        <br />
        <label>Last Name: </label>
        <asp:TextBox ID="LastNameBox" runat="server"></asp:TextBox>
        <br />
        <label>Phone Number: </label>
        <asp:TextBox ID="PhoneNumberBox" runat="server"></asp:TextBox>
        <br />
        <label>Email Address: </label>
        <asp:TextBox ID="EmailAddressBox" runat="server"></asp:TextBox>
        <br /><br />
        <asp:Button ID="Submit" Text="submit" onClick="Submit_Click" runat="server"/>
        <br /><br />

    </div>

</asp:Content>

