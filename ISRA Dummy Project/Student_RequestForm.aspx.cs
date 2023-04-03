using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ISRA_Dummy_Project
{
    public partial class Student_RequestForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReturn_Click(object sender, EventArgs e)
        {
            Response.Redirect("General_LandingPage.aspx");
        }

        protected void btnUrp_Click(object sender, EventArgs e)
        {
            //need to toggle visibility of divs
        }

        protected void btnComplete_Click(object sender, EventArgs e)
        {
            Response.Redirect("Student_Confirmation.aspx");
        }

        protected void chkIsURP_CheckedChanged(object sender, EventArgs e)
        {
            if (this.chkIsURP.Checked)
            {
                this.preReq.Visible = false;
                this.eligibilityInfo.Visible = true;
            } else
            {
                this.preReq.Visible = true;
                this.eligibilityInfo.Visible = false;
            }
        }
    }
}