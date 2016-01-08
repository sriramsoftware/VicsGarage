<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PasswordRecovery.aspx.cs" Inherits="PasswordRecovery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" SuccessText="Your password has been sent to the email address on file." 
        UserNameFailureText="User name not on file." UserNameTitleText="Password Recovery" OnSendingMail="PasswordRecovery1_SendingMail">
        <TitleTextStyle Font-Size="Large" />
        <LabelStyle HorizontalAlign="Left" Width="5em" />
        <SubmitButtonStyle Width="5em" />

        <MailDefinition From="chelaahh@gmail.com"
            Subject="Password Reset"
            BodyFileName="~/PasswordRecoveryTemplate.txt">
        </MailDefinition>

        <UserNameTemplate>
            <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                <tr>
                    <td>
                        <table cellpadding="0">
                            <tr>
                                <td align="center" colspan="2" style="font-size:Large;">Password Recovery</td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">Enter your User Name to receive your password.</td>
                            </tr>
                            <tr>
                                <td align="left" style="width:5em;">
                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="PasswordRecovery1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="color:Red;">
                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" colspan="2">
                                    <asp:Button ID="SubmitButton" runat="server" CommandName="Submit" Text="Submit" ValidationGroup="PasswordRecovery1" Width="5em" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </UserNameTemplate>

    </asp:PasswordRecovery>
</asp:Content>

