<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pgRegister.aspx.cs" Inherits="e_sport_trial.player.pgRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    <link rel="stylesheet" href="../css/register.css"/>
    <title>E-Sports Auction</title>
</head>
<body class="body">
    <div class="container">
        <form class="form" id="form" runat="server">
            <div class="heading">
                <h3 class="head">Registration</h3>
            </div>
            <div class="row">
                <div class="col">
                    <label for="firstname">First Name</label><br/>
                    <asp:TextBox type="name" name="firstname" id="txtFirst" runat="server"/><br />
                    <asp:Label ID="lblError_first" CssClass="errors" runat="server"/>
                </div> 
                <div class="col">   
                    <label for="lastname">Last Name</label><br/>
                    <asp:TextBox type="name" name="lastname" id="txtLast" runat="server"/><br />
                    <asp:Label ID="lblError_last" CssClass="errors" runat="server"/>
                </div>
            </div>
            
            <div class="row">
                <div class="col">
                    <label for="email">Email</label><br/>
                    <asp:TextBox type="email" name="email" id="txtEmail" runat="server"/><br />
                    <asp:Label ID="lblError_mail" CssClass="errors" runat="server"/>
                </div>
                <div class="col">
                    <label for="dob">Data of Birth</label><br/>
                    <asp:TextBox id="txtDob" runat="server" placeholder="mm/dd/yyyy" Textmode="Date"/><br />
                    <asp:Label ID="lblError_dob" CssClass="errors" runat="server"/>
                </div>
            </div>
            
            <div class="row">
                <div class="col">
                    <label for="role">Role</label><br/>
                    <asp:DropDownList id="dplRole" runat="server"  Enabled="true"  AutoPostBack="false">
                        <asp:ListItem>Wicket Keeper</asp:ListItem>
                        <asp:ListItem>Bowler</asp:ListItem>
                        <asp:ListItem>Batsman</asp:ListItem>
                        <asp:ListItem>All rounder</asp:ListItem>
                    </asp:DropDownList><br />
                    <asp:Label ID="lblError_role" CssClass="errors" runat="server"/>
                </div>
                <div class="col">
                    <label for="match">Matches</label><br/>
                    <asp:TextBox type="number" name="match" id="txtmatch" runat="server"/><br />
                    <asp:Label ID="lblError_match" CssClass="errors" runat="server"/>
                </div>
            </div>
            
            <div class="row">
                <div class="col">
                    <label for="runs">Runs</label><br/>
                    <asp:TextBox type="number" name="runs" id="txtRuns" runat="server"/><br />
                    <asp:Label ID="lblError_runs" CssClass="errors" runat="server"/>
                </div>
                <div class="col">
                    <label for="wickets">Wickets</label><br/>
                    <asp:TextBox type="number" name="wickets" id="txtWickets" runat="server"/><br />
                    <asp:Label ID="lblError_wickets" CssClass="errors" runat="server"/>
                </div>
            </div>
            
            <div class="row">
                <div class="col">
                    <label for="arm">Arm Style</label><br/>
                    <asp:DropDownList id="dplArm" runat="server"  Enabled="true"  AutoPostBack="false">
                        <asp:ListItem>Right</asp:ListItem>
                        <asp:ListItem>Left</asp:ListItem>
                    </asp:DropDownList><br />
                    <asp:Label ID="lblError_arm" CssClass="errors" runat="server"/>
                </div>
                <div class="col">
                    <label for="image">Picture</label><br/>
                    <asp:FileUpload ID="FileUpload1" runat="server" /><br />
                    <asp:Label ID="lblError_image" CssClass="errors" runat="server"/>
                </div>
            </div>

            <div class="row">
                <div class="col">
                    <label for="password">Password</label><br/>
                    <asp:TextBox id="txtPassword" type="password" name="password"  runat="server"/><br />
                    <asp:Label ID="lblError_pass" CssClass="errors" runat="server"/>
                </div>
                <div class="col">  
                    <label for="conpassword">Confirm Password</label><br/>
                    <asp:TextBox  id="txtConpass"  type="password" name="conpassword" runat="server"/><br />
                    <asp:Label ID="lblError_conpass" CssClass="errors" runat="server"/>
                </div>
            </div>

                <input id="show" type="checkbox"/><label class="check">Show Password</label>
                <br/>
                <asp:Label ID="lblError" CssClass="errors" runat="server"/>
                <asp:button id="btnRegister" Text="REGISTER" runat="server" OnClick="btnRegister_Click"/>
                <br/>
                <asp:button id="btnCancel" Text="CANCEL" runat="server"/>
                <br/><br/>
            <div class="link">
                <label >Already have an account</label><br/>
                <a href="pgLogin.aspx">Update here</a>
            </div>
        </form>
    </div>
    <script src="../js/register.js"></script>
</body>
</html>
