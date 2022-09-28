<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pgLogin_admin.aspx.cs" Inherits="e_sport_trial.admin.pgLogin_admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    <link rel="stylesheet" href="../css/login.css"/>
    <title>E-Sports Auction</title>
</head>
<body class="body">
    <div class="container">
        <div class="main">
            <form class="form" id="form" runat="server">
                <h3 class="head">Player</h3>
                <br/>
                <label for="email">Email</label><br/>
                <asp:TextBox id="txtEmail" type="email" name="email" runat="server"/>
                <asp:Label ID="lblError_mail" runat="server"/>
                <br/>
                <label for="password">Password</label><br/>
                <asp:TextBox id="txtPassword"  type="password" name="password" runat="server"/>
                <asp:Label ID="lblError_pass" runat="server"/>
                <input id="show" type="checkbox"/><label class="check">Show Password</label>
                <br/><br/>
                <asp:Label ID="lblError" runat="server"/>
                <asp:button id="btnLogin" runat="server" Text="LOGIN"/>
                <br/>
                <asp:button id="btnCancel" runat="server" text="CANCEL"/>
                <br/><br/>
                <div class="link">
                    <label >E-Sports (pvt) Ltd.</label>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
