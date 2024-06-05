using BalLayer;
using DalLayer;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewSecurityERP.Transaction
{
    public partial class DailyTaskAssignment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    BindGridView();
                    BindSupervisorDropDown();
                    BindUnitDropDown();
                    ViewState["flag"] = 0;
                }
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

        protected void ClearFormData()
        {
            ddlSupervisor.SelectedValue = ddlUnit.SelectedValue = ddlStatus.SelectedValue = "0";
            txtStartDate.Text = txtEndDate.Text = txtStartTime.Text = txtEndTime.Text = "";
            SaveBtn.Text = "Save";
            ViewState["flag"] = 0;
        }

        protected void ClearBtn_Click(object sender, EventArgs e)
        {
            try
            {
                ClearFormData();
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, typeof(Page), "Error", $"<script>error({JsonConvert.SerializeObject(ex.Message)}</script>", false);
            }
        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                DailyTaskManagmentMasters dtm = new DailyTaskManagmentMasters();
                dtm.ID = Convert.ToInt32(HiddenFieldDailyTaskID.Value);
                dtm.flag = Convert.ToInt32(ViewState["flag"]);
                dtm.SupervisorId = ddlSupervisor.SelectedValue.ToString();
                dtm.UnitId = Convert.ToInt32(ddlUnit.SelectedValue);
                dtm.StartDate = txtStartDate.Text;
                dtm.EndDate = txtEndDate.Text;
                dtm.StartTime = txtStartTime.Text;
                dtm.EndTime = txtEndTime.Text;
                dtm.Status = ddlStatus.SelectedValue;
                dtm.UserID = Session["UserID"].ToString();
                MasterCommonClass mc = new MasterCommonClass();
                string result = mc.InsertDailyTaskManagmentDetails(dtm);
                if (result == "Record Saved Successfully")
                {
                    ClearFormData();
                    BindGridView();
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "Success", $"<script>success({JsonConvert.SerializeObject("Record Saved Successfully")})</script>", false);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "", $"<script>error({JsonConvert.SerializeObject(result)})</script>", false);
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, typeof(Page), "Error", $"<script>error({JsonConvert.SerializeObject(ex.Message)}</script>", false);
            }
        }

        protected void BindGridView()
        {
            try
            {
                DataTable dt = DBClass.GetDataTableByProc("BindDailyTaskGridView");
                gvDailyTaskAssign.DataSource = dt;
                gvDailyTaskAssign.DataBind();
                Session["DailyTaskData"] = dt;
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, typeof(Page), "Error", $"<script>error({JsonConvert.SerializeObject("Error: " + ex.Message)})</script>", false);
            }
        }

        protected void gvDailyTaskAssign_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName == "EditDailyTask")
                {
                    string ID = e.CommandArgument.ToString();
                    DataTable dtFromSession = (DataTable)Session["DailyTaskData"];
                    DataRow[] rows = dtFromSession.Select("Id = " + ID);
                    if (rows.Length > 0)
                    {
                        DataRow row = rows[0];
                        HiddenFieldDailyTaskID.Value = rows[0]["ID"].ToString();
                        ddlSupervisor.SelectedValue = rows[0]["SupervisorId"].ToString();
                        ddlUnit.SelectedValue = rows[0]["UnitId"].ToString();
                        DateTime StartDate;
                        if (DateTime.TryParse(rows[0]["StartDate"].ToString(), out StartDate))
                        {
                            txtStartDate.Text = StartDate.ToString("yyyy-MM-dd");
                        }

                        DateTime EndDate;
                        if (DateTime.TryParse(rows[0]["EndDate"].ToString(), out EndDate))
                        {
                            txtEndDate.Text = EndDate.ToString("yyyy-MM-dd");
                        }
                        
                        txtStartTime.Text = rows[0]["StartTime"].ToString();
                        txtEndTime.Text = rows[0]["EndTime"].ToString();

                        ViewState["flag"] = 1;
                        SaveBtn.Text = "Update";                       
                    }
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, typeof(Page), "Error", $"<script>error({JsonConvert.SerializeObject(ex.Message)}</script>", false);
            }
        }
    }
}