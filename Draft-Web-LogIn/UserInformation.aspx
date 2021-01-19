<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserInformation.aspx.cs" Inherits="Draft_Web_LogIn.UserInformation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table>
        <tr>
            <th style="height: 20px; width: 278px;">
                <asp:Label ID="YourDetailLabel" runat="server" Text="Your Detail" Font-Bold="True" Font-Size="Large"></asp:Label>
            </th>


        </tr>
        <tr>
            <td style="width: 278px">
                <div>
                                    <asp:Label ID="TitleLabel" runat="server" Text="Title" Font-Bold="True"></asp:Label>
                </div>
                <div>
                                                            <asp:DropDownList runat="server" ID="UserTitleDropDownList">

                        <asp:ListItem Text="Select Title" Value="1" Selected="true" />
    <asp:ListItem Text="Mr" Value="2"/>
                        <asp:ListItem Text="Mrs" Value="3"/>
                         <asp:ListItem Text="Ms" Value="3"/>
        <asp:ListItem Text="Dr" Value="4"/>
</asp:DropDownList>
                </div>


            </td>
            <td>
                <div>
                    <asp:Label ID="FistNameLabel" runat="server" Text="First Name" Font-Bold="True"></asp:Label>
                </div>
                <div>
<asp:TextBox ID="FirstNameTextBox" runat="server"></asp:TextBox>
                </div>
            </td>
            <td>
                <div>
                    <asp:Label ID="SurNameLabel" runat="server" Text="Surname" Font-Bold="True"></asp:Label>
                </div>
                <div>
<asp:TextBox ID="SurNameTextBox" runat="server" Width="194px"></asp:TextBox>
                </div>
            </td>
            <td>
                                <div>
                                    <asp:Label ID="YearsInTravelLabel" runat="server" Text="Years In Travel" Font-Bold="True"></asp:Label>
                </div>
                <div>
                                                            <asp:DropDownList runat="server" ID="YearInTravelDropDownList" Height="19px" Width="154px">

                        <asp:ListItem Text="Select Year" Value="0" Selected="true" />
    <asp:ListItem Text="1" Value="1"/>
    <asp:ListItem Text="2" Value="2"/>
    <asp:ListItem Text="3" Value="3" />
<asp:ListItem Text="4" Value="4" />
<asp:ListItem Text="5" Value="5" />

 </asp:DropDownList>
                </div>
            </td>
        </tr>
        <tr>
            <td style="width: 278px">
                                <div>
                    <asp:Label ID="EmailLabel" runat="server" Text="Email" Font-Bold="True"></asp:Label>
                </div>
                <div>
<asp:TextBox ID="EmailTextBox" runat="server" Width="260px"></asp:TextBox>
                </div>
            </td>
            <td>
                                <div>
                    <asp:Label ID="CountryLabel" runat="server" Text="Country" Font-Bold="True"></asp:Label>
                </div>
                <div>
                                                            <asp:DropDownList runat="server" ID="UserCountryDropDownList">

                        <asp:ListItem Text="Select area code" Value="0" Selected="true" />
    <asp:ListItem Text="1000" Value="1"/>
    <asp:ListItem Text="2000" Value="2"/>
    <asp:ListItem Text="3000" Value="3" />
<asp:ListItem Text="4000" Value="4" />
<asp:ListItem Text="5000" Value="5" />

 </asp:DropDownList>                </div>
            </td>
            <td>
                                <div>
                    <asp:Label ID="PhoneNumberLabel" runat="server" Text="Phone Number" Font-Bold="True"></asp:Label>
                </div>
                <div>
<asp:TextBox ID="PhoneNumberTextBox" runat="server" Width="191px"></asp:TextBox>
                </div>
            </td>
        </tr>
        <tr>
            <td style="width: 278px">
                <asp:Label ID="AgentDetailLabel" runat="server" Text="Agent Detail" Font-Bold="True" Font-Size="Large"></asp:Label></td>

            </tr>
        <tr>
        <td>
                            <div>
                    <asp:Label ID="CompanyNameLabel" runat="server" Text="Company Name" Font-Bold="True"></asp:Label>
                </div>
                <div>
<asp:TextBox ID="CompanyNameTextBox" runat="server"></asp:TextBox>
                </div>
        </td>
        <td>
                            <div>
                    <asp:Label ID="TradingNameLabel" runat="server" Text="Trading Name" Font-Bold="True"></asp:Label>
                </div>
                <div>
<asp:TextBox ID="TradingNameTextBox" runat="server"></asp:TextBox>
                </div>
        </td>
        <td>
                            <div>
                    <asp:Label ID="WebsiteLabel" runat="server" Text="Website" Font-Bold="True"></asp:Label>
                </div>
                <div>
<asp:TextBox ID="WebsiteTextBox" runat="server"></asp:TextBox>
                </div>
        </td>
<td>
                                    <div>
                    <asp:Label ID="BusinessTypeLabel" runat="server" Text="Business Type" Font-Bold="True"></asp:Label>
                </div>
                <div>
                                                            <asp:DropDownList runat="server" ID="BusinessTypeDropdownlist">

                        <asp:ListItem Text="Select Business Type" Value="0" Selected="true" />
    <asp:ListItem Text="A" Value="1"/>
    <asp:ListItem Text="B" Value="2"/>
    <asp:ListItem Text="C" Value="3" />
