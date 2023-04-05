<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Advisor_Admin.aspx.cs" Inherits="ISRA_Dummy_Project.Advisor_Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="styles/nav.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <style>
        .sidebar {
            box-sizing: border-box;
            position: absolute;
            width: 308px;
            height: 924px;
            left: 0px;
            top: 58px;
            background: #F7F7F7;
            border-right: 1px solid #CED4DA;
        }

        .add-user {
            position: absolute;
            width: 308px;
            height: 51px;
            left: 0px;
            top: 1rem;
            border: none;
            text-align: left;
            font-weight: bolder;
            background: #D9D9D9;
        }

        tr {
            border-top: 2px solid #F2F2F2;
            border-bottom: 2px solid #F2F2F2;
        }

        .admins {
            position: absolute;
            width: 622px;
            height: 199px;
            left: 445px;
            top: 7rem;
        }

        .urp-coordinator {
            position: absolute;
            width: 622px;
            height: 199px;
            left: 445px;
            top: 25rem;
        }

        th {
            font-weight: normal;
        }

            th a {
                color: red;
            }

                th a:hover {
                    color: darkred;
                }

        .butt {
            position:absolute;
            background: #B02A37;
            color:white;
            border:none;
            padding:.75rem;
            padding-top:.25rem;
            padding-bottom:.25rem;
            border-radius:.2rem;

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
        <div class="sidebar">
            <!--Filter-->
            <button type="button" class="add-user">Add Users</button>
        </div>

        <div class="admins">
            <h2>Admins</h2>
            <table class="table table-striped">
                <tr />
                <tr>
                    <th style="font-weight: bolder;">ID</th>
                    <th style="font-weight: bolder;">Email</th>
                    <th style="font-weight: bolder;">First</th>
                    <th style="font-weight: bolder;">Last</th>
                </tr>
                <tr>
                    <th style="font-weight: bolder;">1</th>
                    <th>sallyk@temple.edu</th>
                    <th>Sally</th>
                    <th>K</th>
                    <th><a href="#">Edit</a></th>
                </tr>
                <tr>
                    <th style="font-weight: bolder;">2</th>
                    <th>dom@temple.edu</th>
                    <th>Dominic</th>
                    <th>L</th>
                    <th><a href="#">Edit</a></th>
                </tr>
            </table>
            <asp:Button ID="add1" CssClass="butt" runat="server" Text="Add" OnClick="addbtn_Click" />
        </div>
        <div class="urp-coordinator">
            <h2>URP Coordinator</h2>
            <table class="table table-striped">
                <tr />
                <tr>
                    <th style="font-weight: bolder;">ID</th>
                    <th style="font-weight: bolder;">Email</th>
                    <th style="font-weight: bolder;">First</th>
                    <th style="font-weight: bolder;">Last</th>
                </tr>
                <tr>
                    <th style="font-weight: bolder;">1</th>
                    <th>bf@temple.edu</th>
                    <th>Barbara</th>
                    <th>F</th>
                    <th><a href="#">Edit</a></th>
                </tr>
            </table>
            <asp:Button ID="add2" CssClass="butt" runat="server" Text="Add" OnClick="addbtn_Click" />
            <div id="backgroundDim" visible="false" runat="server" onclick="undim()"></div>
            <div class="admin-panel" id="adminPanel" runat="server" visible="false">
                <h1>Add an admin</h1>
                <label for="email">Email:</label>
                <br />
                <input type="text" id="email" name="email" /><br />
                <label for="fname">First Name:</label>
                <br />
                <input type="text" id="fname" name="fname" /><br />
                <label for="lname">Last Name:</label><br />
                <input type="text" id="lname" name="lname" /><br />
                <br />
                <asp:Button ID="addminAdd" CssClass="butt" runat="server" Text="Add" />
                <br />
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
