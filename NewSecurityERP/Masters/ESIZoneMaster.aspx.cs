using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BalLayer;
using Newtonsoft.Json;

namespace NewSecurityERP.Masters
{
	public partial class ESIZoneMaster : System.Web.UI.Page
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
						BindMaxID();
						ViewState["flag"] = 0;
					}
				}
				else Response.Redirect("~/Default.aspx");
			}
			catch (Exception ex)
			{
				ScriptManager.RegisterStartupScript(this, typeof(Page), "Error", $"<script>error({JsonConvert.SerializeObject("Error: " + ex.Message)})</script>", false);
			}

		}
		#region "Function :- BindGrid or BindMaxID"
		public void BindGridView()
		{
			try
			{
				MasterCommonClass mc = new MasterCommonClass();
				gvESIZoneMaster.DataSource = mc.BindTableData("ESIZONE", "ZoneName");
				gvESIZoneMaster.DataBind();
			}
			catch (Exception ex)
			{
				ScriptManager.RegisterStartupScript(this, typeof(Page), "Error", $"<script>error({JsonConvert.SerializeObject("Error: " + ex.Message)})</script>", false);
			}
		}
		public void BindMaxID()
		{
			MasterCommonClass mc = new MasterCommonClass();
			int MaxID = mc.FatchMaxRecord("ESIZONE", "ZoneCode");
			txtZoneCode.Text = (MaxID + 1).ToString();
		}
		#endregion

		#region "Button:- Save"
		protected void btnSave_Click(object sender, EventArgs e)
		{
			try
			{
				ESIZONEMaster em = new ESIZONEMaster();
				em.flag = Convert.ToInt32(ViewState["flag"].ToString());
				em.ZoneCode = Convert.ToInt32(txtZoneCode.Text);
				em.ZoneName = txtZoneName.Text;
				em.EsttCode = txtEsttCode.Text;
				em.LocalOffice = txtAddress.Text;
				em.ZoneRemark = txtRemark.Text;
				em.CreatedByUserID = Convert.ToString(Session["UserID"]);
				MasterCommonClass mc = new MasterCommonClass();
				string result = mc.InsertESIZONEDetail(em);
				if (result == "")
				{
					BindGridView();
					BindMaxID();
					ClearFormText();
					ViewState["flag"] = 0;
				}
				else
				{
					ScriptManager.RegisterStartupScript(this, typeof(Page), "Error", $"<script>error({JsonConvert.SerializeObject("Error: " + "Something went Wrong !!!")})</script>", false);
				}

			}
			catch (Exception ex)
			{
				ScriptManager.RegisterStartupScript(this, typeof(Page), "Error", $"<script>error({JsonConvert.SerializeObject("Error: " + ex.Message)})</script>", false);
			}
		}
		#endregion

		#region "Clear Form and ClearLabel"
		protected void ClearFormText()
		{
			txtZoneName.Text = string.Empty;
			txtEsttCode.Text = string.Empty;
			txtAddress.Text = string.Empty;
			txtRemark.Text = string.Empty;
			btnSave.Text = "Save";
		}
		#endregion

		#region "Button:- Cancel/Clear"
		protected void btnCancel_Click(object sender, EventArgs e)
		{
			try
			{
				ViewState["flag"] = 0;
				ClearFormText();
				BindMaxID();
			}
			catch (Exception ex)
			{
				ScriptManager.RegisterStartupScript(this, typeof(Page), "Error", $"<script>error({JsonConvert.SerializeObject("Error: " + ex.Message)})</script>", false);
			}

		}
		#endregion
		#region "Data Editing or PageIndexing"


		protected void gvESIZoneMaster_RowCommand(object sender, GridViewCommandEventArgs e)
		{
			try
			{
				if (e.CommandName == "update")
				{
					ImageButton imgbtn = (ImageButton)e.CommandSource;
					int index = Convert.ToInt32(imgbtn.CommandArgument);
					GridViewRow row = gvESIZoneMaster.Rows[index];
					Label lblZoneCode = (Label)row.FindControl("lblZoneCode");
					Label lblZoneName = (Label)row.FindControl("lblZoneName");
					Label lblEsttCode = (Label)row.FindControl("lblEsttCode");
					Label lblLocalOffice = (Label)row.FindControl("lblLocalOffice");
					Label lblRemark = (Label)row.FindControl("lblRemark");
					txtZoneCode.Text = lblZoneCode.Text;
					txtZoneName.Text = lblZoneName.Text;
					txtEsttCode.Text = lblEsttCode.Text;
					txtAddress.Text = lblLocalOffice.Text;
					txtRemark.Text = lblRemark.Text;
					ViewState["flag"] = 1;
				}
			}
			catch (Exception ex)
			{
				ScriptManager.RegisterStartupScript(this, typeof(Page), "Error", $"<script>error({JsonConvert.SerializeObject("Error: " + ex.Message)})</script>", false);
			}
		}
		protected void gvESIZoneMaster_RowUpdating(object sender, GridViewUpdateEventArgs e)
		{

		}
		protected void gvESIZoneMaster_RowDeleting(object sender, GridViewDeleteEventArgs e)
		{

		}
		#endregion
		
	}
}