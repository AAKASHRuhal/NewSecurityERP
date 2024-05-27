using BalLayer;
using DalLayer;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel.Design;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Remoting.Metadata.W3cXsd2001;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewSecurityERP.Masters
{
    public partial class SubTaskMaster : System.Web.UI.Page
    {
        public int CompId = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            CompId = Convert.ToInt32(Session["CompanyID"].ToString());
            try
            {
                if (!IsPostBack)
                {
                    BindTaskDropDown();
                    BindGridView();
                    BindMaxID();
                    ViewState["flag"] = 0;
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, typeof(Page), "Error", $"<script>error({JsonConvert.SerializeObject(ex.Message)}</script>", false);
            }
        }

        public void BindTaskDropDown()
        {
            try
            {
                MasterCommonClass mc = new MasterCommonClass();
                ddlTaskName.DataSource = mc.BindTableData("TASKMASTER", "Taskname", CompId);
                ddlTaskName.DataTextField = "Taskname";
                ddlTaskName.DataValueField = "Taskcode";
                ddlTaskName.DataBind();
                ddlTaskName.Items.Insert(0, new ListItem("--Select--", "0"));
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, typeof(Page), "Error", $"<script>error({JsonConvert.SerializeObject(ex.Message)})</script>", false);
            }
        }

        public void BindMaxID()
        {
            MasterCommonClass mc = new MasterCommonClass();
            int MaxID = mc.FatchMaxRecord("SUBTASKMASTER", "SubTaskCode");
            txtSubTaskCode.Text = (MaxID + 1).ToString();
        }

        protected void ClearFormData()
        {
            txtSubTaskName.Text = txtSubTaskQues.Text = string.Empty;
            ddlTaskName.SelectedValue = ddlQuesType.SelectedValue = rblImage.SelectedValue = rblAudio.SelectedValue = rblVideo.SelectedValue = "0";
            SaveBtn.Text = "Save";
            ViewState["flag"] = 0;
        }

        protected void ClearBtn_Click(object sender, EventArgs e)
        {
            try
            {
                ClearFormData();
                BindMaxID();
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
                SubTaskMasters stm = new SubTaskMasters();
                stm.flag = Convert.ToInt32(ViewState["flag"]);
                stm.SubTaskCode = Convert.ToInt32(txtSubTaskCode.Text);
                stm.TaskCode = Convert.ToInt32(ddlTaskName.SelectedValue);
                stm.SubTaskName = txtSubTaskName.Text;
                stm.SubTaskQues = txtSubTaskQues.Text;
                stm.SubQuesType = ddlQuesType.SelectedValue.ToString();
                stm.IsImage = Convert.ToInt32(rblImage.SelectedValue);
                stm.IsAudio = Convert.ToInt32(rblAudio.SelectedValue);
                stm.IsVideo = Convert.ToInt32(rblVideo.SelectedValue);
                stm.UserID = Convert.ToString(Session["UserID"]);
                stm.CompID = Convert.ToInt32(Session["CompanyID"]);
                MasterCommonClass mc = new MasterCommonClass();
                string result = mc.InsertSubTaskDetails(stm);
                if (result == "Record Saved Successfully")
                {
                    ClearFormData();
                    BindMaxID();
                    BindGridView();
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "Success", $"<script>success({JsonConvert.SerializeObject("Record Saved Successfully")})</script>", false);
                }
            }
            catch (SqlException SqlEx)
            {
                if (SqlEx.Number == 2627)
                {
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "Error", $"<script>error({JsonConvert.SerializeObject("Data already exists.")})</script>", false);
                    BindGridView();
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
                DataTable dt = DBClass.GetDataTableByProc("GetAllSubTaskDataSP");
                gvSubTaskMaster.DataSource = dt;
                gvSubTaskMaster.DataBind();
                Session["SubTaskMasterData"] = dt;
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, typeof(Page), "Error", $"<script>error({JsonConvert.SerializeObject("Error: " + ex.Message)})</script>", false);
            }
        }

        protected void gvSubTaskMaster_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName == "EditSubTask")
                {
                    string SubTaskCode = e.CommandArgument.ToString();
                    DataTable dtFromSession = (DataTable)Session["SubTaskMasterData"];
                    DataRow[] rows = dtFromSession.Select("SubTaskCode = " + SubTaskCode);
                    if (rows.Length > 0)
                    {
                        DataRow row = rows[0];
                        txtSubTaskCode.Text = rows[0]["SubTaskCode"].ToString();
                        ddlTaskName.SelectedValue = rows[0]["TaskCode"].ToString();
                        txtSubTaskName.Text = rows[0]["SubTaskName"].ToString();
                        txtSubTaskQues.Text = rows[0]["SubTaskQues"].ToString();
                        ddlQuesType.SelectedValue = rows[0]["SubTaskType"].ToString();
                        rblImage.SelectedValue = rows[0]["IsImage"].ToString();
                        rblAudio.SelectedValue = rows[0]["IsAudio"].ToString();
                        rblVideo.SelectedValue = rows[0]["IsVideo"].ToString();
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