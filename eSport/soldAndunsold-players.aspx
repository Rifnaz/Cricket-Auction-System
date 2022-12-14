<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="soldAndunsold-players.aspx.cs" Inherits="eSport.soldAndunsold_players" %>

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
    <title>Player-Status</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
    <link rel="stylesheet" href="./styles/playerStyle.css">

   

    <style>
        table{
            margin-top: 40px;
        }
        .players{
            background-color: white;
        }
        tr, td {
            font-size: 20px;
            font-weight: 450;
            padding-top: 10px;
            padding-bottom: 20px;
            padding-left: 30px;
            padding-right: 40px;
            text-align: center;
        }
        .profile-pic{
            width: 40px;
            height: 40px;
            object-fit: cover;
            border-radius: 50%;
        }

    </style>
</head>

<body class="blur">
    <div class="banner">
        <img class="team-bg" src="./assets/ipl-banner.jpg" alt="">
    </div>
    <div class="container-fluid team-content">
       
        <div class="row">
        <div class="col">
            <nav class="navbar navbar-expand-lg">
                <div class="container-fluid">
                  <a class="navbar-brand text-light" href="#">E-SPORT PVT LTD</a>
                  <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                  </button>
                  <div class="d-flex" id="navbarTogglerDemo02">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                      <li class="nav-item">
                        <a class="nav-link active text-light" aria-current="page" href="#">Home</a>
                      </li>
                      <li class="nav-item">
                        <a class="nav-link text-light" href="#">Login </a>
                      </li>
                    </ul>
                  </div>
                </div>
              </nav>
            <table class="table players">
                <thead class="thead-dark">
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">Player</th>
                    <th scope="col">Name</th>
                    <th scope="col">Status</th>
                    <th scope="col">Team Name</th>
                    <th scope="col">Bought For</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th scope="row">1</th>
                    <td>
                        <div>
                            <img class="profile-pic" src="./assets/dhoni.jpg" alt="">
                        </div>
                    </td>
                    <td>Dhoni</td>
                    <td>
                        <span class="badge badge-warning">SOLD</span>
                    </td>
                    <td>CSK</td>
                    <td>50,000 LKR</td>
                  </tr>
                  <tr>
                    <th scope="row">1</th>
                    <td>
                        <div>
                            <img class="profile-pic" src="./assets/virat.jpg" alt="">
                        </div>
                    </td>
                    <td>Virat</td>
                    <td>
                        <span class="badge badge-danger">UNSOLD</span>
                    </td>
                    <td></td>
                    <td></td>
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
