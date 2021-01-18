<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LogoPhotoUpload.aspx.cs" Inherits="Draft_Web_LogIn.LogoPhotoUpload" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div align="center">
        <div>
                e<asp:Label ID="LogoPhotoUploadLabel" runat="server" Text="Logo Photo Upload" Font-Bold="True"></asp:Label>
        </div>
        <div>
                    <asp:Image ID="LogoImage" runat="server" Height="150px" ImageAlign="Middle" ImageUrl="~/DefaultImage.png" Width="250px" />
        </div>
        <div>            <asp:FileUpload ID="FileUploadControl" runat="server" />
</div>
        <div>
            <asp:Button ID="UploadButton" runat="server" Text="+Upload" />
        </div>
        <div>
                            <asp:Label ID="Required1" runat="server" Text="Maximum upload file size: 100kb" Font-Bold="True"></asp:Label>
            
        </div>
        <div>
                                        <asp:Label ID="Required2" runat="server" Text="Image file type allowed: jpg, jpeg, png, gif, svg" Font-Bold="True"></asp:Label>

        </div>
            </div>



        <div align="center">
            <asp:Label ID="Label1" runat="server" Text="By uploading, you agree to not upload any inappropriate image file."></asp:Label>
        </div>
        <div align="center">
                        <asp:Label ID="Label2" runat="server" Text="READY TO VIEW YOUR DEMO WEBSITE NOW?" Font-Bold="True"></asp:Label>
            </div>



            <div align="center">
<asp:Button ID="NoButton" runat="server" Text="No" Width="68px" />
                    <asp:Button ID="YesButton" runat="server" Text="Yes" Width="71px" OnClick="YesButton_Click" />

        </div>

</asp:Content>
