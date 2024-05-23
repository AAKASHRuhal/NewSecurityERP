using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewSecurityERP
{
    public partial class Main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string UserID = Session["UserID"] as string;
            string UserName = Session["UserName"] as string;
            string LoginType = Session["loginType"] as string;
            if(!string.IsNullOrEmpty(UserID) )
            {
                lblUserName.Text = lblUser.Text = UserName;
                lblLoginType.Text = LoginType;
            }
            else
            {
                Response.Redirect("/");
            }
        }

        protected void lnkBtnLogout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("/");
        }
    }
}