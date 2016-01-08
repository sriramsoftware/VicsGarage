<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Sales.aspx.cs" Inherits="Sales" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="text">
        <h2>Looking to buy?</h2>
        <span>Take a look at our selections of available vehicles!</span><br /><br />
        <asp:Panel ID="salesPanelLeft" runat="server">
            <img id="carPhoto" src="Images/car.jpg" />
            <br />
            <span>1981 DMC Delorean</span><br />
            <asp:Button ID="detailButton" runat="server" Text="View Details" />
            <br /><br />
            <img id="carPhoto1" src="Images/eed93826557cb43f9a1fa6a685865724x.jpg" />
            <br />
            <span>2003 Ford Mustang</span><br />
            <asp:Button ID="detailButton1" runat="server" Text="View Details" /><br />
        </asp:Panel>
        
        <br /><br />
    </div>
</asp:Content>

