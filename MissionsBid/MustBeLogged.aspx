<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="MustBeLogged.aspx.vb" Inherits="MissionsBid.SellLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<meta http-equiv="Refresh" content="5; URL=/Account/Login.aspx">
    <p>
        You must be logged in to sell an item. Redirecting in 5 seconds.</p>
    <p>
        If the page does not reload, click
        <asp:LinkButton ID="LinkButton1" runat="server">here</asp:LinkButton>
    </p>
</asp:Content>
