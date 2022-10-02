<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="crudOwner.aspx.cs" Inherits="eSport.crudOwner" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    <link rel="stylesheet" href="../css/trophy.css"/>
    <title>E-Sports Teams</title>

    <style>
        .hide{
            display:none;
        }
    </style>
</head>
<body class="body">
    <div class="container">
        <div class="row">
            <div class="col">

                <form class="form" runat="server">
                    <h3 class="head">Owner</h3>
                    <br/>
                    <label for="troname">Owner Name</label><br/>
                    <asp:TextBox id="txtOwnerName" type="text" name="txtOwnerName" runat="server"/>
                    <asp:Label class="hide" ID="lb_teamID" runat="server"/>
                    <br/>
                     <label for="troname">Email</label><br/>
                    <asp:TextBox id="txtEmail" type="email" name="txtEmail" runat="server"/>
                    <br/>
                    <label for="image">Password</label><br/>
                    <asp:TextBox id="txtPassword" type="text" name="txtPassword" runat="server"/>
                    <br />
                    <asp:Label ID="lblError" runat="server"/>
                    <asp:button id="btnCreate" Text="CREATE" runat="server" OnClick="btnCreate_Click" />
                    <br/>
                    <asp:button id="btnEdit" runat="server" text="UPDATE" OnClick="btnEdit_Click"/>
                    <asp:button id="jj" runat="server" text="UPDATE" OnClick="jj_Click" />
                    <br/><br/>
            </div>
            <div class="col">
                <table class="table">
                    <thead class="table-light">
                        <tr>
                            <th scope="col">Owner Name</th>
                            <th scope="col">Email</th>
                            <th scope="col">Edit</th>

                        </tr>
                    </thead>
                    <asp:DataList ID="dl_teams" runat="server">
                        <ItemTemplate>
                            <tbody>
                        <tr>
                            <td><%#Eval("Name") %></td>
                            <td><%#Eval("Email") %></td>
                            <td>
                                <asp:Button ID="btnUpdate" class="btnUpdate" runat="server" Text="EDIT"  CommandArgument='<%#Eval("OwnerID") %>' OnClick="btnUpdate_Click"/>
                                <asp:Button ID="btnDelete"  class="btnDelete" runat="server" Text="Delete"  CommandArgument='<%#Eval("OwnerID") %>' OnClick="btnDelete_Click"/>
                            </td>
                        </tr>
                    </tbody>
                        </ItemTemplate>
                    </asp:DataList>
                    
                    
                </table>
            </div>
        </div>
    </div>
    </form>

</body>
</html>
