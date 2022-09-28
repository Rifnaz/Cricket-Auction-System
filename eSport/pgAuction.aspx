<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pgAuction.aspx.cs" Inherits="e_sport_trial.admin.pgAuction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    <link rel="stylesheet" href="../css/auction.css"/>
    <title>E-Sports Auction</title>
</head>
<body class="body">
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="profilepic"></div>
                <h5>Name</h5>
                <p>Role</p>
            </div>
            <div class="col">
                <table>
                    <tr>
                        <td>Club :</td>
                        <td>Western cc</td>
                    </tr>
                    <tr>
                        <td>DOB :</td>
                        <td>11/17/2000</td>
                    </tr>
                    <tr>
                        <td>Arm Style :</td>
                        <td>Style1</td>
                    </tr>
                    <tr>
                        <td>Score :</td>
                        <td>150</td>
                    </tr>
                    <tr>
                        <td>Price :</td>
                        <td>$200</td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="row">
            <div class="col">
                <form class="form" id="form" runat="server">
                    <label for="bidprice">Bidding Price</label><br/>
                    <asp:TextBox id="txtPrice" type="price" name="bidprice" runat="server"/>
                    <asp:Label ID="lblError_price" runat="server"/>
                    <br/>
                    <label for="team">Team</label><br/>
                    <asp:TextBox id="txtTeam" type="text" name="team" runat="server"/>
                    <asp:Label ID="lblError_team" runat="server"/>
                    <br/><br/>
                    <asp:button id="btnSold" Text="SOLD" runat="server"/>
                    <br/>
                    <asp:button id="btnUnsold" Text="UNSOLD" runat="server"/>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
