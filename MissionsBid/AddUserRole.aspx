<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="AddUserRole.aspx.vb" Inherits="MissionsBid.AddUserRole" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        Add User and Roles</p>
    <p>
        First Name:</p>
    <p>
        Last Name</p>
    <p>
        Username</p>
    <p>
        Password</p>
    <p>
        Email</p>
    <p>
        Address</p>
    <p>
        Select Roles<asp:CheckBoxList ID="CheckBoxList1" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="Description" 
            DataValueField="Description" Height="33px" RepeatColumns="3" 
            RepeatDirection="Horizontal" TextAlign="Left" Width="184px">
        </asp:CheckBoxList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:tygarciaConnectionString %>" 
            SelectCommand="SELECT [Description] FROM [Role]"></asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
</asp:Content>
