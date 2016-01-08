<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CreateUser.aspx.cs" Inherits="CreateUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" style="margin-left:1em; margin-bottom:1em;" OnCreatedUser="CreateUserWizard1_CreatedUser" BorderColor="Orange" BackColor="Black" BorderStyle="Solid" BorderWidth="1px" OnContinueButtonClick="CreateUserWizard1_ContinueButtonClick"
        CompleteSuccessText="Your account has been successfully created." DisplayCancelButton="true" CancelButtonText="Cancel" OnCancelButtonClick="CreateUserWizard1_CancelButtonClick">
       
    </asp:CreateUserWizard>
</asp:Content>

