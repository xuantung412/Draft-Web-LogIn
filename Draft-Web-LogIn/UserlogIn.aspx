<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserlogIn.aspx.cs" Inherits="Draft_Web_LogIn.UserlogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
    <div class="tablediv">
    <table class="loginArea" style="margin: 0 auto">
        <tr>
            <td>
                <table>
                    <tr>

                        <td class="auto-style1">
                            <h1>User Login</h1>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:TextBox ID="UserNameTextBox" Width="100%" placeholder="Username or Email" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserNameTextBox" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="LoginSection">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:TextBox ID="PasswordTextBox" Width="100%" runat="server" placeholder="Your Password" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="PasswordTextBox" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="LoginSection">*</asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Button ID="SignInButton" runat="server" BackColor="#3183AB" BorderColor="#3183AB" BorderStyle="Solid" BorderWidth="1px" CommandName="Login" Font-Bold="True" Font-Names="Verdana" Font-Size="Small" Font-Strikeout="False" Font-Underline="False" ForeColor="White" Text="SIGN IN" ValidationGroup="LoginSection" OnClick="Sign_Click1" Width="100%" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:LinkButton ID="ForgotYourPasswordButton" runat="server" Font-Italic="True">Forgot your password?</asp:LinkButton>
                            <asp:LinkButton ID="RegistrationButton" runat="server" OnClick="RegistrationButton_Click">Registration</asp:LinkButton>


                        </td>
                        <td class="auto-style3"></td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                        </td>

                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </div>
    <div class="textForWarmingMessage">
        By logging in you accept the
        <asp:LinkButton ID="PrivacyPolicy" runat="server" OnClick="PrivacyPolicy_Click">Privacy Policy</asp:LinkButton>
    </div>



    <style type="text/css">
        .loginArea {
            text-align: center;
            border-color: black;
            border:3px solid black;
            width:25%;
        }

        .cssforgotpassword {
            text-align: left;
        }

        .cssregistration {
            text-align: right;
        }

        .textForWarmingMessage {
            text-align: center;
        }
        .tablediv{
            text-align:center;
        }

        .auto-style1 {
            width: 262px;
        }

    </style>
</asp:Content>

