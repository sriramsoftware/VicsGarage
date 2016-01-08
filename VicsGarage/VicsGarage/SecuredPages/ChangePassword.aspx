<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="SecuredPages_PasswordRecovery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:ChangePassword ID="ChangePassword1" runat="server" ContinueDestinationPageUrl="~/SecuredPages/UserPage.aspx" CancelDestinationPageUrl="~/SecuredPages/UserPage.aspx"></asp:ChangePassword>

</asp:Content>

