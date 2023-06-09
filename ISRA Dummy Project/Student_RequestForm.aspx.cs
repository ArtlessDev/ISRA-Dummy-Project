﻿using System;
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

        protected void ddlIsURP_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (this.ddlIsURP.SelectedValue.CompareTo("Yes") == 0)
            {
                // urp
                this.preReq.Visible = false;
                this.eligibility.Visible = true;

                this.profApproval.Visible = false;
                this.URPFacultyInfo.Visible = true;
            } else
            {
                // independent study
                this.preReq.Visible = true;
                this.eligibility.Visible = false;

                this.profApproval.Visible = true;
                this.URPFacultyInfo.Visible = false;
            }
        }
    }
}