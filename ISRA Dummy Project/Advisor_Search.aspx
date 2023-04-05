<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Advisor_Search.aspx.cs" Inherits="ISRA_Dummy_Project.Advisor_Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="styles/nav.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="styles/global.css"/>
    <link rel="stylesheet" href="styles/search.css"/>
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
                  <a class="nav-link active" aria-current="page" href="Student_Search.aspx">View Requests</a>
                </li>
                  <li class="nav-item">
                    <a class="nav-link" aria-current="page" href="Student_RequestForm.aspx">New Request</a>
                  </li>
              </ul>
              <div class="d-flex">
                <a class="btn btn-outline-light" href="General_LandingPage.aspx">Logout</a>
              </div>
            </div>
          </div>
        </nav>
        <!--Side Filter-->
        <div class="sideFilter position-fixed p-4 border-end bottom-0" style="top: 56px;">
            <!--Filter-->
            <div id="filter" class="mb-5 pt-3">
                <p class="fw-bold mb-4">Filter by: </p>
                <div class="form-group mb-2">
                    <label>Application Type</label>
                    <asp:DropDownList ID="ddlAppType" runat="server" CssClass="form-control">
                        <asp:ListItem>Any</asp:ListItem>
                        <asp:ListItem>Independent Study</asp:ListItem>
                        <asp:ListItem>Undergraduate Research</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group mb-2">
                    <label>Course</label>
                    <asp:DropDownList ID="ddlCourse" runat="server" CssClass="form-control">
                        <asp:ListItem>Any</asp:ListItem>
                        <asp:ListItem>CIS 2082</asp:ListItem>
                        <asp:ListItem>CIS 4083</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group mb-2">
                    <label>Semester</label>
                    <asp:DropDownList ID="ddlSemester" runat="server" CssClass="form-control">
                        <asp:ListItem>Any</asp:ListItem>
                        <asp:ListItem>Fall</asp:ListItem>
                        <asp:ListItem>Spring</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group mb-2">
                    <label>Registered By</label>
                    <asp:DropDownList ID="ddlRegisteredBy" runat="server" CssClass="form-control">
                        <asp:ListItem>Any</asp:ListItem>
                        <asp:ListItem>sallyk@temple.edu</asp:ListItem>
                        <asp:ListItem>dominic.letarte@temple.edu</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group mb-2">
                    <label>Status</label>
                    <asp:DropDownList ID="ddlAppStatus" runat="server" CssClass="form-control">
                        <asp:ListItem>Any</asp:ListItem>
                        <asp:ListItem>Requested</asp:ListItem>
                        <asp:ListItem>Pending</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <!--Sort-->
            <div class="sort">
                <p class="fw-bold mb-4">Sort by: </p>
                <div class="form-check form-switch">
                    <label class="form-check-label">Alphabetical (name)</label>
                    <input class="form-check-input" type="checkbox">
                </div>
                <div class="form-check form-switch">
                    <label>Newest to oldest</label>
                    <input class="form-check-input" type="checkbox">
                </div>
                <div class="form-check form-switch">
                    <label>Oldest to newest</label>
                    <input class="form-check-input" type="checkbox">
                </div>
            </div>
        </div>
        <!--Results-->
        <div id="results" class="container my-5">
            <h3 class="mb-4">Results (4)</h3>
            <div class="d-flex align-items-center justify-content-between py-3 border-bottom">
                <div class="d-flex">
                    <div style="padding-right: 1.5rem;">
                        <img src="images/study.PNG" width="70"/>
                    </div>
                    <div>
                        <div class="d-flex">
                            <p class="fw-bold" style="padding-right: 0.5rem;">Kevin Nguyen</p>
                            <span class="badge bg-dark">Independent Study</span>
                        </div>
                        <small class="text-secondary">CIS 2082 | Fall 2023</small>
                        <small class="text-danger d-block">PENDING</small>
                    </div>
                </div>
                <asp:Button ID="btnView" runat="server" Text="View Request" CssClass="btn btn-danger"/>
            </div>
            <div class="d-flex align-items-center justify-content-between py-3 border-bottom">
                <div class="d-flex">
                    <div style="padding-right: 1.5rem;">
                        <img src="images/study.PNG" width="70"/>
                    </div>
                    <div>
                        <div class="d-flex">
                            <p class="fw-bold" style="padding-right: 0.5rem;">Angelica Kim</p>
                            <span class="badge bg-dark">Independent Study</span>
                        </div>
                        <small class="text-secondary">CIS 2082 | Fall 2023</small>
                        <small class="text-success d-block">COMPLETED</small>
                    </div>
                </div>
                <asp:Button ID="Button1" runat="server" Text="View Request" CssClass="btn btn-danger"/>
            </div>
            <div class="d-flex align-items-center justify-content-between py-3 border-bottom">
                <div class="d-flex">
                    <div style="padding-right: 1.5rem;">
                        <img src="images/research.PNG" width="70"/>
                    </div>
                    <div>
                        <div class="d-flex">
                            <p class="fw-bold" style="padding-right: 0.5rem;">Brian Jang</p>
                            <span class="badge bg-primary">Undergraduate Research</span>
                        </div>
                        <small class="text-secondary">CIS 2082 | Fall 2023</small>
                        <small class="text-danger d-block">PENDING</small>
                    </div>
                </div>
                <asp:Button ID="Button2" runat="server" Text="View Request" CssClass="btn btn-danger"/>
            </div>
            <div class="d-flex align-items-center justify-content-between py-3 border-bottom">
                <div class="d-flex">
                    <div style="padding-right: 1.5rem;">
                        <img src="images/study.PNG" width="70"/>
                    </div>
                    <div>
                        <div class="d-flex">
                            <p class="fw-bold" style="padding-right: 0.5rem;">Hong Son</p>
                            <span class="badge bg-dark">Independent Study</span>
                        </div>
                        <small class="text-secondary">CIS 2082 | Fall 2023</small>
                        <small class="text-danger d-block">PENDING</small>
                    </div>
                </div>
                <asp:Button ID="Button3" runat="server" Text="View Request" CssClass="btn btn-danger"/>
            </div>
        </div>
    </form>
</body>
</html>
