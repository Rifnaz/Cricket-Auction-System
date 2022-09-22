<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="eSport.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <asp:TextBox ID="username" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="errUsername" runat="server" Text="Label">Fill email</asp:Label>
        <br />

        <asp:TextBox ID="password" runat="server"></asp:TextBox>
        <br />

        <asp:Label ID="errPassword" runat="server" Text="Label">Fill Password</asp:Label>
        <br />


        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />

        <asp:Label ID="errLogin" runat="server" Text="Label">Incorrect Password or Username</asp:Label>


    </form>
</body>
</html>
