using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BalLayer;
using System.Data;
using NewSecurityERP.Masters;

namespace NewSecurityERP.Masters
{
	public partial class CompanyMaster : System.Web.UI.Page
	{
		MasterCommonClass mc = new MasterCommonClass();

		#region "Page Load"
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
						//SetPermission();
					}
				}
				else Response.Redirect("~/Default.aspx");
			}
			catch (Exception ex)
			{
				//alert(ex.Message);
				//ScriptManager.RegisterStartupScript(this, typeof(Page), "Error", $"<script>error({JsonConvert.SerializeObject("Error: " + ex.Message)})</script>", false);
			}
		}
		#endregion

		#region "Function :- BindGrid or BindMaxID"
		public void BindGridView()
		{
			gvCompanyMaster.DataSource = mc.BindTableData("COMPANY", "compname");
			gvCompanyMaster.DataBind();
		}

		public void BindMaxID()
		{
			int MaxID = mc.FatchMaxRecord("COMPANY", "compid");
			txtCompanyCode.Text = (MaxID + 1).ToString();
		}
		#endregion

		#region "Button:- Save"
		protected void btnSave_Click(object sender, EventArgs e)
		{
			try
			{
				CompanyMasters cm = new CompanyMasters();
				cm.flag = Convert.ToInt32(ViewState["flag"].ToString());
				cm.compid = Convert.ToInt32(txtCompanyCode.Text);
				cm.compname = txtCompanyName.Text;
				cm.compaddress = txtAddress.Text;
				cm.City = txtCityName.Text;
				cm.state = txtState.Text;
				cm.pincode = txtPinCode.Text;
				cm.phoneno = txtPhoneNo.Text;
				cm.Email = txtEmailID.Text;
				cm.website = txtWebSite.Text;
				cm.PANNo = txtPanNo.Text;
				cm.ReqAddress = txtReqAddress.Text;
				cm.CINNo = txtCINNo.Text;
				cm.GSTINID = txtGSTINID.Text;

				string result = mc.InsertCompanyDetail(cm);

				if (result == "Record Saved Successfully")
				{
					//SuccessMsg("Record Saved Successfully");
					ClearFormText();
					BindGridView();
					BindMaxID();
					ViewState["flag"] = 0;
				}
			}
			catch (Exception ex)
			{
				//ErrorMsg(ex.Message);
			}
		}
		#endregion

		#region "Clear Form"
		protected void ClearFormText()
		{
			txtGSTINID.Text = string.Empty;
			txtCompanyName.Text = string.Empty;
			txtAddress.Text = string.Empty;
			txtState.Text = string.Empty;
			txtCityName.Text = string.Empty;
			txtPinCode.Text = "0";
			txtPhoneNo.Text = string.Empty;
			txtEmailID.Text = string.Empty;
			txtWebSite.Text = string.Empty;
			txtPanNo.Text = string.Empty;
			txtReqAddress.Text = string.Empty;
			txtCINNo.Text = string.Empty;
			btnSave.Text = "Save";
		}

		#endregion

		#region "Button:- Cancel/Clear"
		protected void btnCancel_Click(object sender, EventArgs e)
		{
			try
			{
				ViewState["flag"] = 0; ClearFormText(); BindMaxID();
			}
			catch (Exception ex)
			{
				//ErrorMsg(ex.Message);
			}

		}
		#endregion

		#region "Data Editing or PageIndexing"
		protected void gvCompanyMaster_RowCommand(object sender, GridViewCommandEventArgs e)
		{
			try
			{
				if (e.CommandName == "update")
				{
					//ImageButton imgbtn = (ImageButton)e.CommandSource;
					LinkButton lnkbtn = (LinkButton)e.CommandSource;
					int index = Convert.ToInt32(lnkbtn.CommandArgument);
					GridViewRow row = gvCompanyMaster.Rows[index];
					Label lblCompanyID = (Label)row.FindControl("lblCompanyID");
					Label lblCompName = (Label)row.FindControl("lblCompName");
					Label lblCompAddress = (Label)row.FindControl("lblCompAddress");
					Label lblState = (Label)row.FindControl("lblState");
					Label lblCity = (Label)row.FindControl("lblCity");
					Label lblpincode = (Label)row.FindControl("lblpincode");
					Label lblphoneno = (Label)row.FindControl("lblphoneno");
					Label lblEmailID = (Label)row.FindControl("lblEmailID");
					Label lblWebSite = (Label)row.FindControl("lblWebSite");
					Label lblPANNo = (Label)row.FindControl("lblPANNo");				
					Label lblReqAddress = (Label)row.FindControl("lblReqAddress");
					Label lblCINNo = (Label)row.FindControl("lblCINNo");


					txtCompanyCode.Text = lblCompanyID.Text;
					txtCompanyName.Text = lblCompName.Text;
					txtAddress.Text = lblCompAddress.Text;
					txtState.Text = lblState.Text;
					txtCityName.Text = lblCity.Text;
					txtPinCode.Text = lblpincode.Text;
					txtPhoneNo.Text = lblphoneno.Text;
					txtEmailID.Text = lblEmailID.Text;
					txtWebSite.Text = lblWebSite.Text;
					txtPanNo.Text = lblPANNo.Text;
					txtReqAddress.Text = lblReqAddress.Text;
					txtCINNo.Text = lblCINNo.Text;
					ViewState["flag"] = 1;
					btnSave.Text = "Update";
					
				}
			}
			catch (Exception ex)
			{
				//ErrorMsg(ex.Message);
			}
		}
		protected void gvCompanyMaster_RowUpdating(object sender, GridViewUpdateEventArgs e)
		{

		}
		protected void gvCompanyMaster_RowDeleting(object sender, GridViewDeleteEventArgs e)
		{

		}
		#endregion
	}
}


