<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Approval.aspx.vb" Inherits="MissionsBid.Approval" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <h1>Organization Applications<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:tygarciaConnectionString %>" 
                SelectCommand="SELECT [Name] FROM [OrganizationApplications]"></asp:SqlDataSource>
    </h1>
    <asp:Label ID="Label1" runat="server" Text="Choose an organization to review:"></asp:Label>
    <p>
        <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource1" 
            DataTextField="Name" DataValueField="Application_id" Height="166px" 
            Width="206px"></asp:ListBox>
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Organizations Mission Statement:"></asp:Label>
    </p>
    <p>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Application_id" 
            DataSourceID="SqlDataSource2" Height="158px" Width="291px">
            <EditItemTemplate>
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                Approval:
                <asp:TextBox ID="ApprovalTextBox" runat="server" 
                    Text='<%# Bind("Approval") %>' />
                <br />
                Mission_Statement:
                <asp:TextBox ID="Mission_StatementTextBox" runat="server" 
                    Text='<%# Bind("Mission_Statement") %>' />
                <br />
                Phone_Number:
                <asp:TextBox ID="Phone_NumberTextBox" runat="server" 
                    Text='<%# Bind("Phone_Number") %>' />
                <br />
                Email:
                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                Application_id:
                <asp:Label ID="Application_idLabel1" runat="server" 
                    Text='<%# Eval("Application_id") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                    CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Name:
                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                <br />
                Approval:
                <asp:TextBox ID="ApprovalTextBox" runat="server" 
                    Text='<%# Bind("Approval") %>' />
                <br />
                Mission_Statement:
                <asp:TextBox ID="Mission_StatementTextBox" runat="server" 
                    Text='<%# Bind("Mission_Statement") %>' />
                <br />
                Phone_Number:
                <asp:TextBox ID="Phone_NumberTextBox" runat="server" 
                    Text='<%# Bind("Phone_Number") %>' />
                <br />
                Email:
                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                    CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                    CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Name:&nbsp;<asp:Label ID="NameLabel" runat="server" 
                    Text='<%# Bind("Name") %>' />
                <br />
                Approval:
                <asp:Label ID="ApprovalLabel" runat="server" Text='<%# Bind("Approval") %>' />
                <br />
                Mission_Statement:
                <asp:Label ID="Mission_StatementLabel" runat="server" 
                    Text='<%# Bind("Mission_Statement") %>' />
                <br />
                Phone_Number:
                <asp:Label ID="Phone_NumberLabel" runat="server" 
                    Text='<%# Bind("Phone_Number") %>' />
                <br />
                Email:
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                Application_id:
                <asp:Label ID="Application_idLabel" runat="server" 
                    Text='<%# Eval("Application_id") %>' />
                <br />

            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:tygarciaConnectionString %>" 
            SelectCommand="SELECT [Name], [Approval], [Mission_Statement], [Phone_Number], [Email], [Application_id] FROM [OrganizationApplications]">
        </asp:SqlDataSource>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>
