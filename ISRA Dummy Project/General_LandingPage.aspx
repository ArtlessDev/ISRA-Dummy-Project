<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="General_LandingPage.aspx.cs" Inherits="ISRA_Dummy_Project.General_LandingPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Button ID="btnStudent" runat="server" OnClick="btnStudent_Click" Text="Student Login" />
            <br />
            <br />
            <asp:Button ID="btnAdvisor" runat="server" OnClick="btnAdvisor_Click" Text="Advisor Login" />
            <br />
            <br />
            <asp:Button ID="btnFaculty" runat="server" OnClick="btnFaculty_Click" Text="Faculty Login" />

        </div>
    </form>
</body>
</html>
