using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ISRA_Dummy_Project
{
    public partial class Advisor_Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addbtn_Click(object sender, EventArgs e)
        {
            adminPanel.Visible = true;
            backgroundDim.Visible = true;
        }

        protected void btnAddUsers_Click(object sender, EventArgs e)
        {
            this.btnEmailTemplate.CssClass = "px-4 border-0 text-start fw-bold py-3 w-100";
            this.btnAddUsers.CssClass = "add-user px-4 border-0 text-start fw-bold py-3 w-100";

            this.emailTemplateView.Visible = false;
            this.addUsersView.Visible = true;
        }

        protected void btnEmailTemplate_Click(object sender, EventArgs e)
        {
            this.btnAddUsers.CssClass = "px-4 border-0 text-start fw-bold py-3 w-100";
            this.btnEmailTemplate.CssClass = "add-user px-4 border-0 text-start fw-bold py-3 w-100";

            this.emailTemplateView.Visible = true;
            this.addUsersView.Visible = false;
        }
    }
}