using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ISRA_Dummy_Project
{
    public partial class Student_IndStudyForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUrp_Click(object sender, EventArgs e)
        {
            /*
             NEED TO TOGGLE THE VISIBILITY OF THE URP AND THE IND STUDY
             */
        }

        protected void btnComplete_Click(object sender, EventArgs e)
        {
            Response.Redirect("Student_EndPage.aspx");
        }

        protected void btnReturn_Click(object sender, EventArgs e)
        {
            Response.Redirect("General_LandingPage.aspx");
        }
    }
}