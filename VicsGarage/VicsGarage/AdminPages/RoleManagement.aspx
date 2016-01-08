<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RoleManagement.aspx.cs" Inherits="AdminPages_RoleManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <label>&nbsp;Role Name: </label>
    <asp:TextBox ID="TxtRoleName" runat="server" style="margin-left: 25px" Width="175px"></asp:TextBox><br /><br />
    <asp:Button ID="BtnAddRole" runat="server" Text="Add New Role" OnClick="BtnAddRole_Click" style="margin-left: 100px" />
    <br /><br />
    <asp:Label ID="LblResults" runat="server"></asp:Label>
    <br />
    
    <asp:DropDownList ID="DdlRoles" runat="server" style="margin-left: 100px"></asp:DropDownList><br />
    <br />
    <asp:RequiredFieldValidator ID="ReqDdlRoles" runat="server" ErrorMessage="You must have a role!" ControlToValidate="DdlRoles" InitialValue="Select Role" ValidationGroup="Add to Role"></asp:RequiredFieldValidator>
    <br />
    <label>Enter Username: </label>
    <asp:TextBox ID="TxtUserName" runat="server"></asp:TextBox>
    <br /><br />
    <asp:Button ID="BtnAddUserToRole" runat="server" Text="Add User to Role." OnClick="BtnAddUserToRole_Click"  ValidationGroup="Add user to role." style="margin-left: 100px" />
    <asp:Label ID="LblAddUserResults" runat="server"></asp:Label>
    <br /><br />
    <asp:LinkButton ID="ManageUsers" runat="server" style="padding-left:1em; " Text="Manage Users" OnClick="ManageUsers_Click"></asp:LinkButton>
    <br /><br />
</asp:Content>

