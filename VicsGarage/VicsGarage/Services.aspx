<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Services.aspx.cs" Inherits="Services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="textForServices"> 
        <span>At Vic's Garage we provide all the services, repairs and maintenance your vehicle needs.<br />
            Some of the automotive services and repairs we provide include:
        </span>
            <asp:BulletedList ID="BulletedList" runat="server">
                <asp:ListItem>Alternators</asp:ListItem>
                <asp:ListItem>Brakes</asp:ListItem>
                <asp:ListItem>Cooling Systems</asp:ListItem>
                <asp:ListItem>Engine Repair</asp:ListItem>
                <asp:ListItem>Muffler/Exhausts</asp:ListItem>
                <asp:ListItem>Oil Changes</asp:ListItem>
                <asp:ListItem>Radiators</asp:ListItem>
                <asp:ListItem>Starters</asp:ListItem>
                <asp:ListItem>Suspensions</asp:ListItem>
                <asp:ListItem>Tune-Ups</asp:ListItem>
            </asp:BulletedList>
            <span>Schedule an appointment today!</span>
            <br /><br />
            <span>If you have any questions regarding any services or prices, feel free to 
                <a id="link" href="Location.aspx">Contact Us.</a></span>
            <br /><br />
        <asp:SqlDataSource ID="DsServices" runat="server" ConnectionString='<%$ ConnectionStrings:servicesConnection %>' SelectCommand="SELECT * FROM [ServicesOffered]"></asp:SqlDataSource>
        <asp:GridView ID="GvServices" runat="server" DataSourceID="DSServices" AutoGenerateColumns="true" DataKeyNames="Services"></asp:GridView>
        <br />
        <br />
    </div>
</asp:Content>

