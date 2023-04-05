<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Faculty_MemberSearch.aspx.cs" Inherits="ISRA_Dummy_Project.Faculty_MemberSearch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 503px; width: 193px; z-index: 1; left: 6px; top: 9px; position: absolute; margin-top: 46px">
            <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 4px; top: 68px; position: absolute" Text="Application Type"></asp:Label>
            <asp:DropDownList ID="ddlStatus" runat="server" style="z-index: 1; left: 4px; top: 387px; position: absolute; width: 154px; bottom: 87px">
                <asp:ListItem>Any</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 5px; top: 220px; position: absolute" Text="Semester"></asp:Label>
            <asp:DropDownList ID="ddlApplicationType" runat="server" style="z-index: 1; left: 6px; top: 100px; position: absolute; width: 154px; bottom: 374px">
                <asp:ListItem>Any</asp:ListItem>
            </asp:DropDownList>
&nbsp;<asp:Label ID="Label4" runat="server" style="z-index: 1; left: 4px; top: 148px; position: absolute" Text="Course"></asp:Label>
            <asp:DropDownList ID="ddlCourse" runat="server" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" style="z-index: 1; left: 5px; top: 176px; position: absolute; width: 154px">
                <asp:ListItem>Any</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 6px; top: 291px; position: absolute" Text="Registered By"></asp:Label>
            <asp:DropDownList ID="ddlSemester" runat="server" style="z-index: 1; left: 5px; top: 250px; position: absolute; width: 154px; bottom: 224px">
                <asp:ListItem>Any</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 4px; top: 361px; position: absolute" Text="Status"></asp:Label>
            <asp:DropDownList ID="ddlRegisteredBy" runat="server" style="z-index: 1; left: 4px; top: 324px; position: absolute; width: 154px; bottom: 150px">
                <asp:ListItem>Any</asp:ListItem>
            </asp:DropDownList>
        </div>
        <p>
            &nbsp;</p>
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 22px; top: 72px; position: absolute; right: 1124px" Text="Filter By:"></asp:Label>
    </form>
</body>
</html>
