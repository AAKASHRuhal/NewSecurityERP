using BalLayer;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewSecurityERP.Masters
{
    public partial class UnitQRCode : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    BindBranchDropDown();
                    BindUnitDropDown();
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, typeof(Page), "Error", $"<script>error({JsonConvert.SerializeObject(ex.Message)})</script>", false);
            }
        }

        public void BindBranchDropDown()
        {
            try
            {
                MasterCommonClass mc = new MasterCommonClass();
                ddlBranch.DataSource = mc.BindTableData("BRANCH", "branchname");
                ddlBranch.DataTextField = "branchname";
                ddlBranch.DataValueField = "branchcode";
                ddlBranch.DataBind();
                ddlBranch.Items.Insert(0, new ListItem("--Select--", "0"));
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, typeof(Page), "Error", $"<script>error({JsonConvert.SerializeObject(ex.Message)})</script>", false);
            }
        }


        public void BindUnitDropDown()
        {
            try
            {
                MasterCommonClass mc = new MasterCommonClass();
                ddlUnit.DataSource = mc.BindTableData("UNIT", "unitcode");
                ddlUnit.DataTextField = "unitname";
                ddlUnit.DataValueField = "unitcode";
                ddlUnit.DataBind();
                ddlUnit.Items.Insert(0, new ListItem("--Select--", "0"));
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, typeof(Page), "Error", $"<script>error({JsonConvert.SerializeObject(ex.Message)})</script>", false);
            }
        }

        protected void ClearBtn_Click(object sender, EventArgs e)
        {
            ddlBranch.SelectedValue = ddlUnit.SelectedValue = "0";
        }

        protected void ShowQRCode_Click(object sender, EventArgs e)
        {

        }
    }
}