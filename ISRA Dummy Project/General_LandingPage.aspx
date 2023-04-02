<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="General_LandingPage.aspx.cs" Inherits="ISRA_Dummy_Project.General_LandingPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ISRA | Login</title>
    <style>
        .bg-skyline {
            background: url("https://www.temple.edu/sites/www/files/images_embedded/20141118_skyline_004-831x467.gif");
            background-repeat: no-repeat;
            background-size: cover;
        }
        .tint {
            position: absolute;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
            background: rgba(0, 0, 0, 0.6);
        }
    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
    <form id="form1" runat="server">
        <div class="bg-skyline vh-100 position-relative d-flex justify-content-center align-items-center">
            <div class="tint"></div>
            <div class="position-relative z-1 text-center text-white">
                <h1 class="display-4">ISRA</h1>
                <p class="lead">Independent Study Registration Application</p>
                <asp:Button ID="btnStudent" runat="server" OnClick="btnStudent_Click" Text="Student Login" CssClass="btn btn-danger"/>
                <asp:Button ID="btnAdvisor" runat="server" OnClick="btnAdvisor_Click" Text="Advisor Login" CssClass="btn btn-danger"/>
                <asp:Button ID="btnFaculty" runat="server" OnClick="btnFaculty_Click" Text="Faculty Login" CssClass="btn btn-danger"/>
            </div>
        </div>
    </form>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
