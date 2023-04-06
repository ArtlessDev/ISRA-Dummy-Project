<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Advisor_Admin.aspx.cs" Inherits="ISRA_Dummy_Project.Advisor_Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="styles/nav.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <style>
        .sidebar {
            background: #F7F7F7;
            border-right: 1px solid #CED4DA;
            width: 300px;
        }

        .add-user {
            
            background: #D9D9D9;
        }

        #backgroundDim{
            position:fixed;
            height:100%;
            width:100%;
            top:0rem;
            left:0rem;
            background-color:black;
            opacity:50%;
        }

        #adminPanel{
            position:fixed;
            padding:2rem;
            margin:auto;
            top:50%;
            left:50%;
            width: 500px;
            transform: translate(-50%, -50%);
            background-color:white;
            border-radius:.5rem;
        }

    </style>
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
        <div class="d-flex">
            <div class="sidebar vh-100 position-relative top-0 pt-4">
                <!--Filter-->
                <button type="button" class="add-user px-4 border-0 text-start fw-bold py-3 w-100">Add Users</button>
            </div>
            <div class="w-100 container my-5">
                <div class="mb-5">
                    <h2>Admins</h2>
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th style="font-weight: bolder;">ID</th>
                                <th style="font-weight: bolder;">Email</th>
                                <th style="font-weight: bolder;">First</th>
                                <th style="font-weight: bolder;">Last</th>
                                <th style="font-weight: bolder;"></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="font-weight: bolder;">1</td>
                                <td>sallyk@temple.edu</td>
                                <td>Sally</td>
                                <td>K</td>
                                <td><a href="#" class="text-danger">Edit</a></td>
                            </tr>
                            <tr>
                                <td style="font-weight: bolder;">2</td>
                                <td>dom@temple.edu</td>
                                <td>Dominic</td>
                                <td>L</td>
                                <td><a href="#" class="text-danger">Edit</a></td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="d-flex justify-content-end">
                        <asp:Button ID="add1" runat="server" Text="Add" OnClick="addbtn_Click" CssClass="btn btn-danger"/>
                    </div>
                    
                </div>
                <div class="mb-5">
                    <h2>URP Coordinator</h2>
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th style="font-weight: bolder;">ID</th>
                                <th style="font-weight: bolder;">Email</th>
                                <th style="font-weight: bolder;">First</th>
                                <th style="font-weight: bolder;">Last</th>
                                <th style="font-weight: bolder;"></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td style="font-weight: bolder;">1</td>
                                <td>bf@temple.edu</td>
                                <td>Barbara</td>
                                <td>F</td>
                                <td><a href="#" class="text-danger">Edit</a></td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="d-flex justify-content-end">
                        <asp:Button ID="Button1" runat="server" Text="Add" OnClick="addbtn_Click" CssClass="btn btn-danger"/>
                    </div>
                </div>
            </div>
        </div>
        <div id="backgroundDim" visible="false" runat="server" onclick="undim()"></div>
        <div class="admin-panel form-group" id="adminPanel" runat="server" visible="false">
            <h5 class="mb-4">Add an admin</h5>
            <label for="email">Email:</label>
            <br />
            <input type="text" id="email" name="email" class="form-control" placeholder="Enter Email"/><br />
            <label for="fname">First Name:</label>
            <br />
            <input type="text" id="fname" name="fname" class="form-control" placeholder="Enter First Name"/><br />
            <label for="lname">Last Name:</label><br />
            <input type="text" id="lname" name="lname" class="form-control" placeholder="Enter Last Name"/><br />
            <div class="d-flex justify-content-end">
                <asp:Button ID="addminAdd" CssClass="btn btn-danger" runat="server" Text="Add" />
            </div>
        </div>
    </form>

    <script>

        function undim() {
            ap = document.getElementById("adminPanel");
            bd = document.getElementById("backgroundDim");

            ap.style.visibility = "hidden";
            bd.style.visibility = "hidden";
        }
    </script>
</body>
</html>
