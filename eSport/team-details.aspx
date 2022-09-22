<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="team-details.aspx.cs" Inherits="eSport.team_details" %>

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
    <title>Team-Details</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <link rel="stylesheet" href="./styles/playerStyle.css">

    <style>
        table{
            margin-top: 20px;
            border-radius: 25px;
        }
        .team-name{
            display: block;
        }
    </style>
</head>

<body class="blur">
    
    <div class="banner">
        <img class="team-bg" src="./assets/rcb.png" alt="">
    </div>
    
    <div class="container-fluid team-content">
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
                        <a class="nav-link active text-light" aria-current="page" href="./admin.html">Home</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link text-light" href="#">Login </a>
                      </li>
                    </ul>
                  </div>
                </div>
              </nav>
        <div class="col currbal">
                <span class="balance team-name">RCB</span>
                CURRENT BALANCE
                <p class="balance">3,50,000 <span class="result">LKR</span></p>
        </div>
        <div class="col">
            <table class="table team-members">
                <thead class="thead-dark">
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">Player</th>
                    <th scope="col">Bought For</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th scope="row">1</th>
                    <td>Virat</td>
                    <td>50,000 LKR</td>
                  </tr>
                  <tr>
                    <th scope="row">2</th>
                    <td>ABD</td>
                    <td>50,000 LKR</td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>Maxwell</td>
                    <td>75,000 LKR</td>
                  </tr>
                  <tr>
                    <th scope="row">4</th>
                    <td>Maxwell</td>
                    <td>75,000 LKR</td>
                  </tr>
                  <tr>
                    <th scope="row">5</th>
                    <td>Maxwell</td>
                    <td>75,000 LKR</td>
                  </tr>
                  <tr>
                    <th scope="row">6</th>
                    <td>Maxwell</td>
                    <td>75,000 LKR</td>
                  </tr>
                  <tr>
                    <th scope="row">7</th>
                    <td>Maxwell</td>
                    <td>75,000 LKR</td>
                  </tr>
                  <tr>
                    <th scope="row">8</th>
                    <td>Maxwell</td>
                    <td>75,000 LKR</td>
                  </tr>
                  <tr>
                    <th scope="row">9</th>
                    <td>Maxwell</td>
                    <td>75,000 LKR</td>
                  </tr>
                  <tr>
                    <th scope="row">10</th>
                    <td>Maxwell</td>
                    <td>75,000 LKR</td>
                  </tr>
                  <tr>
                    <th scope="row">11</th>
                    <td>Maxwell</td>
                    <td>75,000 LKR</td>
                  </tr>
                </tbody>
              </table>
        </div>
        </div>
    </div>
</body>
</html>
    </form>
</body>
</html>
