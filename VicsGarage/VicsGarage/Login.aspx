<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Login ID="LoginControl" runat="server"
        DestinationPageUrl="~/SecuredPages/UserPage.aspx"
        CreateUserText="Register for the first time"
        CreateUserUrl="~/CreateUser.aspx"
        InstructionText="Please enter your username and password."
        FailureText="Your login attempt was not successful. Please try again."
        TitleText="Log In"
        LoginButtonText="Log In"
        PasswordRecoveryUrl="~/PasswordRecovery.aspx"
        PasswordRecoveryText="Forgot your password?" >
        <TitleTextStyle BackColor="Red" Font-Bold="true" ForeColor="White" />
        <InstructionTextStyle Font-Italic="true" />
        <FailureTextStyle ForeColor="Red" />
    </asp:Login>
</asp:Content>

