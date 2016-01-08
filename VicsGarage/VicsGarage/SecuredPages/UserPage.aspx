<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="UserPage.aspx.cs" Inherits="UserPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="text" >
        
        <asp:Image ID="ProfileImage" ImageUrl="~/Images/profilepic.png" style="padding-left:1em" Height="200px" Width="200px" runat="server" />
        <br />
        <asp:LinkButton ID="LinkEditProfilePic" runat="server" style="padding-left:1em" Text="Edit Profile Picture" OnClick="LinkEditProfilePic_Click"></asp:LinkButton>
        <br /><br />
        <asp:Panel ID="PanelFileUpload" style="padding-left:1em" runat="server">
            <asp:FileUpload ID="ProfilePicUpload" runat="server" />
            <asp:Button ID="BtnUpload"  runat="server" Text="Upload" OnClick="BtnUpload_Click" />
        </asp:Panel>

        <br />

        <asp:Panel ID="ProviderInfo" runat="server" style="width:310px;padding-bottom:1em; text-align:right;">
        <asp:Label runat="server" style="padding-left:1em; color:orange; padding-bottom:.5em; text-align:left;">First Name:   </asp:Label>
        <asp:TextBox ID="TxtFirstName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="ReqFirstName" runat="server"
                ErrorMessage="You must enter a first name."
                Text="*" ForeColor="Red"
                ControlToValidate="TxtFirstName" Display="Dynamic">
            </asp:RequiredFieldValidator><br />
        <asp:Label runat="server" style="padding-left:1em; color:orange; padding-bottom:.5em; text-align:left;">Last Name:   </asp:Label>
        <asp:TextBox ID="TxtLastName" runat="server"></asp:TextBox>  
            <asp:RequiredFieldValidator ID="ReqLastName" runat="server"
                ErrorMessage="You must enter a last name."
                Text="*" ForeColor="Red"
                ControlToValidate="TxtLastName" Display="Dynamic">
            </asp:RequiredFieldValidator><br /> 
        <asp:label runat="server" style="padding-left:1em; color:orange; padding-bottom:.5em; text-align:left;">Vehicle Make: </asp:label>
        <asp:TextBox ID="TxtVehicleMake" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="ReqVehicleMake" runat="server"
                ErrorMessage="You must enter a vehicle make."
                Text="*" ForeColor="Red"
                ControlToValidate="TxtVehicleMake" Display="Dynamic">
            </asp:RequiredFieldValidator><br />
        <asp:label runat="server" style="padding-left:1em; color:orange; padding-bottom:.5em; text-align:left;">Vehicle Model: </asp:label>
        <asp:TextBox ID="TxtVehicleModel" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator  runat="server" ID="ReqVehicleModel"
                ErrorMessage="You must enter a vehicle model."
                Text="*" ForeColor="Red"
                ControlToValidate="TxtVehicleModel" Display="Dynamic">
            </asp:RequiredFieldValidator><br />
        <asp:label runat="server" style="padding-left:1em; color:orange; padding-bottom:.5em; text-align:left;">Year Manufactured: </asp:label>
        <asp:TextBox ID="TxtYearOfManufacture" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="ReqYearOfManufacture" runat="server"
                ErrorMessage="You must enter a year of manufacture."
                Text="*" ForeColor="Red"
                ControlToValidate="TxtYearOfManufacture" Display="Dynamic">
            </asp:RequiredFieldValidator><br />
        <asp:label runat="server" style="padding-left:1em; color:orange; padding-bottom:.5em; text-align:left;">Vehicle Color: </asp:label>
        <asp:TextBox ID="TxtColor" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="ReqTxtColor" runat="server"
                ErrorMessage="You must enter a color."
                Text="*" ForeColor="Red"
                ControlToValidate="TxtColor" Display="Dynamic" >
            </asp:RequiredFieldValidator><br />
        <asp:label runat="server" style="padding-left:1em; color:orange; padding-bottom:.5em; text-align:left;">Engine:   </asp:label>
        <asp:TextBox ID="TxtEngine" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="ReqTxtEngine" runat="server"
                ErrorMessage="You must enter an engine."
                Text="*" ForeColor="Red"
                ControlToValidate="TxtEngine" Display="Dynamic" >
            </asp:RequiredFieldValidator><br />
        <asp:label runat="server" style="padding-left:1em; color:orange; padding-bottom:.5em; text-align:left;">Transmission:   </asp:label>
        <asp:TextBox ID="TxtTransmission" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="ReqTxtTransmission" runat="server"
                ErrorMessage="You must enter a transmission."
                Text="*" ForeColor="Red"
                ControlToValidate="TxtTransmission" Display="Dynamic">
            </asp:RequiredFieldValidator><br />
        <asp:Button  style="padding-left:1em" ID="BtnSave" runat="server" Text="Save" OnClick="BtnSave_Click" />
        <asp:Button style="padding-left:1em" ID="CancelButton" runat="server" Text="Cancel" OnClick="CancelButton_Click" />
        </asp:Panel>
        
        <asp:Panel ID="ShowAccountInfo" runat="server"  style=" text-align:left;">
         <asp:Label runat="server" style="padding-left:1em; color:orange; padding-bottom:.5em;">First Name: &nbsp;&nbsp;</asp:Label>
        <asp:Label ID="LblFirstName" runat="server"></asp:Label><br />
         <asp:Label runat="server" style="padding-left:1em; color:orange; padding-bottom:.5em;">Last Name: &nbsp;&nbsp;</asp:Label>
        <asp:Label ID="LblLastName" runat="server"></asp:Label><br />   
         <asp:label runat="server" style="padding-left:1em; color:orange; padding-bottom:.5em;">Vehicle Make: &nbsp;&nbsp;</asp:label>
        <asp:Label ID="LblVehicleMake" runat="server"></asp:Label><br />
         <asp:label runat="server" style="padding-left:1em; color:orange; padding-bottom:.5em;">Vehicle Model: &nbsp;&nbsp;</asp:label>
        <asp:Label ID="LblVehicleModel" runat="server"></asp:Label><br />
         <asp:label runat="server" style="padding-left:1em; color:orange; padding-bottom:.5em;">Year Manufactured: &nbsp;&nbsp;</asp:label>
        <asp:Label ID="LblYearOfManufacture" runat="server"></asp:Label><br />
         <asp:label runat="server" style="padding-left:1em; color:orange; padding-bottom:.5em;">Vehicle Color: &nbsp;&nbsp;</asp:label>
        <asp:Label ID="LblColor" runat="server"></asp:Label><br />
         <asp:label runat="server" style="padding-left:1em; color:orange; padding-bottom:.5em;">Engine: &nbsp;&nbsp;</asp:label>
        <asp:Label ID="LblEngine" runat="server"></asp:Label><br />
         <asp:label runat="server" style="padding-left:1em; color:orange; padding-bottom:.5em;">Transmission: &nbsp;&nbsp;</asp:label>
        <asp:Label ID="LblTransmission" runat="server"></asp:Label>
        <br />
            <asp:LinkButton ID="ChangePassword" runat="server" style="padding-left:1em;" Text="Change Password" OnClick="ChangePassword_Click"></asp:LinkButton>
            <br />

        <asp:Button style="margin-left:1em; margin-bottom:1em" ID="BtnEdit" runat="server" Text="Edit" OnClick="BtnEdit_Click" />
            <br />
        <asp:label ID="AdminLinksLabel" style="padding-left:1em; color:orange;" runat="server">Administrator Links:</asp:label>

        <asp:LinkButton ID="EditRoles" runat="server" style="padding-left:1em;" Text="Edit Roles" OnClick="EditRoles_Click"></asp:LinkButton>
        <asp:LinkButton ID="ManageUsers" runat="server" style="padding-left:1em; " Text="Manage Users" OnClick="ManageUsers_Click"></asp:LinkButton>
            <br /><br />

       

        </asp:Panel>

         
        </div>
        </asp:Content>
        