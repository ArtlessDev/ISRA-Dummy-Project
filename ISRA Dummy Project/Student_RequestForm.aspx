<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student_RequestForm.aspx.cs" Inherits="ISRA_Dummy_Project.Student_RequestForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="styles/nav.css" rel="stylesheet" />
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
                  <a class="nav-link" aria-current="page" href="Student_Search.aspx">View Requests</a>
                </li>
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="Student_RequestForm.aspx">New Request</a>
                  </li>
              </ul>
              <div class="d-flex">
                <a class="btn btn-outline-light" href="General_LandingPage.aspx">Logout</a>
              </div>
            </div>
          </div>
        </nav>
        <div class="container my-5 py-2" style="width: 1000px;">
            <div class="my-4">
                <asp:Button ID="btnReturn" runat="server" OnClick="btnReturn_Click" Text="Go Back" CssClass="btn btn-outline-danger"/>
            </div>
            <h4 class="mb-3 pt-3">Registration Form</h4>
            <div class="card p-4">
                <div class="d-flex justify-content-between">
                    <div id="actualForm" class="w-50" style="padding-right: 2rem;">
                        <!--Student Info-->
                        <div id="studentInfo" class="mb-5">
                            <p class="fw-bold mb-2">Student Info</p>
                            <div class="form-group mb-2">
                                <label>TUID</label>
                                <asp:TextBox ID="txtStudentId" runat="server" placeholder="Your TUID (9 digit starting with a 9)" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="d-flex mb-2">
                                <div class="form-group" style="padding-right: 0.5rem;">
                                    <label>First Name</label>
                                    <asp:TextBox ID="txtStudentFirst" runat="server" placeholder="First Name" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="form-group" style="padding-left: 0.5rem;">
                                    <label>Last Name</label>
                                    <asp:TextBox ID="txtStudentLast" runat="server" placeholder="Last Name" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group mb-2">
                                <label>Email</label>
                                <asp:TextBox ID="txtStudentEmail" runat="server" placeholder="Email" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="form-group mb-2">
                                <label>Major</label>
                                <asp:TextBox ID="txtStudentMajor" runat="server" placeholder="Major" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <!--URP Check-->
                        <div id="isURP" class="mb-5">
                            <p class="fw-bold mb-2">Is this for Undergraduate Research?</p>
                            <small class="text-secondary">URP students can work with Temple University faculty members on both Main Campus and the Health Sciences Campus to complete hands-on research in their particular field of interest.</small>
                            <asp:DropDownList ID="ddlIsURP" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlIsURP_SelectedIndexChanged" CssClass="d-block w-100 mt-2">
                                <asp:ListItem>No</asp:ListItem>
                                <asp:ListItem>Yes</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <!--Faculty Info-->
                        <div id="facultyInfo" class="mb-5">
                            <!--IS-->
                             <div id="ISFacultyInfo">
                                <p class="fw-bold mb-2">Faculty Info</p>
                                <div class="form-group mb-2">
                                    <label>Choose an Advisor to be registered by (CIS Faculty Advisor)</label>
                                    <asp:DropDownList ID="ddlAdvisor" runat="server" CssClass="d-block form-control">
                                        <asp:ListItem>sallyk@temple.edu</asp:ListItem>
                                        <asp:ListItem>dominic.letarte@temple.edu</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="form-group mb-1">
                                    <label>Grade Instructor (CIS Instructor)</label>
                                    <asp:TextBox ID="txtGradeInstructor" runat="server" placeholder="Enter Grade Instructor Email" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div id="profApproval" runat="server">
                                    <div class="form-group my-4">
                                        <label>Instructor's Approval Email Screenshot</label>
                                        <asp:FileUpload ID="fuApproval" runat="server" CssClass="d-block"/>
                                    </div>
                                    <span class="text-secondary d-block text-center mb-4">or</span>
                                    <div class="form-group mb-2">
                                        <label>Copy and paste Instructor's email (if necessary)</label>
                                        <textarea id="taApproval" cols="20" rows="5" class="d-block form-control" placeholder="Instructor's approval email"></textarea>
                                    </div>
                                </div>
                            </div>
                            <!--URP-->
                            <div id="URPFacultyInfo" runat="server" visible="false">
                                <div class="form-group mb-1">
                                    <div class="form-group mb-1">
                                        <label>Supervising Instructor, if applicable (Non-CIS Instructor)</label>
                                        <asp:TextBox ID="txtSupervisingInstructor" runat="server" placeholder="Enter Supervising Instructor Email" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group mt-2 mb-1">
                                    <label>Participating Instructor's Email, if applicable (Additional Instructor)</label>
                                    <asp:TextBox ID="txtParticipatinglInstructor" runat="server" placeholder="Enter Participating Instructor Email" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <!--Course Info-->
                        <div id="courseInfo" class="mb-5">
                            <p class="fw-bold mb-2">Course Info</p>
                            <div class="d-flex mb-2">
                                <div class="form-group w-50" style="padding-right: 0.5rem;">
                                    <label>Course Number</label>
                                    <asp:DropDownList ID="ddlCourseNumber" runat="server" CssClass="d-block form-control">
                                        <asp:ListItem>CIS 2082</asp:ListItem>
                                        <asp:ListItem>CIS 4083</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="form-group w-50" style="padding-left: 0.5rem;">
                                    <label>Course Number</label>
                                    <asp:DropDownList ID="ddlCredits" runat="server" CssClass="d-block form-control">
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="d-flex">
                                <div class="form-group w-50" style="padding-right: 0.5rem;">
                                    <label>Semester</label>
                                    <asp:DropDownList ID="ddlSemester" runat="server" CssClass="d-block form-control">
                                        <asp:ListItem>Spring</asp:ListItem>
                                        <asp:ListItem>Summer 1</asp:ListItem>
                                        <asp:ListItem>Summer 2</asp:ListItem>
                                        <asp:ListItem>Fall</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="form-group w-50" style="padding-left: 0.5rem;">
                                    <label>Semester Year</label>
                                    <asp:DropDownList ID="ddlYear" runat="server" CssClass="d-block form-control">
                                        <asp:ListItem>2023</asp:ListItem>
                                        <asp:ListItem>2024</asp:ListItem>
                                        <asp:ListItem>2025</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                         <!--Course Plan-->
                        <div id="coursePlan" class="mb-5">
                            <p class="fw-bold">Course Plan</p>
                            <div class="form-group">
                                <label>Description</label>
                                <textarea id="taCoursePlan" cols="20" rows="5" class="form-control d-block" placeholder="List Deliverables to be created"></textarea>
                            </div>
                        </div>
                        <!--Student Signature-->
                        <div id="signature">
                            <p class="fw-bold mb-2">Student Signature</p>
                            <div class="form-group">
                                <label>Full Name</label>
                                <asp:TextBox ID="txtSignature" runat="server" placeholder="Print Full First and Last Name" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <!--Submit button-->
                        <div class="d-grid gap-2 my-4">
                            <asp:Button ID="btnSubmit" runat="server" OnClick="btnComplete_Click" Text="Submit" CssClass="btn btn-danger"/>
                        </div>
                    </div>
                    <!--Requisite Info-->
                    <div id="reqInfo" class="w-50" style="padding-left: 2rem;">
                        <div id="preReq" runat="server">
                            <p class="fw-bold mb-2">Pre-requisite Info <i class="bi-info-circle-fill text-info"></i></p>
                            <div id="indStudyOne" class="card p-3">
                                <p class="fw-bold">CIS 2082 (Independent Study 1)</p>
                                <p>GPA Requirement: <small class="text-secondary">3.0</small></p>
                                <p>Pre-requisites: <small class="text-secondary">CIS 2168</small></p>
                                <p>Note: <small class="text-secondary">No CIS major credit, but counted in CIS major GPA</small></p>
                            </div>
                            <div id="indResearchTwo" class="card p-3">
                                <p class="fw-bold">CIS 3191 (Independent Research 2)</p>
                                <p>GPA Requirement: <small class="text-secondary">3.0</small></p>
                                <p>Pre-requisites: <small class="text-secondary">CIS 2168 & (3207 or 3223 or 3309)</small></p>
                                <p>Note: <small class="text-secondary">No CIS major credit, but counted in CIS major GPA</small></p>
                            </div>
                            <div id="directedReadingStudy" class="card p-3">
                                <p class="fw-bold">CIS 4083 (Directed Reading / Study)</p>
                                <p>GPA Requirement: <small class="text-secondary">3.0</small></p>
                                <p>Pre-requisites: <small class="text-secondary">CIS 2168 & (3207 or 3223 or 3309)</small></p>
                                <p>Note: <small class="text-secondary">No CIS major credit, but counted in CIS major GPA</small></p>
                            </div>
                            <div id="indStudy" class="card p-3">
                                <p class="fw-bold">CIS 4282 (Independent Study)</p>
                                <p>GPA Requirement: <small class="text-secondary">3.0</small></p>
                                <p>Pre-requisites: <small class="text-secondary">CIS 2168 & (3207 or 3223 or 3309)</small></p>
                                <p>Note: <small class="text-secondary">No CIS major credit, but counted in CIS major GPA</small></p>
                            </div>
                        </div>
                        <div id="eligibility" runat="server" visible="false">
                            <p class="fw-bold mb-2">Eligibility Info <i class="bi-info-circle-fill text-info"></i></p>
                            <div class="reqObj card p-3">
                                <p >Requirement 1:</p>
                                <small class="text-secondary">
                                    Current CST undergraduate Student
                                </small>
                            </div>
                            <div class="reqObj card p-3">
                                <p>Requirement 2:</p>
                                <small class="text-secondary">
                                    Overall GPA of 2.75 & CST GPA of 2.75 in all CST
                                    classes (retakes are included in CST GPA calculation.)
                                </small>
                            </div>
                            <div class="reqObj card p-3">
                                <p>Requirement 3:</p>
                                <small class="text-secondary">
                                    Successfully completed the appropriate level of mathematics for your 
                                    major (For a majority of majors that is MATH 1041/1941 Calculus I)
                                </small>
                            </div>
                            <div class="reqObj card p-3">
                                <p>Requirement 4:</p>
                                <small class="text-secondary">
                                    Completed two semesters in CST or if a transfer student, must have 
                                    successfully transferred 20 credits in science or math
                                </small>
                            </div>
                            <div class="reqObj card p-3">
                                <p>Requirement 5:</p>
                                <small class="text-secondary">
                                    Students can only participate in URP for a total of two semesters,
                                    only one of which can be summer. Students cannot do two summers of 
                                    URP
                                </small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>            
    </form>
</body>
</html>
