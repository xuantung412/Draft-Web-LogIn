<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Draft_Web_LogIn._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="header">
            <h1>This is website for demonstration. Not a commercial website.</h1>
    </div>
    <div class="bodytext">
            <h2>Function included: User Registration, User Login, Update Personal Information, Template Selection, </h2>
    </div>
    <div class="buttonDiv">
        <h3><asp:LinkButton ID="ClickHereToStartButton" href="UserlogIn.aspx" runat="server">Click here to start.</asp:LinkButton></h3>
    </div>



<style type="text/css">
    .header{
        color:blue;
        text-align:center;
    }
    .bodytext{
        color:dodgerblue;
        text-align:center;
        font-size:smaller;
    }
    .buttonDiv{
        text-align:center;
        font-size:medium
    }

</style>
</asp:Content>
