<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ManageUsers.aspx.cs" Inherits="AdminPages_ManageUsers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br />

    <asp:GridView ID="GvUsers" runat="server" DataSourceID="DsUsers"  OnSelectedIndexChanged="GvUsers_SelectedIndexChanged" AutoGenerateColumns="false" DataKeyNames="UserId, UserName">
        <SelectedRowStyle BackColor="LightGray" />

        <Columns>
            <asp:BoundField DataField="UserId" HeaderText="UserId" ReadOnly="True" Visible="false" SortExpression="UserId"></asp:BoundField>
            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username"></asp:BoundField>
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
            <asp:BoundField DataField="RoleName" HeaderText="RoleName" SortExpression="RoleName"></asp:BoundField>
            <asp:CommandField ShowSelectButton="true" SelectText="Select" />
            <asp:CommandField ShowDeleteButton="true" DeleteText="Delete" />
            


        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="DsUsers" runat="server" ConnectionString='<%$ ConnectionStrings:Memberships %>'
        DeleteCommand="DELETE FROM UsersInRoles
                        WHERE UserID = @UserID"
        SelectCommand="SELECT Users.UserId, Users.Username, Memberships.Email, Roles.RoleName
                        FROM Users
                        JOIN Memberships ON Users.UserId = Memberships.UserId
                        JOIN UsersInRoles ON Memberships.UserId = UsersInRoles.UserId
                        JOIN Roles ON UsersInRoles.RoleId = Roles.RoleId">
        
    </asp:SqlDataSource>

    <br /><br />

    <asp:DetailsView ID="DvUserInfo" runat="server" Height="50px" Width="125px" DataSourceID="DsUserInfo" AutoGenerateRows="false"
         AutoGenerateEditButton="true" DataKeyNames="UserId">

        <Fields>
            <asp:BoundField DataField="UserId" HeaderText="UserId" ReadOnly="True"  Visible="false" SortExpression="UserId"></asp:BoundField>
            <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName"></asp:BoundField>
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
            <asp:BoundField DataField="CreateDate" ReadOnly="true" HeaderText="CreateDate" SortExpression="CreateDate"></asp:BoundField>
            <asp:BoundField DataField="LastLoginDate" ReadOnly="true" HeaderText="LastLoginDate" SortExpression="LastLoginDate"></asp:BoundField>
            <asp:BoundField DataField="Comment" HeaderText="Comment" SortExpression="Comment"></asp:BoundField>
        </Fields>
    </asp:DetailsView>

    <asp:SqlDataSource ID="DsUserInfo" runat="server" ConnectionString='<%$ ConnectionStrings:Memberships %>' SelectCommand="SELECT *
        FROM Users
        JOIN Memberships ON Memberships.UserId=Users.UserId
        WHERE Users.UserId=@UserId"
        UpdateCommand="UPDATE Users SET UserName=@UserName WHERE UserId=@UserId; 
                       UPDATE Memberships SET Email=@Email, Comment=@Comment WHERE UserId=@UserId;"
                OnUpdating="DsUserInfo_Updating" OnUpdated="DsUserInfo_Updated">

     <SelectParameters>
            <asp:ControlParameter ControlID="GvUsers" PropertyName="SelectedValue" Name="UserId"></asp:ControlParameter>
        </SelectParameters>
    </asp:SqlDataSource>

    <br />

    <asp:Label ID="LblRoles" Visible="false" runat="server" Text="Select User Role"></asp:Label>
    <asp:RadioButtonList ID="RblRoles" Visible="false" runat="server" OnSelectedIndexChanged="RblRoles_SelectedIndexChanged" AutoPostBack="true">
        <asp:ListItem Text="Admin" Value="admin"></asp:ListItem>
        <asp:ListItem Text="User" Value="user"></asp:ListItem>
    </asp:RadioButtonList><br />
    <asp:Label ID="LblError" runat="server" Text="" Visible="false" ForeColor="Red" Font-Bold="true" ></asp:Label>
    <br />
    <asp:LinkButton ID="EditRoles" runat="server" style="padding-left:1em;" Text="Edit Roles" OnClick="EditRoles_Click"></asp:LinkButton>
    <br /><br />
</asp:Content>

