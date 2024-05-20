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

					//if (Convert.ToString(Session["CompanyID"]) == "2") { chkComp2.Visible = false; }
					if (!IsPostBack)
					{
						BindGridView();
						PageFunction(); BindMaxID();
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
			//BindStateDropDown();
			BindClientDropDown();
			//BindBranchDropDown();
			//BindRegionMaster();
			//BindOperationArea();
			//BindESIZoneDropDown();
			//BindPFZone();
			BindMaxID();
			//BindGridView();
		}
		public void BindClientDropDown()
		{
			MasterCommonClass mc = new MasterCommonClass();
			DataTable dt = mc.BindClientDetail(Convert.ToInt32(Session["CompanyID"]), -1);
			ddlClientName.DataSource = dt;
			ddlClientName.DataTextField = "Client Name";
			ddlClientName.DataValueField = "ClientCode";
			ddlClientName.DataBind();
			ddlClientName.Items.Insert(0, "--Select Client--");
		}
		public void BindGridView()
		{
			MasterCommonClass mc = new MasterCommonClass();
			DataTable dt = mc.BindTableData("Unit", "Unitname");
			//gvUnitMaster.DataSource = mc.BindUnitMasterDetail(Convert.ToInt32(Session["CompanyID"]), 0);
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
				DataTable dt1;

				MasterCommonClass mc = new MasterCommonClass();
				//if (btnSave.Text == "Save")
				//{
				//	dt1 = mc.BindTableDataBranch("select * from Unit where Unitcode=" + Convert.ToInt32(txtUnitCode.Text) + " and Unitname='" + txtUnitName.Text + "' and compid=" + Convert.ToInt32(Session["CompanyID"]) + " ");
				//	if (dt1.Rows.Count > 0)
				//	{
				//		ScriptManager.RegisterStartupScript(this, typeof(Page), "Error", $"<script>error({JsonConvert.SerializeObject("Error: " + "Unit Name Exist...")})</script>", false);
				//		return;
				//	}
				//}
				//um.flag = string.IsNullOrEmpty(ViewState["flag"].ToString()) ? 0 : Convert.ToInt32(ViewState["flag"]);
				um.compid = string.IsNullOrEmpty(Convert.ToString(Session["CompanyID"])) ? 0 : Convert.ToInt32(Session["CompanyID"]);
				um.unitcode = string.IsNullOrEmpty(txtUnitCode.Text) ? 0 : Convert.ToInt32(txtUnitCode.Text);
				um.unitname = txtUnitName.Text;
				um.clientcode = ddlClientName.SelectedIndex == 0 ? 0 : Convert.ToInt32(ddlClientName.SelectedValue);
				um.Address = txtAddress.Text;
				um.City = txtCityName.Text;
				um.Pincode = string.IsNullOrEmpty(txtPinCode.Text) ? 0 : Convert.ToInt32(txtPinCode.Text);
				um.Location = txtLocation.Text;
				um.supervisor = txtSupervisor.Text;
				um.BRANCHcode = ddlBranch.SelectedIndex == 0 ? 0 : Convert.ToInt32(ddlBranch.SelectedValue);
				um.RegionCode = ddlRegionName.SelectedIndex == 0 ? 0 : Convert.ToInt32(ddlRegionName.SelectedValue);
				um.OPAreaCode = ddlOperationArea.SelectedIndex == 0 ? 0 : Convert.ToInt32(ddlOperationArea.SelectedValue);
				//um.statecode = ddlState.SelectedIndex == 0 ? 0 : Convert.ToInt32(ddlState.SelectedValue);
				//um.statecodeLWF = ddlLWFState.SelectedIndex == 0 ? 0 : Convert.ToInt32(ddlLWFState.SelectedValue);
				um.Uzonecode = ddlESIZone.SelectedIndex == 0 ? 0 : Convert.ToInt32(ddlESIZone.SelectedValue);
				um.PhoneNo = txtPhoneNo.Text;
				//um.FaxNo = txtFaxNo.Text;
				um.EmailID = txtEmailID.Text;
				um.WebSite = txtWebSite.Text;
				um.ContactPerson = txtContactPerson.Text;
				um.Status = ddlStatus.SelectedValue;
				um.PFCode = ddlPFZone.SelectedIndex == 0 ? 0 : Convert.ToInt32(ddlPFZone.SelectedValue);
				um.PANno = txtPANno.Text;
				//um.TANno = txtTANno.Text;
				um.CreatedByUserID = Convert.ToInt32(Session["UserID"]);
				um.ModifiedByUserID = Convert.ToInt32(Session["UserID"]);
				um.GSTINID = txtGSTINID.Text;
				//um.UnitStateCode = txtStateCode.Text;
				um.UnitItemYesNo = "No";// ddlUnitItemIssueToEmployeeYesOrNO.SelectedValue;           
				string result = mc.InsertUnitDetail(um);
				if (result == "Record Saved Successfully")
				{
					//SuccessMsg("Record Saved Successfully");
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
			txtUnitName.Text = string.Empty;
			txtAddress.Text = string.Empty;
			txtCityName.Text = string.Empty;
			txtContactPerson.Text = string.Empty;
			txtEmailID.Text = string.Empty;
			txtLocation.Text = string.Empty;
			txtPhoneNo.Text = string.Empty;
			txtPinCode.Text = string.Empty;
			txtSupervisor.Text = string.Empty;
			txtWebSite.Text = string.Empty;
			ddlClientName.SelectedIndex = 0;
			ddlBranch.SelectedIndex = 0;
			ddlRegionName.SelectedIndex = 0;
			ddlBranch.SelectedIndex = 0;
			ddlOperationArea.SelectedIndex = 0;
			ddlState.SelectedIndex = 0;
			ddlESIZone.SelectedIndex = 0;
			ddlPFZone.SelectedIndex = 0;
			ddlStatus.SelectedIndex = 0;
			txtPANno.Text = string.Empty;
			txtGSTINID.Text = string.Empty;
			//txtStateCode.Text = string.Empty;
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
					DataRow[] rows = dtFromSession.Select("unitcode = " + UnitCodeID);
					if (rows.Length > 0)
					{
						DataRow row = rows[0];
						txtUnitCode.Text = rows[0]["unitcode"].ToString();
						txtUnitName.Text = rows[0]["UnitName"].ToString();
						ddlClientName.SelectedItem.Text = rows[0]["clientcode"].ToString();
						string State = rows[0]["State"].ToString();
						string City = rows[0]["City"].ToString();
						string pincode = rows[0]["pincode"].ToString();
						string phoneno = rows[0]["phoneno"].ToString();
						string EmailID = rows[0]["Email"].ToString();
						string WebSite = rows[0]["WebSite"].ToString();
						string PANNo = rows[0]["PANNo"].ToString();
						string ReqAddress = rows[0]["ReqAddress"].ToString();
						string GSTINNo = rows[0]["GSTINNo"].ToString();
						string CINNo = rows[0]["CINNo"].ToString();
						txtCityName.Text = City;
						txtPinCode.Text = pincode;
						txtPhoneNo.Text = phoneno;
						txtEmailID.Text = EmailID;
						txtWebSite.Text = WebSite;
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