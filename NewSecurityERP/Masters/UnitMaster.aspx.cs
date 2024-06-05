using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Net.NetworkInformation;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using BalLayer;
using NewSecurityERP.CandidateRegistration;
using Newtonsoft.Json;

namespace NewSecurityERP.Masters
{
    public partial class UnitMaster : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!string.IsNullOrEmpty(Convert.ToString(Session["CompanyID"])))
                {
                    if (!IsPostBack)
                    {
                        BindGridView();
                        PageFunction();
                        BindMaxID();
                        ViewState["flag"] = 0;
                        if (!String.IsNullOrEmpty(Request.QueryString["id"]))
                        {

                            string UnitCodeData = Request.QueryString["id"].ToString();
                            if (UnitCodeData != "" && UnitCodeData != null)
                            {
                                txtUnitCode.Text = Convert.ToString(UnitCodeData);
                                //BindSearchData();
                            }
                        }

                    }
                }
                else { Response.Redirect("~/Default.aspx"); }

            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, typeof(Page), "Error", $"<script>error({JsonConvert.SerializeObject("Error: " + ex.Message)})</script>", false);
            }
        }

        public void PageFunction()
        {
            BindStateDropDown();
            BindSupervisorDropDown();
            BindClientDropDown();
            BindBranchDropDown();
            BindRegionMaster();
            BindOperationArea();
            BindMaxID();
            BindGridView();
        }

        public void BindSupervisorDropDown()
        {
            try
            {
                MasterCommonClass mc = new MasterCommonClass();
                DataTable dt = mc.BindTableDataValue("Employee", "ISSuperVisor", 1);
                ddlSupervisor.DataSource = dt;
                ddlSupervisor.DataTextField = "Empname";
                ddlSupervisor.DataValueField = "Empcode";
                ddlSupervisor.DataBind();
                ddlSupervisor.Items.Insert(0, new ListItem("--Select--", "0"));

            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, typeof(Page), "Error", $"<script>error({JsonConvert.SerializeObject("Error: " + ex.Message)})</script>", false);
            }
        }

        public void BindClientDropDown()
        {
            MasterCommonClass mc = new MasterCommonClass();
            DataTable dt = mc.BindClientDetail(Convert.ToInt32(Session["CompanyID"]), -1);
            ddlClientName.DataSource = dt;
            ddlClientName.DataTextField = "Client Name";
            ddlClientName.DataValueField = "ClientCode";
            ddlClientName.DataBind();
            ddlClientName.Items.Insert(0, new ListItem("--Select Client--", "0"));
        }
        public void BindStateDropDown()
        {
            MasterCommonClass mc = new MasterCommonClass();
            ddlState.DataSource = mc.BindTableData("STATE", "stateName");
            ddlState.DataTextField = "stateName";
            ddlState.DataValueField = "stateCode";
            ddlState.DataBind();
            ddlState.Items.Insert(0, new ListItem("--Select State--", "0"));
        }
        public void BindBranchDropDown()
        {
            MasterCommonClass mc = new MasterCommonClass();
            ddlBranch.DataSource = mc.BindTableData("BRANCH", "BranchName");
            ddlBranch.DataTextField = "BranchName";
            ddlBranch.DataValueField = "BranchCode";
            ddlBranch.DataBind();
            ddlBranch.Items.Insert(0, new ListItem("--Select Branch--", "0"));
        }

        public void BindRegionMaster()
        {
            MasterCommonClass mc = new MasterCommonClass();
            ddlRegionName.DataSource = mc.BindTableData("REGIONMASTER", "RegionName");
            ddlRegionName.DataTextField = "RegionName";
            ddlRegionName.DataValueField = "RegionCode";
            ddlRegionName.DataBind();
            ddlRegionName.Items.Insert(0, new ListItem("--Select Region--", "0"));
        }
        public void BindOperationArea()
        {
            MasterCommonClass mc = new MasterCommonClass();
            ddlOperationArea.DataSource = mc.BindTableData("OPERATIONAREAMASTER", "OPAreaName");
            ddlOperationArea.DataTextField = "OPAreaName";
            ddlOperationArea.DataValueField = "OPAreaCode";
            ddlOperationArea.DataBind();
            ddlOperationArea.Items.Insert(0, new ListItem("--Select OPerational Area", "0"));
        }
        public void BindGridView()
        {
            MasterCommonClass mc = new MasterCommonClass();
            DataTable dt = mc.BindTableData("Unit", "Unitname");
            gvUnitMaster.DataSource = dt;
            gvUnitMaster.DataBind();
            Session["UnitMaster"] = dt;

        }

        public void BindMaxID()
        {
            MasterCommonClass mc = new MasterCommonClass();
            int MaxID = mc.FatchMaxRecord("UNIT", "unitcode", Convert.ToInt32(Session["CompanyID"]));
            txtUnitCode.Text = (MaxID + 1).ToString();
        }

        #region "Button:- Save"
        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                UnitMasters um = new UnitMasters();

                MasterCommonClass mc = new MasterCommonClass();
                um.Flag = Convert.ToInt32(ViewState["flag"]);
                um.Compid = string.IsNullOrEmpty(Convert.ToString(Session["CompanyID"])) ? 0 : Convert.ToInt32(Session["CompanyID"]);
                um.Unitcode = string.IsNullOrEmpty(txtUnitCode.Text) ? 0 : Convert.ToInt32(txtUnitCode.Text);
                um.Clientcode = ddlClientName.SelectedIndex == 0 ? 0 : Convert.ToInt32(ddlClientName.SelectedValue);
                um.Unitname = txtUnitName.Text;
                um.ERPUnitCode = !string.IsNullOrEmpty(txtErpUnitCode.Text) ? Convert.ToInt32(txtErpUnitCode.Text) : 0;
                um.Status = ddlStatus.SelectedValue;
                um.StateCode = ddlState.SelectedIndex == 0 ? 0 : Convert.ToInt32(ddlState.SelectedValue);
                um.City = txtCityName.Text;
                um.Location = txtLocation.Text;
                um.Pincode = string.IsNullOrEmpty(txtPinCode.Text) ? 0 : Convert.ToInt32(txtPinCode.Text);
                um.SupervisorId = ddlSupervisor.SelectedValue;
                um.BranchCode = ddlBranch.SelectedIndex == 0 ? 0 : Convert.ToInt32(ddlBranch.SelectedValue);
                um.RegionCode = ddlRegionName.SelectedIndex == 0 ? 0 : Convert.ToInt32(ddlRegionName.SelectedValue);
                um.OPAreaCode = ddlOperationArea.SelectedIndex == 0 ? 0 : Convert.ToInt32(ddlOperationArea.SelectedValue);
                um.EmailID = txtEmailID.Text;
                um.ContactPerson1 = txtContactPerson1.Text;
                um.ContactPerson2 = txtContactPerson2.Text;
                um.ContactPerson3 = txtContactPerson3.Text;
                um.Phone1 = txtPhoneNo1.Text;
                um.Phone2 = txtPhoneNo2.Text;
                um.Phone3 = txtPhoneNo3.Text;
                um.Latitude = txtLatitude.Text;
                um.Longitude = txtLongitude.Text;
                um.Address = txtAddress.Text;
                um.CreatedByUserID = Convert.ToInt32(Session["UserID"]);

                string result = mc.InsertUnitDetail(um);
                if (result == "Record Saved Successfully")
                {
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "Success", $"<script>success({JsonConvert.SerializeObject("Success: " + "Record Saved Successfully")})</script>", false);
                    BindGridView();
                    Clearform();
                    ViewState["flag"] = 0;
                }

                BindMaxID();

            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, typeof(Page), "Error", $"<script>error({JsonConvert.SerializeObject("Error: " + ex.Message)})</script>", false);
            }
        }
        #endregion
        #region "Clear Form and ClearLabel"
        protected void Clearform()
        {

            ddlClientName.SelectedIndex = 0;
            txtUnitName.Text = string.Empty;
            txtErpUnitCode.Text = string.Empty;
            ddlStatus.SelectedIndex = 0;
            ddlState.SelectedIndex = 0;
            txtCityName.Text = string.Empty;
            txtLocation.Text = string.Empty;
            txtPinCode.Text = string.Empty;
            ddlSupervisor.SelectedIndex = 0;
            ddlBranch.SelectedIndex = 0;
            ddlRegionName.SelectedIndex = 0;
            ddlOperationArea.SelectedIndex = 0;
            txtEmailID.Text = string.Empty;
            txtContactPerson1.Text = string.Empty;
            txtContactPerson2.Text = string.Empty;
            txtContactPerson3.Text = string.Empty;
            txtPhoneNo1.Text = string.Empty;
            txtPhoneNo2.Text = string.Empty;
            txtPhoneNo3.Text = string.Empty;
            txtLongitude.Text = string.Empty;
            txtLatitude.Text = string.Empty;
            txtAddress.Text = string.Empty;
            btnSave.Text = "Save";
        }

        #endregion

        #region "Button:- Cancel/Clear"
        protected void btnCancel_Click(object sender, EventArgs e)
        {
            try
            {
                ViewState["flag"] = 0;
                Clearform(); BindMaxID();
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, typeof(Page), "Error", $"<script>error({JsonConvert.SerializeObject("Error: " + ex.Message)})</script>", false);
            }
        }
        #endregion


        protected void gvUnitMaster_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName == "update")
                {
                    string UnitCodeID = e.CommandArgument.ToString();
                    DataTable dtFromSession = (DataTable)Session["UnitMaster"];
                    DataRow[] rows = dtFromSession.Select("UnitCode = " + UnitCodeID);
                    if (rows.Length > 0)
                    {
                        DataRow row = rows[0];
                        txtUnitCode.Text = UnitCodeID;
                        ddlClientName.SelectedValue = rows[0]["ClientCode"].ToString();
                        txtUnitName.Text = rows[0]["UnitName"].ToString();
                        txtErpUnitCode.Text = rows[0]["ErpUnitCode"].ToString();
                        ddlStatus.SelectedValue = rows[0]["Status"].ToString();
                        ddlState.SelectedValue = rows[0]["StateCode"].ToString();
                        txtCityName.Text = rows[0]["City"].ToString();
                        txtLocation.Text = rows[0]["Location"].ToString();
                        txtPinCode.Text = rows[0]["Pincode"].ToString();
                        ddlSupervisor.SelectedValue = rows[0]["SupervisorId"].ToString();
                        ddlBranch.SelectedValue = rows[0]["BranchCode"].ToString();
                        ddlRegionName.SelectedValue = rows[0]["RegionCode"].ToString();
                        ddlOperationArea.SelectedValue = rows[0]["OPAreaCode"].ToString();
                        txtEmailID.Text = rows[0]["EmailID"].ToString();
                        txtContactPerson1.Text = rows[0]["ContactPerson1"].ToString();
                        txtContactPerson2.Text = rows[0]["ContactPerson2"].ToString();
                        txtContactPerson3.Text = rows[0]["ContactPerson3"].ToString();
                        txtPhoneNo1.Text = rows[0]["Phone1"].ToString();
                        txtPhoneNo2.Text = rows[0]["Phone2"].ToString();
                        txtPhoneNo3.Text = rows[0]["Phone3"].ToString();
                        txtLongitude.Text = rows[0]["Longitude"].ToString();
                        txtLatitude.Text = rows[0]["Latitude"].ToString();
                        txtAddress.Text = rows[0]["Address"].ToString();
                        ViewState["flag"] = 1;
                        btnSave.Text = "Update";
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, typeof(Page), "Error", $"<script>error({JsonConvert.SerializeObject("Error: " + "No Such Record Found !!!")})</script>", false);
                    }
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, typeof(Page), "Error", $"<script>error({JsonConvert.SerializeObject("Error: " + ex.Message)})</script>", false);
            }
        }

        protected void gvUnitMaster_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

        }

    }
}