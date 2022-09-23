<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="player-details.aspx.cs" Inherits="eSport.player_details" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Player-Details</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <link rel="stylesheet" href="./styles/playerStyle.css">

</head>

<style>
    .FadeAway{
        margin-top: -100px;
    }
</style>


<body class="blur">
    <div class="container-fluid">
        
        <div class="row">
            <nav class="navbar navbar-expand-lg">
                <div class="container-fluid">
                  <a class="navbar-brand text-light" href="#">E-SPORT PVT LTD</a>
                  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                  </button>
                  <div class="d-flex" id="navbarTogglerDemo02">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                      <li class="nav-item">
                        <a class="nav-link active text-light" aria-current="page" href="./players.html">Players</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link text-light" href="#">Login </a>
                      </li>
                    </ul>
                  </div>
                </div>
              </nav>
            <asp:DataList ID="DataList1" runat="server">
                <ItemTemplate>
                <div class="col">
           
                    <div class="FadeAway">
                        <img id="hero-img" src="./assets/virat.jpg" alt="" srcset="">
                    </div>
                </div>
                <div class="col">
                    <div class="dis-name">
                        Mahendra Singh Dhoni
                        <div class="row attributes">
                            <div class="col-12">Right Hand Batman</div>
                            <div class="col-12">Right Hand Fast</div>
                        </div>
                    </div>
                    <table>
                        <tr>
                            <td>Matches</td>
                            <td>Runs</td>
                            <td>Wickets</td>

                        </tr>
                        <tr>
                            <td class="result">35</td>
                            <td class="result">2587</td>
                            <td class="result">58</td>
                        </tr>
                    </table>
                    <input class="priceInput" placeholder="Rs.0000" type="number">
                    <button class="btn btn-warning">Set Base Price</button>
                </div>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
</body>
</html>
    </form>
</body>
</html>
