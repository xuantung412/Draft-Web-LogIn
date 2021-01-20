<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="Draft_Web_LogIn.UserRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div align="center">
                <h1><asp:Label ID="RegistrationLabel" runat="server" Text="Registration New User"></asp:Label></h1>
    </div>
     <h4 class="">AGENCY DETAILS</h4>
                <div class="row justify-content-center pt-3" style="background: url(images/site/shadow-2.png?v1) 50% 0 no-repeat;">
                  <div class="media-container-column col-lg-12">
                    <div class="row">
                      <div class="col">
                        <div class="row">
                          <div class="col-md-4 col-sm-12">                
                            <div class="form-group">
                              <label class="form-control-label style-font-label">Company Name*
                              </label>
                                <asp:TextBox CssClass="form-control" placeholder="Company Name" ID="AgencyCompanyNameTextBox" runat="server"></asp:TextBox>
                            </div>
                          </div>
                         <div class="col-md-4 col-sm-12">                   
                            <div class="form-group">
                              <label class="form-control-label style-font-label">Agency Trading Name*
                              </label>
                                                            <asp:TextBox CssClass="form-control" placeholder="Trading Name" ID="AgencyTradingNameTextBox" runat="server"></asp:TextBox>
                            </div>
                          </div>
                         <div class="col-md-4 col-sm-12">                
                            <div class="form-group">
                              <label class="form-control-label style-font-label">Company Website
                              </label>
                                                            <asp:TextBox CssClass="form-control" placeholder="Website URL" ID="CompanyWebsiteTextBox" runat="server"></asp:TextBox>

                            </div>
                          </div>
                        </div>
                        <div class="row">
                         <div class="col-md-4 col-sm-12">                 
                            <div class="form-group">
                              <label class="form-control-label style-font-label">Industry License/ Membership Number*
                              </label>
                                                                <asp:TextBox CssClass="form-control" placeholder="Industry Number" ID="AgencyNumberTextBox" runat="server"></asp:TextBox>

                            </div>
                          </div>
                          <div class="col-md-4 col-sm-12">                 
                            <div class="form-group">
                              <label class="form-control-label style-font-label">Company Registration Number*
                              </label>
                                <asp:TextBox CssClass="form-control" placeholder="Business Registration Number" ID="AgencyCompanyRegistrationNumberTextBix" runat="server"></asp:TextBox>
                            </div>
                          </div>
                          <div class="col-md-4 col-sm-12">                 
                            <div class="form-group">
                              <label class="form-control-label style-font-label">Travel Association
                              </label>
                                <asp:TextBox CssClass="form-control" placeholder="What Travel Group Do You Belong To ?" ID="AgencyTravelAssociationTextBox" runat="server"></asp:TextBox>
                            </div>
                          </div>
                        </div>
                        <div class="row pt-4">
                         <div class="col-md-4 col-sm-12">              
                            <div class="form-group">
                              <label class="form-control-label style-font-label">Street address*
                              </label>
                                <asp:TextBox CssClass="form-control" placeholder="Street Address" ID="AgencyStreetAddressTextBox" runat="server"></asp:TextBox>
                            </div>
                          </div>
                         <div class="col-md-4 col-sm-12">                
                            <div class="form-group">
                              <label class="form-control-label style-font-label">Postcode*
                              </label>
                                <asp:TextBox CssClass="form-control" placeholder="Postcode" ID="AgencyPostcodeTextBox" runat="server"></asp:TextBox>
                            </div>
                          </div>
                          <div class="col-md-4 col-sm-12">               
                            <div class="form-group">
                              <label class="form-control-label style-font-label">City*
                              </label>
                                <asp:TextBox CssClass="form-control" placeholder="City" ID="AgencyCityTextBox" runat="server"></asp:TextBox>
                            </div>
                          </div>
                        </div>
                        <div class="row">
                          <div class="col-md-4 col-sm-12">                
                            <div class="form-group">
                              <label class="form-control-label style-font-label"">Country*
                              </label>
                                <asp:DropDownList CssClass="form-control" ID="AgencyCountry" runat="server">
                                     <asp:ListItem Text="----" Value="---" Selected="true" />
                                    <asp:ListItem Text="Greece" Value="Greece"/>
                                    <asp:ListItem Text="New Zealand" Value="New Zealand"/>
                                    <asp:ListItem Text="Singapore" Value="Singapore"/>
                                    <asp:ListItem Text="Thailand" Value="Thailand"/>
                                    <asp:ListItem Text="United Kingdom" Value="United Kingdom"/>
                                </asp:DropDownList>
                            </div>
                          </div>
                          <div class="col-md-4 col-sm-12">               
                            <div class="form-group">
                              <label class="form-control-label style-font-label">If Other
                              </label>
                                <asp:TextBox CssClass="form-control" placeholder="If Other Country" ID="AgencyOtherCountryTextBox" runat="server"></asp:TextBox>
                            </div>
                          </div>
                         <div class="col-md-4 col-sm-12">                
                            <div class="form-group">
                              <label class="form-control-label style-font-label">State/Region*
                              </label>
                                <asp:TextBox CssClass="form-control" placeholder="State or Region" ID="AgencyRegionTextBox" runat="server"></asp:TextBox>
                            </div>
                          </div>
                        </div>
                        <div class="row">

                          <div class="col-md-6 col-sm-12">  
                            <div class="form-group">
                              <label class="form-control-label style-font-label">Phone*
                              </label>
                                <asp:TextBox CssClass="form-control" placeholder="Phone" ID="AgencyPhone" runat="server"></asp:TextBox>
                              
                              
                            </div>
                          </div>
                          <div class="col-md-6 col-sm-12">  
                            <div class="form-group">
                              <label class="form-control-label style-font-label">Fax
                              </label>
                                <asp:TextBox CssClass="form-control" placeholder="Fax" ID="AgencyFax" runat="server"></asp:TextBox>
                            </div>
                          </div>

                        </div>

                      </div>
                    </div>
                  </div>
                </div>

    <h4>Your Login Detail</h4>
                                <div class="row">

                          <div class="col-md-4 col-sm-12">  
                            <div class="form-group">
                              <label class="form-control-label style-font-label">UserName*
                              </label>
                                <asp:TextBox CssClass="form-control" placeholder="Your Username" ID="UserNameTextBox" runat="server"></asp:TextBox>
                            </div>
                          </div>


                        </div>



                            <div class="row">
                          <div class="col-md-4 col-sm-12">  
                            <div class="form-group">
                              <label class="form-control-label style-font-label">Password*
                              </label>
                                <asp:TextBox CssClass="form-control" placeholder="Your Password" TextMode="Password" ID="PasswordTextBox" runat="server"></asp:TextBox>
                                  <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="RegularExpressionValidator( Atleast 8 character, 1 UpperCase, 1 Lowercase, 1 Number)"  
        ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}$"  
        ControlToValidate="PasswordTextBox"></asp:RegularExpressionValidator>
                              
                            </div>
                          </div>
                          <div class="col-md-4 col-sm-12">  
                            <div class="form-group">
                              <label class="form-control-label style-font-label">Confirm Password*
                              </label>
                                <asp:TextBox CssClass="form-control" placeholder="Enter your password again in this field" TextMode="Password" ID="ConfirmPasswordTextBox" runat="server"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" 
        ControlToCompare="PasswordTextBox" ControlToValidate="ConfirmPasswordTextBox" ErrorMessage="Password Not Match">
    </asp:CompareValidator>
                            </div>
                          </div>

                        </div>
    <div class="row">
                            <div class="form-group">
                                                          <div class="col-md-4 col-sm-12">  

                              <label class="form-control-label style-font-label">Email*
                              </label>
                                <asp:TextBox CssClass="form-control" placeholder="Your email" TextMode="Email" ID="EmailTextbox" runat="server"></asp:TextBox>
                            </div>        </div>
        </div>



              <div align="center">             
        <asp:Button ID="SignUpButton" CssClass="submitButton" runat="server" Text="Sign Up" OnClick="SignUpButton_Click" style="height: 26px" />
                  </div> 
    <style type="text/css">
        .submitButton{
            border-bottom-color:#39f;
            background-color:#39f;
            text-align:right;
            position:absolute;
            color:white;
            align-content:center;
        }
        .submitButton:hover{
border:2px solid black;

        }
</style>
</asp:Content>
