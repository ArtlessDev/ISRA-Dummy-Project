<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Advisor_RequestDetails.aspx.cs" Inherits="ISRA_Dummy_Project.Advisor_RequestDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="styles/nav.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
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
                  <a class="nav-link active" aria-current="page" href="Advisor_Search.aspx">View Requests</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="Advisor_Admin.aspx">Admin</a>
                </li>
              </ul>
              <div class="d-flex">
                <a class="btn btn-outline-light" href="General_LandingPage.aspx">Logout</a>
              </div>
            </div>
          </div>
        </nav>
        <div class="container my-5 py-2" style="width: 1000px;">
            <div class="mt-4 mb-2">
                <asp:Button ID="btnReturn" runat="server" Text="Go Back" CssClass="btn btn-outline-danger"/>
            </div>
            <div class="d-flex">
                <!--Request Info-->
                <div class="w-50" style="padding-right: 2rem;">
                    <div class="d-flex align-items-center">
                        <h4 class="mb-3 pt-3" style="padding-right: 0.5rem;">Registration Form (#23)</h4>
                        <span class="badge bg-dark">Independent Study</span>
                    </div>
                    <p class="text-secondary">Submitted on: Thursday, April 4th 2023</p>
                    <div class="my-5">
                        <p class="fw-bold mb-2">Student Info</p>
                        <ul class="list-group">
                            <li class="list-group-item d-flex justify-content-between bg-light"><span>Access Net: </span><span class="text-secondary">tun22982</span></li>
                          <li class="list-group-item d-flex justify-content-between bg-light"><span>TUID: </span><span class="text-secondary">938479850</span></li>
                          <li class="list-group-item d-flex justify-content-between bg-light"><span>Full Name: </span><span class="text-secondary">Kevin Nguyen</span></li>
                          <li class="list-group-item d-flex justify-content-between bg-light"><span>Email: </span><span class="text-secondary">kevin.nguyen@temple.edu</span></li>
                          <li class="list-group-item d-flex justify-content-between bg-light"><span>Major: </span><span class="text-secondary">Computer Science</span></li>
                        </ul>
                    </div>
                    <div class="my-5">
                        <p class="fw-bold mb-2">Faculty Info</p>
                        <ul class="list-group">
                          <li class="list-group-item d-flex justify-content-between bg-light"><span>Registered by: </span><span class="text-secondary">sallyk@temple.edu</span></li>
                          <li class="list-group-item d-flex justify-content-between bg-light"><span>Grade Instructor: </span><span class="text-secondary">cpascucci@temple.edu</span></li>
                            <li class="list-group-item bg-light">
                                <span>Instructor Approval Screenshot: </span>
                                <div class="p-3">
                                    <img src="images/prof_approval.PNG" class="w-100"/>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="my-5">
                        <p class="fw-bold mb-2">Course Info</p>
                        <ul class="list-group">
                          <li class="list-group-item d-flex justify-content-between bg-light"><span>Course Requested: </span><span class="text-secondary">CIS 2082</span></li>
                          <li class="list-group-item d-flex justify-content-between bg-light"><span>Credits: </span><span class="text-secondary">4</span></li>
                          <li class="list-group-item d-flex justify-content-between bg-light"><span>Semester: </span><span class="text-secondary">Fall 2023</span></li>
                        </ul>
                    </div>
                    <div class="my-5">
                        <p class="fw-bold mb-2">Course Plan</p>
                        <textarea id="taCoursePlan" cols="20" rows="5" class="card form-control bg-light">
                        Chat GPT-5:
                        I will create GPT-5 from scratch using C
                        This artificial intelligence will be able to:
                        recognize the emotion you’re currently feeling
                        become your friend
                        output “hello world” to the console</textarea>
                    </div>
                </div>
                <!--Status Info-->
                <div class="w-50" style="padding-left: 2rem;">
                    <div class="form-group mb-4">
                        <p class="fw-bold mb-2">Register Student</p>
                        <label>CRN</label>
                        <asp:TextBox ID="txtCRN" runat="server" CssClass="form-control mb-2" placeholder="Enter CRN"></asp:TextBox>
                        <label>Section</label>
                        <asp:TextBox ID="txtSection" runat="server" CssClass="form-control" placeholder="Enter a section number"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <p class="fw-bold mb-2">Status</p> 
                        <asp:DropDownList ID="ddlRequestedByStudent" runat="server" CssClass="form-control mb-2">
                            <asp:ListItem>Denied</asp:ListItem>
                            <asp:ListItem>Pending</asp:ListItem>
                            <asp:ListItem>Completed</asp:ListItem>
                        </asp:DropDownList>
                        <div class="d-flex flex-column">
                            <label>Reason for status (if necessary)</label>
                            <textarea id="taStatusReason" cols="20" rows="5" placeholder="Include more information why this status was chosen" class="form-control"></textarea>
                        </div>
                    </div>
                    <div class="d-grid gap-2 my-4">
                        <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn btn-danger"/>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
