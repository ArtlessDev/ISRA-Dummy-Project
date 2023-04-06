using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ISRA_Dummy_Project
{
    public partial class General_LandingPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnStudent_Click(object sender, EventArgs e)
        {
            Response.Redirect("Student_Search.aspx");
        }

        protected void btnAdvisor_Click(object sender, EventArgs e)
        {
            Response.Redirect("Advisor_Search.aspx");
        }

        protected void btnFaculty_Click(object sender, EventArgs e)
        {
            Response.Redirect("FacultyMember_Search.aspx");
        }
    }
}