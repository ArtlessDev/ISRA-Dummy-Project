<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Advisor_Admin.aspx.cs" Inherits="ISRA_Dummy_Project.Advisor_Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="styles/nav.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-lg navbar-dark">
          <div class="container-fluid">
            <a class="navbar-brand" href="#">ISRA</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                  <a class="nav-link" aria-current="page" href="Advisor_Search.aspx">View Requests</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link active" href="Advisor_Admin.aspx">Admin</a>
                </li>
              </ul>
              <div class="d-flex">
                <a class="btn btn-outline-light" href="General_LandingPage.aspx">Logout</a>
              </div>
            </div>
          </div>
        </nav>
        <div class="sideFilter position-fixed p-4 border-end bottom-0" style="top: 56px;">
            <!--Filter-->
            <div class="add-user">
                <button type="button">Add Users</button>
            </div>
        </div>
        <div>
            <h1>Admin dashboard for CIS Faculty Advisors</h1>
        </div>

        <div class="admins">
            <table>
                <tr>
                    <th>ID</th>
                    <th>Email</th>
                    <th>First</th>
                    <th>Last</th>
                </tr>
                <tr>
                    <th>1</th>
                    <th>sallyk@temple.edu</th>
                    <th>Sally</th>
                    <th>K</th>
                    <th><a href="#">Edit</a></th>
                </tr>
                <tr>
                    <th>2</th>
                    <th>dom@temple.edu</th>
                    <th>Dominic</th>
                    <th>L</th>
                    <th><a href="#">Edit</a></th>
                </tr>
            </table>
            <asp:Button ID="add1" runat="server" Text="Add" OnClick="addbtn_Click" />
        </div>
        <div class="urp-coordinator">
            <table>
                <tr>
                    <th>ID</th>
                    <th>Email</th>
                    <th>First</th>
                    <th>Last</th>
                </tr>
                <tr>
                    <th>1</th>
                    <th>bf@temple.edu</th>
                    <th>Barbara</th>
                    <th>F</th>
                    <th>Edit</th>
                </tr>
            </table>
            <asp:Button ID="add2" runat="server" Text="Add" OnClick="addbtn_Click" />

            <div class="admin-panel" id="adminPanel" runat="server" visible="false">
                <h1>Add an admin</h1>
                <label for="email">Email:</label>
                <input type="text" id="email" name="email" /><br />
                <label for="fname">First Name:</label>
                <input type="text" id="fname" name="fname" /><br />
                <label for="lname">Last Name:</label><br />
                <input type="text" id="lname" name="lname" /><br />
                <asp:Button ID="addminAdd" runat="server" Text="Add" />
            </div>
        </div>
        
    </form>
</body>
</html>
