<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Register.aspx.vb" Inherits="MissionsBid.Register2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

        <br />
    <h1>CREATE NEW user ACCOUNT<asp:SqlDataSource ID="CreateUserDS" runat="server" 
            ConnectionString="<%$ ConnectionStrings:tygarciaConnectionString %>" 
            DeleteCommand="DeletePerson" DeleteCommandType="StoredProcedure" 
            InsertCommand="AddUser" InsertCommandType="StoredProcedure" 
            
            SelectCommand="SELECT first_name, last_name, username, password, address, email FROM Users" UpdateCommand="UpdateCellPhone" 
            UpdateCommandType="StoredProcedure">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="first_name" Type="String" />
            <asp:Parameter Name="last_name" Type="String" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="password" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="email" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="id" Type="Int32" />
            <asp:Parameter Name="cell_phone" Type="String" />
        </UpdateParameters>
        </asp:SqlDataSource>
    </h1>
        <p>If you are an Organization, click <a href= "OrgReg.aspx">here</a> to register.</p>
        <p>
            <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
            <asp:TextBox ID="firstnameTxtBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="firstnameValidator1" runat="server" 
                ControlToValidate="firstnameTxtBox" ErrorMessage="First name required" 
                ForeColor="Red"></asp:RequiredFieldValidator>
    </p>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
            <asp:TextBox ID="lastnameTxtBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="lastnameValidator2" runat="server" 
                ControlToValidate="lastnameTxtBox" ErrorMessage="Last name required" 
                ForeColor="#FF3300"></asp:RequiredFieldValidator>
    </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Username"></asp:Label>
&nbsp;<asp:TextBox ID="usernameTxtBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="usernameValidator3" runat="server" 
                ControlToValidate="usernameTxtBox" ErrorMessage="Username required" 
                ForeColor="#FF3300"></asp:RequiredFieldValidator>
    </p>
        <p>
            <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
&nbsp;
            <asp:TextBox ID="passwordTxtBox" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="passwordValidator4" runat="server" 
                ControlToValidate="passwordTxtBox" ErrorMessage="Password required" 
                ForeColor="#FF3300"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="passRegularExpressionValidator1" 
                runat="server" ControlToValidate="passwordTxtBox" 
                ErrorMessage="Password must contain: 5 letters/numbers" ForeColor="#FF3300" 
                ValidationExpression="^[a-zA-Z0-9]{5,}$"></asp:RegularExpressionValidator>
    </p>
        <p>
            <asp:Label ID="Label5" runat="server" Text="Address"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="addressTxtBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="addressValidator5" runat="server" 
                ControlToValidate="addressTxtBox" ErrorMessage="Address required" 
                ForeColor="#FF3300"></asp:RequiredFieldValidator>
    </p>
        <p>
            <asp:Label ID="Label6" runat="server" Text="Email"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="emailTxtBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="emailValidator6" runat="server" 
                ControlToValidate="emailTxtBox" ErrorMessage="Email required" 
                ForeColor="#FF3300"></asp:RequiredFieldValidator>
    </p>
        <p>
            Account Type&nbsp;&nbsp;
            <asp:DropDownList ID="acctType" runat="server">
                <asp:ListItem>Seller</asp:ListItem>
                <asp:ListItem>Organization</asp:ListItem>
            </asp:DropDownList>
    </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Create Account" />
    </p>
    <p>
    </p>
</asp:Content>
