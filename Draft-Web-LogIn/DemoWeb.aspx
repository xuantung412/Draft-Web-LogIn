<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DemoWeb.aspx.cs" Inherits="Draft_Web_LogIn.DemoWeb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
    <table>
       <tr>
           <td style="height: 245px">



<div>
<div>
    <asp:Image ID="Template1" runat="server" ImageUrl="~/DefaultImage.png" />
</div>
<div align="center">               
    <asp:Label ID="Template1Text" runat="server" Text="Template 1"></asp:Label>
</div>        
</div>
<div></div>


           </td>
           <td style="width: 40px; height: 245px;"></td>
           <td style="height: 245px">



<div>
<div>
    <asp:Image ID="Template2" runat="server" ImageUrl="~/DefaultImage.png" />
</div>
<div align="center">               
    <asp:Label ID="Template2Text" runat="server" Text="Template 2"></asp:Label>
</div> 
</div>
<div></div>

           </td>

           <td style="width: 40px; height: 245px;"></td>

           <td style="height: 245px">

<div>
<div>
    <asp:Image ID="Template3" runat="server" ImageUrl="~/DefaultImage.png" />
</div>
<div align="center">               
    <asp:Label ID="Template3Text" runat="server" Text="Template 3"></asp:Label>
</div> 
</div>
<div></div>
           </td>

        </tr>

        <tr>
             <td>

<div>
<div>
    <asp:Image ID="Template4" runat="server" ImageUrl="~/DefaultImage.png" />
</div>
<div align="center">               
    <asp:Label ID="Template4Label" runat="server" Text="Template 4"></asp:Label>
</div>                   
</div>
<div></div>


           </td>
           <td style="width: 40px"></td>
           <td>



<div>
<div>

    <asp:Image ID="Template5" runat="server" ImageUrl="~/DefaultImage.png" />
</div>
<div align="center">               
    <asp:Label ID="Template5Label" runat="server" Text="Template 5"></asp:Label>
</div> 
</div>



           </td>

           <td style="width: 40px"></td>

           <td>



<div>
                              <div>
    <asp:Image ID="Template6" runat="server" ImageUrl="~/DefaultImage.png" />
</div>
<div align="center">               
    <asp:Label ID="Template6Label" runat="server" Text="Template 6"></asp:Label>
</div> 
 </div>
           </td>

        </tr>
    </table>

</div>


</asp:Content>