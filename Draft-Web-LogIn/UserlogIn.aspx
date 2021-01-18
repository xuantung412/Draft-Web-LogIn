<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserlogIn.aspx.cs" Inherits="Draft_Web_LogIn.UserlogIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Login ID="LoginSection" runat="server" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderStyle="Solid" BorderWidth="1px" FailureText="Your UserName or Password is not correct" Font-Names="Verdana" Font-Size="0.8em" Height="133px" Width="444px" BorderPadding="4" ForeColor="#333333">
        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
        <LayoutTemplate>
            <table cellpadding="4" cellspacing="0" style="border-collapse:collapse;">
                <tr>
                    <td>
                        <table cellpadding="0" style="height:133px;width:444px;">
                            <tr>
                                <td align="center" colspan="2" style="color:White;background-color:#507CD1;font-size:0.9em;font-weight:bold;">User Login</td>
                            </tr>
                            <tr>
                                <td align="right">
                                    </td>
                                <td class="modal-sm" style="width: 311px">
                                    <asp:TextBox ID="UserName" runat="server" Font-Size="0.8em" Width="193px">Username or Email</asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="LoginSection">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    &nbsp;</td>
                                <td class="modal-sm" style="width: 311px">
                                    <asp:TextBox ID="Password" runat="server" Font-Size="0.8em" TextMode="Password" Width="194px">*********</asp:TextBox>
                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="LoginSection">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="height: 30px" >
                                    <asp:Button ID="Sign" runat="server" BackColor="#3183AB" BorderColor="#3183AB" BorderStyle="Solid" BorderWidth="1px" CommandName="Login" Font-Bold="True" Font-Names="Verdana" Font-Size="Small" Font-Strikeout="False" Font-Underline="False" ForeColor="White" Text="SIGN IN" ValidationGroup="LoginSection" OnClick="Sign_Click1" Width="201px" />
                                </td>
                            </tr>
                            <tr>
                                <td align="left">
                                    <asp:LinkButton ID="ForgotYourPasswordButton" runat="server" Font-Italic="True">Forgot your password?</asp:LinkButton>
                                </td>
                                <td align="right">
                                    <asp:LinkButton ID="RegistrationButton" runat="server" OnClick="RegistrationButton_Click">Registration</asp:LinkButton>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="color:Red; height: 18px;">
                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                </td>
                                <td align="right" colspan="2">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>

        <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
        <TextBoxStyle Font-Size="0.8em" />
    <TitleTextStyle BackColor="#507CD1" Font-Bold="True" ForeColor="#FFFFFF" Font-Size="0.9em" />
</asp:Login>
    <div>
                    By logging in you accept the
        <asp:LinkButton ID="PrivacyPolicy" runat="server" OnClick="PrivacyPolicy_Click">Privacy Policy</asp:LinkButton>
        


    </div>

</asp:Content>

