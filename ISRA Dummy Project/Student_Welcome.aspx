﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student_Welcome.aspx.cs" Inherits="ISRA_Dummy_Project.Student_Welcome" %>

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
        <div class="welcome-label">
            <h1>Welcome, Kevin</h1>
        </div>
        <div class="submit-request">
            <h2>Submit a request</h2>
            <p>Some quick example test to build on the card title and make up the bulk of the card's content</p>
            <a href="Student_RequestForm.aspx">Go to form</a>
        </div>
        <div class="view-request">
            <h2>View Request</h2>
            <p>Some quick example text to build on the card title and make up the bulk of the card's content</p>
            <a href="Student_Search.aspx">Go to requests</a>
        </div>
    </form>
</body>
</html>