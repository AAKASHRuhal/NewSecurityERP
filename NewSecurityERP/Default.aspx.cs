using System;
using System.Collections.Generic;
using System.ComponentModel.Design;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using BalLayer;

namespace NewSecurityERP
{
    public partial class Default : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindCompany();
            }
        }


        public void BindCompany()
        {
            try
            {
                MasterCommonClass mc = new MasterCommonClass();
                DataTable dt = mc.BindTableData("Company", "Compid");
                ddlCompany.DataSource = dt;
                ddlCompany.DataTextField = "compname";
                ddlCompany.DataValueField = "Compid";
                ddlCompany.DataBind();
                ddlCompany.Items.Insert(0, new ListItem("--Select Company--", "0"));
            }
            catch (Exception ex)
            {

            }

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                loginCommonClass lic = new loginCommonClass();
                string userid = txtUserName.Text.Trim();
                string pass = txtPassword.Text.Trim();
                int Companyid = int.Parse(ddlCompany.SelectedValue);
                string Password = lic.Encrypt(pass);
                DataTable dt = lic.VerifyUser(userid, Password, Companyid);
                if (dt != null && dt.Rows.Count > 0)
                {
                    HttpContext.Current.Session["UserID"] = Convert.ToString(dt.Rows[0]["ID"]);
                    HttpContext.Current.Session["loginID"] = Convert.ToString(dt.Rows[0]["UserID"]);
                    HttpContext.Current.Session["UserName"] = Convert.ToString(dt.Rows[0]["UserName"]);
                    HttpContext.Current.Session["CompanyID"] = Convert.ToString(dt.Rows[0]["compid"]);
                    HttpContext.Current.Session["loginType"] = Convert.ToString(dt.Rows[0]["UserType"]);
                    HttpContext.Current.Session["EmpCode"] = Convert.ToString(dt.Rows[0]["EmpCode"]);
                    

                    if (dt.Rows[0]["UserType"].ToString() == "User")
                    {
                        //Response.Redirect("/Dashboard.aspx");
                    }
                    else
                    {
                        Response.Redirect("/Dashboard", false);
                    }

                    if (Convert.ToInt32(dt.Rows[0]["ISSupervisor"]) == 1)
                    {
                        Response.Redirect("/TrackingDashboard", false);
                    }
                    else
                    {
                        Response.Redirect("/Dashboard", false);
                    }
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "Error", "<script>error('User Not Exist !!')</script>", false);
                }

            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, typeof(Page), "Error", "<script>error('An error occurred: " + ex.Message + "')</script>", false);
            }

        }
    }
}