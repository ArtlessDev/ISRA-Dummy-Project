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
            left: 0px;
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
                <asp:Button ID="btnAddUsers" runat="server" Text="Add Users" CssClass="add-user px-4 border-0 text-start fw-bold py-3 w-100" OnClick="btnAddUsers_Click"/>
                <asp:Button ID="btnEmailTemplate" runat="server" Text="Email Template" CssClass="px-4 border-0 text-start fw-bold py-3 w-100" OnClick="btnEmailTemplate_Click"/>
            </div>
            <div class="w-100 container my-5">
                <div id="addUsersView" runat="server" visible="true">
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
                            <asp:Button ID="add1" runat="server" Text="Add" OnClick="addbtn_Click" CssClass="btn btn-danger" />
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
                            <asp:Button ID="Button1" runat="server" Text="Add" OnClick="addbtn_Click" CssClass="btn btn-danger" />
                        </div>
                    </div>
                </div>
                <div id="emailTemplateView" runat="server" visible="false" class="d-flex my-5">
                    <div class="w-50" style="padding-right: 2rem;">
                        <h2 class="mb-5">Edit the Email Template</h2>
                        <div class="form-group">
                            <label>Subject</label>
                            <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control mb-2" Text="Request Form for"></asp:TextBox>
                            <label>Intro</label>
                            <textarea id="taIntro" cols="20" rows="5" class="form-control mb-2">We would like to inform you that your request form for CIS 2082 Independent Study submitted on Thursday, April 4th 2023 has been
                            </textarea>
                            <label>Additional Info</label>
                            <textarea id="taAdditional" cols="20" rows="5" class="form-control mb-2">Below you can see the information you have submitted. Please reach out to your faculty advisor if you have any further questions
                            </textarea>
                            <label>Ending</label>
                            <textarea id="taEnding" cols="20" rows="5" class="form-control mb-2">Thank you and have a great day,
                            </textarea>
                            <label>Who to contact</label>
                            <asp:TextBox ID="txtContact" runat="server" CssClass="form-control mb-2" Text="dominic.letarte@temple.edu"></asp:TextBox>
                        </div>
                        <div class="d-flex justify-content-end my-4"> 
                            <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-danger"/>
                        </div>
                    </div>
                    <div class="w-50" style="padding-left: 2rem;">
                        <h2 class="mb-5">Email Preview</h2>
                        <div>
                            <p><span class="fw-bold">Subject:</span> Request Form for &lt;application&gt; &lt;status&gt;</p>
                            <p>Hi &lt;student full name&gt;</p>
                            <p>
                                We would like to inform you that your request form for CIS 2082 Independent Study submitted on Thursday, April 4th 2023 has been &lt;status&gt;
                            </p>
                            <p><span class="fw-bold">Reason:</span> Due to the requirements for pre-reqs have not been met.</p>
                            <p>
                                Below you can see the information you have submitted. Please reach out to your faculty advisor if you have any further questions. 
                            </p>
                            <p>
                                <span class="d-block fw-bold">Student Info:</span>
                                <span class="d-block">Access net: &lt;student access net&gt;</span>
                                <span class="d-block">TUID: &lt;student tuid&gt;</span>
                                <span class="d-block">Full Name: &lt;student first and last&gt;</span>
                                <span class="d-block">Email: &lt;student email&gt;</span>
                                <span class="d-block">Major: &lt;student major&gt;</span>
                            </p>
                            <p>
                                <span class="d-block fw-bold">Faculty Info:</span>
                                <span class="d-block">Registered by: &lt;email of faculty registered by&gt;</span>
                                <span class="d-block">Grade Instructor: &lt;grade instructor email&gt;</span>
                            </p>
                            <p>
                                <span class="d-block fw-bold">Course Info:</span>
                                <span class="d-block">Course Requested: &lt;course number&gt;</span>
                                <span class="d-block">Credits: &lt;number of credits&gt;</span>
                                <span class="d-block">CRN: &lt;crn&gt;</span>
                                <span class="d-block">Section: &lt;section number&gt;</span>
                                <span class="d-block">Semester: &lt;semester and year&gt;</span>
                            </p>
                            <p>
                                <span class="d-block fw-bold">Course Plan:</span>
                                <span class="d-block">&lt;course plan&gt;</span>
                            </p>
                            <p class="fw-bold">If you have any questions, please reach out to Dominic via email: dominic.letarte@temple.edu</p>
                            <p>
                                <span class="d-block">Thank you and have a great day,</span>
                                <span class="d-block">Dominic Letarte</span>
                                <span class="d-block">dominic.letarte@temple.edu</span>
                            </p>
                        </div>
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
