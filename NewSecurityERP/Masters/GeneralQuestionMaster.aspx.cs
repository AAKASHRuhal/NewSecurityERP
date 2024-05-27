using BalLayer;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewSecurityERP.Masters
{
    public partial class GeneralQuestionMaster : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
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


        public void BindMaxID()
        {
            MasterCommonClass mc = new MasterCommonClass();
            int MaxID = mc.FatchMaxRecord("GeneralQuestionMaster", "QuestionCode");
            txtQuestionCode.Text = (MaxID + 1).ToString();
        }

        protected void ClearFormData()
        {
            txtQuestion.Text = string.Empty;
            ddlAnswerType.SelectedValue = rblImage.SelectedValue = rblAudio.SelectedValue = rblVideo.SelectedValue = "0";
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
                GeneralQuestionMasters qm = new GeneralQuestionMasters();
                qm.flag = Convert.ToInt32(ViewState["flag"]);
                qm.QuestionCode = Convert.ToInt32(txtQuestionCode.Text);
                qm.Question = txtQuestion.Text;
                qm.AnswerType = ddlAnswerType.SelectedValue.ToString();
                qm.IsImage = Convert.ToInt32(rblImage.SelectedValue);
                qm.IsAudio = Convert.ToInt32(rblAudio.SelectedValue);
                qm.IsVideo = Convert.ToInt32(rblVideo.SelectedValue);
                qm.UserID = Convert.ToString(Session["UserID"]);
                qm.CompID = Convert.ToInt32(Session["CompanyID"]);
                MasterCommonClass mc = new MasterCommonClass();
                string result = mc.InsertGeneralQuestionDetails(qm);
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
                MasterCommonClass mc = new MasterCommonClass();
                DataTable dt = mc.BindTableData("GeneralQuestionMaster", "QuestionCode");
                gvQuestionMaster.DataSource = dt;
                gvQuestionMaster.DataBind();
                Session["QuestionMasterData"] = dt;
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, typeof(Page), "Error", $"<script>error({JsonConvert.SerializeObject("Error: " + ex.Message)})</script>", false);
            }
        }

        protected void gvQuestionMaster_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName == "EditQuestion")
                {
                    string QuesCode = e.CommandArgument.ToString();
                    DataTable dtFromSession = (DataTable)Session["QuestionMasterData"];
                    DataRow[] rows = dtFromSession.Select("QuestionCode = " + QuesCode);
                    if (rows.Length > 0)
                    {
                        DataRow row = rows[0];
                        txtQuestionCode.Text = rows[0]["QuestionCode"].ToString();
                        txtQuestion.Text = rows[0]["Question"].ToString();
                        ddlAnswerType.SelectedValue = rows[0]["AnswerType"].ToString();
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