using BalLayer;
using DalLayer;
using NewSecurityERP.Masters;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel.Design;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Remoting.Metadata.W3cXsd2001;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewSecurityERP.Transaction
{
    public partial class UnitWiseTaskManagment : System.Web.UI.Page
    {
        public int CompId = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            CompId = Convert.ToInt32(Session["CompanyID"]);
            if (CompId == null || CompId == 0)
            {
                Response.Redirect("/");
            }
            try
            {
                if (!IsPostBack)
                {
                    BindBranchDropDown();
                    BindUnitDropDown();
                    BindTaskDropDown();
                    BindGridView();
                    ViewState["flag"] = 0;
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


        public void BindTaskDropDown()
        {
            try
            {
                MasterCommonClass mc = new MasterCommonClass();
                ddlTask.DataSource = mc.BindTableData("TASKMASTER", "Taskname", CompId);
                ddlTask.DataTextField = "Taskname";
                ddlTask.DataValueField = "Taskcode";
                ddlTask.DataBind();
                ddlTask.Items.Insert(0, new ListItem("--Select--", "0"));
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, typeof(Page), "Error", $"<script>error({JsonConvert.SerializeObject(ex.Message)})</script>", false);
            }
        }

        protected void ddlTask_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                string TaskId = ddlTask.SelectedValue.ToString();
                BindSubTaskQuesDropDown(TaskId);

            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, typeof(Page), "Error", $"<script>error({JsonConvert.SerializeObject(ex.Message)})</script>", false);
            }
        }


        protected void BindSubTaskQuesDropDown(string TaskId)
        {
            try
            {
                MasterCommonClass mc = new MasterCommonClass();
                DataTable dt = mc.BindDataTableFromQuery("Select QuesID, Question from QuestionMaster where TaskId = " + TaskId + "");
                ddlTaskQuestion.Items.Clear();
                ddlTaskQuestion.DataSource = dt;
                ddlTaskQuestion.DataTextField = "Question";
                ddlTaskQuestion.DataValueField = "QuesID";
                ddlTaskQuestion.DataBind();
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, typeof(Page), "Error", $"<script>error({JsonConvert.SerializeObject(ex.Message)})</script>", false);
            }
        }

        protected void ClearFormData()
        {
            ddlBranch.SelectedValue = ddlUnit.SelectedValue = ddlTask.SelectedValue = "0";
            ddlTaskQuestion.Items.Clear();
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
                StringBuilder QuesIds = new StringBuilder();
                foreach (ListItem item in ddlTaskQuestion.Items)
                {
                    if (item.Selected)
                    {
                        QuesIds.Append(item.Value).Append(",");
                    }
                }

                if (QuesIds.Length > 0)
                {
                    UnitWiseTaskManagmentMasters uwtm = new UnitWiseTaskManagmentMasters();
                    uwtm.id = Convert.ToInt32(HiddenFieldID.Value);
                    uwtm.flag = Convert.ToInt32(ViewState["flag"]);
                    uwtm.BranchId = Convert.ToInt32(ddlBranch.SelectedValue);
                    uwtm.UnitId = Convert.ToInt32(ddlUnit.SelectedValue);
                    uwtm.TaskId = Convert.ToInt32(ddlTask.SelectedValue);
                    string QuestionsId= QuesIds.ToString().TrimEnd(',');
                    uwtm.QuestionId = QuestionsId;
                    uwtm.UserID = Convert.ToString(Session["UserID"]);
                    MasterCommonClass mc = new MasterCommonClass();
                    string result = mc.InsertUnitWiseTaskManagmentData(uwtm);
                    if (result == "Record Saved Successfully")
                    {
                        ClearFormData();
                        BindGridView();
                        ScriptManager.RegisterStartupScript(this, typeof(Page), "Success", $"<script>success({JsonConvert.SerializeObject("Record Saved Successfully")})</script>", false);
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, typeof(Page), "Error", $"<script>error({JsonConvert.SerializeObject("Record Saved Successfully")})</script>", false);
                    }
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "Warning", $"<script>warning({JsonConvert.SerializeObject("Please Select at least one Question.")})</script>", false);
                }
            }
            catch (SqlException SqlEx)
            {
                if (SqlEx.Number == 2627)
                {
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "Error", $"<script>error({JsonConvert.SerializeObject("Data already exists.")})</script>", false);
                    BindGridView();
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, typeof(Page), "Error", $"<script>error({JsonConvert.SerializeObject(SqlEx.Message)})</script>", false);
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
                DataTable dt = DBClass.GetDataTableByProc("GetAllUnitWiseTaskData");
                gvUnitWiseTask.DataSource = dt;
                gvUnitWiseTask.DataBind();
                Session["UnitWiseTaskData"] = dt;
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, typeof(Page), "Error", $"<script>error({JsonConvert.SerializeObject(ex.Message)}</script>", false);
            }
        }


        protected void gvUnitWiseTask_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName == "EditUnitWiseTask")
                {
                    string ID = e.CommandArgument.ToString();
                    DataTable dtFromSession = (DataTable)Session["UnitWiseTaskData"];
                    DataRow[] rows = dtFromSession.Select("TaskManagementID = " + ID);
                    if (rows.Length > 0)
                    {
                        DataRow row = rows[0];
                        HiddenFieldID.Value = rows[0]["TaskManagementID"].ToString();
                        ddlBranch.SelectedValue = rows[0]["BranchID"].ToString();
                        ddlUnit.SelectedValue = rows[0]["UnitID"].ToString();
                        string TaskId = rows[0]["TaskID"].ToString();
                        ddlTask.SelectedValue = TaskId;
                        string QuesIds = rows[0]["QuestionID"].ToString();
                        ViewState["flag"] = 1;
                        SaveBtn.Text = "Update";

                        BindSubTaskQuesDropDown(TaskId);

                        string[] selectedIds = QuesIds.Split(',');

                        foreach (ListItem item in ddlTaskQuestion.Items)
                        {
                            if (selectedIds.Contains(item.Value))
                            {
                                item.Selected = true;
                            }
                        }
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