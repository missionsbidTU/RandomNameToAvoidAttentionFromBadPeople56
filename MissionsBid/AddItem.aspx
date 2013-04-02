<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="AddItem.aspx.vb" Inherits="MissionsBid.AddItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Item Name"></asp:Label>
    <br />
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Description"></asp:Label>
    <br />
    <asp:TextBox ID="TextBox2" runat="server" Height="202px" TextMode="MultiLine" 
        Width="499px"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Starting Price"></asp:Label>
    <br />
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" 
        Text="Set buyout price?" />
    <br />
    <asp:Label ID="Label4" runat="server" Text="Buyout Price" Visible="False"></asp:Label>
    <br />
    <asp:TextBox ID="TextBox4" runat="server" Visible="False"></asp:TextBox>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Submit" />
    <br />
</asp:Content>
