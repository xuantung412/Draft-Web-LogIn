<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TemplateEcomercePage.aspx.cs" Inherits="Draft_Web_LogIn.DemoWeb" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <table>

       <tr>
           <td style="height: 245px">



<div>
<div>
    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/WebTemplateImage/Template1.png" OnClick="ImageButton1_Click" />
</div>
<div align="center">               
    <asp:LinkButton ID="Template1Button" runat="server" OnClick="Template1Button_Click">Template 1</asp:LinkButton>
</div>        
</div>
<div></div>


           </td>
           <td style="width: 40px; height: 245px;"></td>
           <td style="height: 245px">



<div>
<div>
    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/WebTemplateImage/Template2.png" />
</div>
<div align="center">               
    <asp:LinkButton ID="Template2Button" runat="server">Template 2</asp:LinkButton>
</div> 
</div>
<div></div>

           </td>

           <td style="width: 40px; height: 245px;"></td>

           <td style="height: 245px">

<div>
<div>
    <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/WebTemplateImage/Template3.png" />
</div>
<div align="center">               
    <asp:LinkButton ID="Template3Button" runat="server">Template 3</asp:LinkButton>
</div> 
</div>
<div></div>
           </td>

        </tr>

        <tr>
             <td>

<div>
<div>
    <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/WebTemplateImage/Template4.png" OnClick="ImageButton4_Click" />
</div>
<div align="center">               
    <asp:LinkButton ID="Template4Button" runat="server">Template 4</asp:LinkButton>
</div>                   
</div>
<div></div>


           </td>
           <td style="width: 40px"></td>
           <td>



<div>
<div>

    <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/WebTemplateImage/Template5.png" />
</div>
<div align="center">               
    <asp:LinkButton ID="Template5Button" runat="server">Template 5</asp:LinkButton>
</div> 
</div>



           </td>

           <td style="width: 40px"></td>

           <td>



<div>
                              <div>
                                  <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/WebTemplateImage/Template6.png" />
</div>
<div align="center">               
    <asp:LinkButton ID="Template6Button" runat="server">Template 6</asp:LinkButton>
</div> 
 </div>
           </td>

        </tr>
    </table>

</div>
    
<div>
    <asp:Panel ID="Panel1" runat="server" CssClass="modalpopup">
        <div align="center">
            <asp:Label ID="SampleTemplateLabel" runat="server" Text="Sample Template 1"></asp:Label>
        </div>
        <div align="center">
                        <asp:Image ID="ImageTemplate" runat="server" Height="886px" ImageUrl="~/WebTemplateImage/Template1.png" Width="1035px" />
        </div>
        <div align="center">
            <asp:Button ID="BackButton" runat="server" Text="Back" />
            <asp:Button ID="SelectThisTemplateButton" runat="server" Text="Select This Template" OnClick="SelectThisTemplateButton_Click" />
        </div>

    </asp:Panel>
    <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" runat="server" BackgroundCssClass="modalBackground" CancelControlID="BackButton" PopupControlID="Panel1" TargetControlID="ImageButton1"></ajaxToolkit:ModalPopupExtender>
    <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender6" runat="server" BackgroundCssClass="modalBackground" CancelControlID="BackButton" PopupControlID="Panel1" TargetControlID="Template1Button"></ajaxToolkit:ModalPopupExtender>
</div>

<div>
    <asp:Panel ID="Panel2" runat="server" CssClass="modalpopup">
        <div align="center">
            <asp:Label ID="Label1" runat="server" Text="Sample Template 2"></asp:Label>
        </div>
        <div align="center">
                        <asp:Image ID="Image1" runat="server" Height="886px" ImageUrl="~/WebTemplateImage/Template2.png" Width="1035px" />
        </div>
        <div align="center">
            <asp:Button ID="Button1" runat="server" Text="Back" />
            <asp:Button ID="Button2" runat="server" Text="Select This Template" OnClick="Button2_Click" />
        </div>

    </asp:Panel>
    <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender2" runat="server" BackgroundCssClass="modalBackground" CancelControlID="Button1" PopupControlID="Panel2" TargetControlID="ImageButton2"></ajaxToolkit:ModalPopupExtender>
    <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender3" runat="server" BackgroundCssClass="modalBackground" CancelControlID="Button1" PopupControlID="Panel2" TargetControlID="Template2Button"></ajaxToolkit:ModalPopupExtender>
