<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student_RequestForm.aspx.cs" Inherits="ISRA_Dummy_Project.Student_RequestForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="nav.css" rel="stylesheet" />
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
        <!--need to add bootstrap-->
        <!--need to populate drop down lists with options-->
        <div>
            <asp:Button ID="btnReturn" runat="server" OnClick="btnReturn_Click" Text="Return to Landing Page" />
            <br/>
            <br/>
            <asp:Button ID="btnUrp" runat="server" OnClick="btnUrp_Click" Text="URP Form" />
        </div>
        <div id="studentInfo">
            <h4>Student Info</h4>
            TUID<br />
            <asp:TextBox ID="txtStudentId" runat="server"></asp:TextBox>
            <br />
            First Name<br />
            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
            <br />
            Last Name<br />
            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
            <br />
            Email<br />
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <br />
            Major<br />
            <asp:TextBox ID="txtMajor" runat="server"></asp:TextBox>
            <br />
            <br />
        </div>

        <div>
            Is this for Undergraduate Research?
            <!--INSERT BOOTSTRAP SWITCH-->
        </div>

        <div id="independentStudy">
            <div id="indStudyFacultyInfo">
                <h4>Faculty Info</h4>
                Choose a CIS Faculty Advisor <br />
                <asp:DropDownList ID="ddlInd_AdvisorEmail" runat="server"></asp:DropDownList>
                <br />Choose a CIS Instructor<br />
                <asp:DropDownList ID="ddlInd_CisEmail" runat="server"></asp:DropDownList>

                <div id="notListed">
                    <h5>Not Listed? <a href="">Add an Instructor</a></h5>
                </div>
            </div>

            <div id="preReqInfo">
                Pre-requisite Info
                <div id="indStudyOne">
                    <h4>CIS 2082 (Independent Study 1)</h4>
                    <p>GPA Requirement: 3.0</p>
                    <p>Pre-requisites: CIS 2168</p>
                    <p>Note: No CIS major credit, but counted in CIS major GPA</p>
                </div>
                <div id="indResearchTwo">
                    <h4>CIS 3191 (Independent Research 2)</h4>
                    <p>GPA Requirement: 3.0</p>
                    <p>Pre-requisites: CIS 2168 & (3207 or 3223 or 3309)</p>
                    <p>Note: No CIS major credit, but counted in CIS major GPA</p>
                </div>
                <div id="directedReadingStudy">
                    <h4>CIS 4083 (Directed Reading / Study)</h4>
                    <p>GPA Requirement: 3.0</p>
                    <p>Pre-requisites: CIS 2168 & (3207 or 3223 or 3309)</p>
                    <p>Note: No CIS major credit, but counted in CIS major GPA</p>
                </div>
                <div id="indStudy">
                    <h4>CIS 4282 (Independent Study)</h4>
                    <p>GPA Requirement: 3.0</p>
                    <p>Pre-requisites: CIS 2168 & (3207 or 3223 or 3309)</p>
                    <p>Note: No CIS major credit, but counted in CIS major GPA</p>
                </div>
            </div>
        </div>

        <div id="undergraduateResearchProgram">
            <div id="urpFacultyInfo">
                <h4>Faculty Info</h4>

                Choose a CIS Faculty Advisor <br />
                <asp:DropDownList ID="ddlUrp_AdvisorEmail" runat="server"></asp:DropDownList>
            
                <br />Choose a CIS Instructor<br />
                <asp:DropDownList ID="ddlUrp_CisEmail" runat="server"></asp:DropDownList>
                <div class="notListed">
                    <h5>Not Listed? <a href="">Add an Instructor</a></h5>
                </div>
                Non-CIS Instructor's Email (if applicable)<br />
                <asp:DropDownList ID="ddlUrp_NonCisEmail" runat="server"></asp:DropDownList>
                <div class="notListed">
                    <h5>Not Listed? <a href="">Add an Instructor</a></h5>
                </div>

                <br />Additional Instructor's Emails (if applicable)<br />
                <asp:TextBox ID="txtFacultyAdditionalInstructors" runat="server"></asp:TextBox>
                <div class="notListed">
                    <h5><a href="">Add an Instructor</a></h5>
                </div>
        
            </div>

            <div id="eligibilityInfo">
                <h4>Eligibility Info</h4>
                <div class="requirements">
                    <div class="reqObj">
                        <h5>Requirement 1:</h5>
                        <p>
                            Current CST undergraduate Student
                        </p>
                    </div>
                    <div class="reqObj">
                        <h5>Requirement 2:</h5>
                        <p>
                            Overall GPA of 2.75 & CST GPA of 2.75 in all CST
                            classes (retakes are included in CST GPA calculation.)
                        </p>
                    </div>
                    <div class="reqObj">
                        <h5>Requirement 3:</h5>
                        <p>
                            Successfully completed the appropriate level of mathematics for your 
                            major (For a majority of majors that is MATH 1041/1941 Calculus I)
                        </p>
                    </div>
                    <div class="reqObj">
                        <h5>Requirement 4:</h5>
                        <p>
                            Completed two semesters in CST or if a transfer student, must have 
                            successfully transferred 20 credits in science or math
                        </p>
                    </div>
                    <div class="reqObj">
                        <h5>Requirement 5:</h5>
                        <p>
                            Students can only participate in URP for a total of two semesters,
                            only one of which can be summer. Students cannot do two summers of 
                            URP
                        </p>
                    </div>
                </div>
            </div>
        </div>

        <div id="courseInfo">
            <h4>Course Info</h4>
            <!--There are 2 groups which are separated for the grid formation as per Figma design-->
            <div class="row">
                <div class="column">
                    Course Number <br />
                    <asp:DropDownList ID="ddlCourseNumber" runat="server"></asp:DropDownList>
                    <br/>Semester <br />
                    <asp:DropDownList ID="ddlSemester" runat="server"></asp:DropDownList>
                </div>
                <div class="column">
                    Number of Credits<br/>
                    <asp:DropDownList ID="ddlNumOfCredits" runat="server"></asp:DropDownList>
                    <br/>Semester Year<br/>
                    <asp:DropDownList ID="ddlSemesterYear" runat="server"></asp:DropDownList>
                </div>
            </div>

            <h4>Course Plan</h4>
            Description <br/>
            <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>
            <!--Need to resize the txtDescription-->

            <h4>Student Signature</h4>
            Full Name<br />
            <asp:TextBox ID="txtSignature" runat="server"></asp:TextBox>
        </div>

        <div>
            <asp:Button ID="btnComplete" runat="server" OnClick="btnComplete_Click" Text="Complete Form" />
        </div>            
    </form>
</body>
</html>
