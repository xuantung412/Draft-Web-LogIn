<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="Draft_Web_LogIn.UserRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div align="center" >
                <asp:Label ID="RegistrationLabel" runat="server" Text="Registration New User"></asp:Label>
    </div>
    <table align="center">
        <tr>
            <td>
                        <asp:Label ID="UserNameLabel" runat="server" Text="UserName"></asp:Label>
            </td>
            <td>
                        <asp:TextBox ID="UserNameTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="PasswordLabel" runat="server" Text="Password"></asp:Label>

            </td>
            <td>
        <asp:TextBox ID="PasswordTextBox" TextMode="Password" runat="server">



        </asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator( Atleast 8 character, 1 UpperCase, 1 Lowercase, 1 Number)"  
        ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}$"  
        ControlToValidate="PasswordTextBox"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                            <asp:Label ID="EmailLabel" runat="server" Text="Email"></asp:Label>
            </td>
            <td>
                        <asp:TextBox ID="EmailTextbox" TextMode="Email" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
    <div align="right">
        <asp:Button ID="SignUpButton" runat="server" Text="Sign Up" OnClick="SignUpButton_Click" style="height: 26px" />
    </div>

</asp:Content>