</div>

    <div>
    <asp:Panel ID="Panel3" runat="server" CssClass="modalpopup">
        <div align="center">
            <asp:Label ID="Label2" runat="server" Text="Sample Template 3"></asp:Label>
        </div>
        <div align="center">
                        <asp:Image ID="Image2" runat="server" Height="886px" ImageUrl="~/WebTemplateImage/Template3.png" Width="1035px" />
        </div>
        <div align="center">
            <asp:Button ID="Button3" runat="server" Text="Back" />
            <asp:Button ID="Button4" runat="server" Text="Select This Template" OnClick="Button4_Click" />
        </div>

    </asp:Panel>
    <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender4" runat="server" BackgroundCssClass="modalBackground" CancelControlID="Button3" PopupControlID="Panel3" TargetControlID="ImageButton3"></ajaxToolkit:ModalPopupExtender>
    <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender5" runat="server" BackgroundCssClass="modalBackground" CancelControlID="Button3" PopupControlID="Panel3" TargetControlID="Template3Button"></ajaxToolkit:ModalPopupExtender>
</div>

    <div>
    <asp:Panel ID="Panel4" runat="server" CssClass="modalpopup">
        <div align="center">
            <asp:Label ID="Label3" runat="server" Text="Sample Template 4"></asp:Label>
        </div>
        <div align="center">
                        <asp:Image ID="Image3" runat="server" Height="886px" ImageUrl="~/WebTemplateImage/Template4.png" Width="1035px" />
        </div>
        <div align="center">
            <asp:Button ID="Button5" runat="server" Text="Back" />
            <asp:Button ID="Button6" runat="server" Text="Select This Template" OnClick="Button6_Click" />
        </div>
    </asp:Panel>
    <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender7" runat="server" BackgroundCssClass="modalBackground" CancelControlID="Button5" PopupControlID="Panel4" TargetControlID="ImageButton4"></ajaxToolkit:ModalPopupExtender>
    <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender8" runat="server" BackgroundCssClass="modalBackground" CancelControlID="Button5" PopupControlID="Panel4" TargetControlID="Template4Button"></ajaxToolkit:ModalPopupExtender>
</div>


    <div>
    <asp:Panel ID="Panel5" runat="server" CssClass="modalpopup">
        <div align="center">
            <asp:Label ID="Label4" runat="server" Text="Sample Template52"></asp:Label>
        </div>
        <div align="center">
                        <asp:Image ID="Image4" runat="server" Height="886px" ImageUrl="~/WebTemplateImage/Template5.png" Width="1035px" />
        </div>
        <div align="center">
            <asp:Button ID="Button7" runat="server" Text="Back" />
            <asp:Button ID="Button8" runat="server" Text="Select This Template" OnClick="Button8_Click" />
        </div>

    </asp:Panel>
    <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender9" runat="server" BackgroundCssClass="modalBackground" CancelControlID="Button7" PopupControlID="Panel5" TargetControlID="ImageButton5"></ajaxToolkit:ModalPopupExtender>
    <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender10" runat="server" BackgroundCssClass="modalBackground" CancelControlID="Button7" PopupControlID="Panel5" TargetControlID="Template5Button"></ajaxToolkit:ModalPopupExtender>
</div>

        <div>
    <asp:Panel ID="Panel6" runat="server" CssClass="modalpopup">
        <div align="center">
            <asp:Label ID="Label5" runat="server" Text="Sample Template6"></asp:Label>
        </div>
        <div align="center">
                        <asp:Image ID="Image5" runat="server" Height="886px" ImageUrl="~/WebTemplateImage/Template6.png" Width="1035px" />
        </div>
        <div align="center">
            <asp:Button ID="Button9" runat="server" Text="Back" />
            <asp:Button ID="Button10" runat="server" Text="Select This Template" OnClick="Button10_Click" />
        </div>

    </asp:Panel>
    <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender11" runat="server" BackgroundCssClass="modalBackground" CancelControlID="Button9" PopupControlID="Panel6" TargetControlID="ImageButton6"></ajaxToolkit:ModalPopupExtender>
    <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender12" runat="server" BackgroundCssClass="modalBackground" CancelControlID="Button9" PopupControlID="Panel6" TargetControlID="Template6Button"></ajaxToolkit:ModalPopupExtender>
</div>


    <style>
        .modalBackground {
            filter: alpha(opacity=90) opacity:0.6
        }

        .modalpopup {  
   
            background-color: lightblue;  
            text-align: center;
            position:relative;
            border:1px solid black;
        }
    </style>
    
</asp:Content>