<asp:ListItem Text="D" Value="4" />
<asp:ListItem Text="F" Value="5" />

 </asp:DropDownList>                </div>
</td>
        <td>
                                    <div>
                    <asp:Label ID="NumberOfEmployee" runat="server" Text="Number Of Employees" Font-Bold="True"></asp:Label>
                </div>
                <div>
                                                            <asp:DropDownList runat="server" ID="NumberOfEmployeesDropdownlist">

                        <asp:ListItem Text="Select Number Of Employees" Value="0" Selected="true" />
    <asp:ListItem Text="0-10" Value="1"/>
    <asp:ListItem Text="10-50" Value="2"/>
    <asp:ListItem Text="50-200" Value="3" />
<asp:ListItem Text=">200" Value="4" />

 </asp:DropDownList>                </div>

</td>
        </tr>
        <tr>
            <td style="width: 278px; height: 61px;">
                                            <div>
                    <asp:Label ID="LicenseIndustryMembershipNumberLabel" runat="server" Text="License/Industry Membership Number" Font-Bold="True"></asp:Label>
                </div>
                <div>
<asp:TextBox ID="LicenseIndustryMembershipNumberTextBox" runat="server" Height="16px" Width="253px" style="margin-bottom: 8"></asp:TextBox>
                </div>
            </td>
            <td style="height: 61px">
                                                            <div>
                    <asp:Label ID="CompanyRegisterNumberLabel" runat="server" Text="Company Register Number" Font-Bold="True"></asp:Label>
                </div>
                <div>
<asp:TextBox ID="CompanyRegisterNumberTextBox" runat="server" Height="16px" Width="193px"></asp:TextBox>
                </div>
            </td>
            <td style="height: 61px">
                                                            <div>
                    <asp:Label ID="TravelAssociationLabel" runat="server" Text="Travel Association" Font-Bold="True"></asp:Label>
                </div>
                <div>
<asp:TextBox ID="TravelAssociationTextbox" runat="server" Height="16px" Width="191px"></asp:TextBox>
                </div>
            </td>
            <td style="height: 61px">
                                                    <div>
                    <asp:Label ID="UserCountryLabel" runat="server" Text="Country" Font-Bold="True"></asp:Label>
                </div>
                <div>
                                                            <asp:DropDownList runat="server" ID="AgenCountryDropDownList">

                        <asp:ListItem Text="Select Country" Value="0" Selected="true" />
    <asp:ListItem Text="America" Value="1"/>
    <asp:ListItem Text="England" Value="2"/>
    <asp:ListItem Text="China" Value="3" />
<asp:ListItem Text="Australia" Value="4" />
 </asp:DropDownList>                </div>
            </td>

        </tr>
        <tr>
            <td>
                                        <div>
                    <asp:Label ID="StateRegionLabel" runat="server" Text="State/Region" Font-Bold="True"></asp:Label>
                </div>
                <div>
<asp:TextBox ID="StateRegionTextBox" runat="server"></asp:TextBox>
                </div>
                </td>

            <td>
                                        <div>
                    <asp:Label ID="AddressLabel" runat="server" Text="Address" Font-Bold="True"></asp:Label>
                </div>
                <div>
<asp:TextBox ID="AddressTextBox" runat="server"></asp:TextBox>
                </div>
                </td>
                        <td>
                                        <div>
                    <asp:Label ID="CityLabel" runat="server" Text="City" Font-Bold="True"></asp:Label>
                </div>
                <div>
<asp:TextBox ID="CityTextBox" runat="server"></asp:TextBox>
                </div>
                </td>
                        <td>
                                        <div>
                    <asp:Label ID="PostcodeLabel" runat="server" Text="Post Code" Font-Bold="True"></asp:Label>
                </div>
                <div>
<asp:TextBox ID="PostcodeTextbox" runat="server"></asp:TextBox>
                </div>
                </td>
        </tr>
        <tr>
            <td>
                                                                    <div>
                    <asp:Label ID="SolutionOfInterest" runat="server" Text="Solution of Interest" Font-Bold="True"></asp:Label>
                </div>
                <div>
                                                            <asp:DropDownList runat="server" ID="SolutionOfInterestDropDownList">

                        <asp:ListItem Text="Select area of interest" Value="0" Selected="true" />
    <asp:ListItem Text="Personal Use" Value="PersonalUse"/>
    <asp:ListItem Text="For Fun" Value="Fun"/>
<asp:ListItem Text="Agent" Value="4" />
 </asp:DropDownList>                </div>
            </td>

        </tr>

    </table>
                <div align="right">
            <asp:CheckBox ID="AgreeCheckBox" runat="server" /><asp:Label ID="UserAgreeTextBox" runat="server" Text="I have confirmed my registration information, which will be used for Header and Footer of the Demo website" Font-Bold="True"></asp:Label>
        
                </div>
    <div align="right">
        <asp:Button ID="NextButton" runat="server" Text="Next" OnClick="NextButton_Click" /></div>
</asp:Content>
