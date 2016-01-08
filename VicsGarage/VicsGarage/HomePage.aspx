<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div id="text">            

        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
        <asp:Timer ID="TimeSlide" runat="server" Interval="3000" OnTick="TimeSlide_Tick"></asp:Timer>
        <asp:Image ID="ImgSlide" runat="server" />
            </ContentTemplate>
        </asp:UpdatePanel><br />
        <p class="spn"><br />About us:<br /><br />
            We are a small established automotive repair shop and dealer. Our founder, Victor Akellian, has been in the automotive industry for over 20 years. 
            His passion for cars and customer care has brought us where we are today. We are focused on our customers, and make sure that everyone is 
            comfortable and confident with the many services we provide at affordable rates.<br /><br />
        </p><br />
   
       <div><table id="table">
         <caption style="color:white; font-weight:bold;">Operating Hours</caption>
             <tr>
                <td>Monday</td>
                <td>9 AM - 6 PM</td>
             </tr>
             <tr>
                <td>Tuesday</td>
                <td>9 AM - 6 PM</td>
            </tr>
             <tr>
                <td>Wednesday</td>
                <td>9 AM - 6 PM</td>
             </tr>
             <tr>
                <td>Thursday</td>
                <td>9 AM - 6 PM</td>
             </tr>
             <tr>
                <td>Friday</td>
                <td>9 AM - 6 PM</td>
             </tr>
             <tr>
                <td>Saturday</td>
                <td>10 AM - 3 PM</td>
             </tr>
             <tr>
                <td>Sunday</td>
                <td id="close">CLOSED</td>
            </tr>
            
        </table>
       </div> <br />
            <img src="/Images/lux.jpg" alt="logos"  style="height:400px; width:350px; float:left; margin:2em;"/><br /><br />
            <p id="p1"> We are experienced with forgein and domestic services.<br /><br />
                Price is too steep for you? Don't worry, we price match!<br /><br />
                Brand new Michelin tires starting at $79.99!
            </p>
            <img src="/Images/vics.png" alt="vics" style="height:250px; width:500px; float:right; margin-right:2em; margin-bottom:1em;" />
    </div>

</asp:Content>

