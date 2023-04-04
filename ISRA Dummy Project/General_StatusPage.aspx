<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="General_StatusPage.aspx.cs" Inherits="ISRA_Dummy_Project.General_StatusPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="nav.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
    <link rel="stylesheet" href="styles/global.css"/>
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
                  <a class="nav-link active" aria-current="page" href="FacultyMember_Search.aspx">View Requests</a>
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
                          <li class="list-group-item d-flex justify-content-between bg-light"><span>TUID: </span><span class="text-secondary">938479850</span></li>
                          <li class="list-group-item d-flex justify-content-between bg-light"><span>Full Name: </span><span class="text-secondary">Kevin Nguyen</span></li>
                          <li class="list-group-item d-flex justify-content-between bg-light"><span>Email: </span><span class="text-secondary">kevin.nguyen@temple.edu</span></li>
                          <li class="list-group-item d-flex justify-content-between bg-light"><span>Major: </span><span class="text-secondary">Computer Science</span></li>
                        </ul>
                    </div>
                    <div class="my-5">
                        <p class="fw-bold mb-2">Faculty Info</p>
                        <ul class="list-group">
                          <li class="list-group-item d-flex justify-content-between bg-light"><span>CIS Faculty Advisor: </span><span class="text-secondary">sallyk@temple.edu</span></li>
                          <li class="list-group-item d-flex justify-content-between bg-light"><span>CIS Instructor: </span><span class="text-secondary">cpascucci@temple.edu</span></li>
                        </ul>
                    </div>
                    <div class="my-5">
                        <p class="fw-bold mb-2">Course Info</p>
                        <ul class="list-group">
                          <li class="list-group-item d-flex justify-content-between bg-light"><span>Course Requested: </span><span class="text-secondary">CIS 2082</span></li>
                          <li class="list-group-item d-flex justify-content-between bg-light"><span>Credits: </span><span class="text-secondary">4</span></li>
                          <li class="list-group-item d-flex justify-content-between bg-light"><span>CRN: </span><span class="text-secondary">90210</span></li>
                          <li class="list-group-item d-flex justify-content-between bg-light"><span>Section: </span><span class="text-secondary">1</span></li>
                          <li class="list-group-item d-flex justify-content-between bg-light"><span>Semester: </span><span class="text-secondary">Fall 2023</span></li>
                        </ul>
                    </div>
                    <div class="my-5">
                        <p class="fw-bold mb-2">Course Info</p>
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
                    <div class="d-flex align-items-center mb-5">
                        <div class="bg-danger p-1 rounded-circle d-flex justify-content-center" style="width: 40px; height: 40px;"><i class="bi-file-earmark-text text-white"></i></div>
                        <div style="height: 7px; width: 25%; margin-right: 1rem; margin-left: 1rem;" class="bg-danger">
                            <small class="text-center d-block m-2">Submitted</small>
                        </div>
                        <div class="bg-danger p-1 rounded-circle d-flex justify-content-center align-items-center" style="width: 90px; height: 90px;"><i class="bi-dot text-white"></i><i class="bi-dot text-white"></i><i class="bi-dot text-white"></i></div>
                        <div style="height: 7px; width: 25%; margin-right: 1rem; margin-left: 1rem; background: #e8a9af;">
                            <small class="text-center d-block mt-2 text-secondary">Approved</small>
                        </div>
                        <div class="p-1 rounded-circle d-flex justify-content-center" style="width: 40px; height: 40px; background: #e8a9af;"><i class="bi-check text-white"></i></div>
                    </div>
                    <div class="d-flex align-items-center mb-2">
                        <p class="fw-bold" style="padding-right: 0.75rem;">Status:</p><span class="text-danger">PENDING</spa>
                    </div>
                    <small class="text-secondary">
                        This request is currently waiting for the grade professor to (cpascucci@temple.edu) to agree to send a grade and summary of work to the registration professor
                    </small>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
