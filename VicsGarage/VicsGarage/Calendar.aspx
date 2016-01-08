<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Calendar.aspx.cs" Inherits="Calender" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="text">
        <span>Looking to book an appointment with us? Choose your date below:</span>
        <asp:Calendar ID="myCalendar" runat="server" OnSelectionChanged="myCalendar_SelectionChanged">
            <TodayDayStyle BackColor="Yellow" />
            <TitleStyle Font-Bold="true" BorderStyle="Groove" />
            <DayStyle ForeColor="Silver" Font-Bold="true" />            
        </asp:Calendar><br />
        <asp:Label ID="LblCalenderInfo" runat="server"></asp:Label>
        <br /><br /><br />
        Want that car of yours looked at by our certified professionals? Check the Calendar to make sure we're open
        and fill out the form below and one of our representatives will email you a confirmation, thank you!
        <br /><br /><br />

        <div id="Contact">
        
        <label>Date:</label>
        <asp:TextBox ID="Date" runat="server" Columns="30"></asp:TextBox> 
        <asp:RequiredFieldValidator ID="reqDate" runat="server"
            ErrorMessage="You must enter a Date"
            Text="*" ForeColor="Red"
            ControlToValidate="Date" Display="Dynamic" PostBack="true">
        </asp:RequiredFieldValidator>
        <br />
        <label>First Name:</label>
        <asp:TextBox ID="FirstName" runat="server" Columns="30"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqFirstName" runat="server"
            ErrorMessage="You must enter your first name"
            Text="*" ForeColor="Red"
            ControlToValidate="FirstName" Display="Dynamic" PostBack="true">
        </asp:RequiredFieldValidator>
        <br />
        <label>Last Name:</label>
        <asp:TextBox ID="LastName" runat="server" Columns="30"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqLastName" runat="server"
            ErrorMessage="You must enter your Last name"
            Text="*" ForeColor="Red"
            ControlToValidate="LastName" Display="Dynamic" PostBack="true">
        </asp:RequiredFieldValidator>
        <br />
        <label>Phone Number:</label>
            <asp:TextBox ID="phoneNum" runat="server" Columns="30"></asp:TextBox>
            <asp:RequiredFieldValidator ID="reqPhoneNum" runat="server"
                ErrorMessage="You must enter a phone number."
                Text="*" ForeColor="Red"
                ControlToValidate="phoneNum" Display="Dynamic" PostBack="true">
            </asp:RequiredFieldValidator>
            <br />
        <label>Email:</label>
        <asp:TextBox ID="email" runat="server" Columns="30"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqEmail" runat="server"
            ErrorMessage="You must enter an email."
            Text="*" ForeColor="Red"
            ControlToValidate="email" Display="Dynamic" PostBack="true">
        </asp:RequiredFieldValidator>
        <br />
        <label>Make:</label>    
        <asp:TextBox ID="Make" runat="server" Columns="30"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqMake" runat="server"
            ErrorMessage="You must enter a Vehicle Make."
            Text="*" ForeColor="Red"
            ControlToValidate="Make" Display="Dynamic" PostBack="true">
        </asp:RequiredFieldValidator>
        <br />
        <label>Model:</label>
        <asp:TextBox ID="Model" runat="server" Columns="30"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqModel" runat="server"
            ErrorMessage="You must enter a Vehicle Model."
            Text="*" ForeColor="Red"
            ControlToValidate="Model" Display="Dynamic" PostBack="true">
        </asp:RequiredFieldValidator>
        <br />
        <label>Year:</label>
        <asp:TextBox ID="Year" runat="server" Columns="30"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqYear" runat="server"
            ErrorMessage="You must enter the Vehicle's Year."
            Text="*" ForeColor="Red"
            ControlToValidate="email" Display="Dynamic" PostBack="true">
        </asp:RequiredFieldValidator>
        <br /><br />
        <asp:Button ID="SubmitBtn" runat="server" Text="Submit" />

      </div>
      
    </div>
</asp:Content>

