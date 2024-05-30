using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BalLayer;
using Newtonsoft.Json;


namespace NewSecurityERP.Masters
{
	public partial class EmployeeMaster : System.Web.UI.Page
	{
		MasterCommonClass mc = new MasterCommonClass();
		protected void Page_Load(object sender, EventArgs e)
		{
			try
			{
				if (!string.IsNullOrEmpty(Convert.ToString(Session["CompanyID"])))
				{
					if (!IsPostBack)
					{
						BindGridView();
						BindBranchDropDown();
						BindDepartmentDropDown();
						BindDesignationDropDown();
					}
				}
			}
			catch (Exception ex)
			{
				ScriptManager.RegisterStartupScript(this, typeof(Page), "Error", $"<script>error({JsonConvert.SerializeObject(ex.Message)}</script>", false);
			}
		}

		protected void btnShow_Click(object sender, EventArgs e)
		{
			try
			{

				DataTable dt = mc.BindTableDataValue("Employee", "Empcode", Convert.ToInt32(txtEmpCode.Text));
				if (dt.Rows.Count > 0)
				{
					txtEmpName.Text = dt.Rows[0]["Empname"].ToString();
					txtEmpFName.Text = dt.Rows[0]["FatherName"].ToString();
					ddlStatus.SelectedValue = dt.Rows[0]["EmpStatus"].ToString();
					ddlGender.SelectedValue = dt.Rows[0]["Gender"].ToString();
					txtContact.Text = dt.Rows[0]["ContactNo"].ToString();
					DateTime dateFromDatabase = DateTime.ParseExact(dt.Rows[0]["EmpDOJ"].ToString(), "dd-MM-yyyy HH:mm:ss", CultureInfo.InvariantCulture);
					txtdoj.Text = dateFromDatabase.ToString("yyyy-MM-dd");
					//txtdol.Text = dt.Rows[0][""].ToString();
					ddlBranch.SelectedValue = dt.Rows[0]["BranchCode"].ToString();
					ddlDepartment.SelectedValue = dt.Rows[0]["DeptCode"].ToString();
					ddlDesignation.SelectedValue = dt.Rows[0]["DesiCode"].ToString();
				}
				else
				{
					ScriptManager.RegisterStartupScript(this, typeof(Page), "Error", $"<script>error({JsonConvert.SerializeObject("Error: " + "Record Not Found !!!")})</script>", false);
				}
			}
			catch (Exception ex)
			{
				ScriptManager.RegisterStartupScript(this, typeof(Page), "Error", $"<script>error({JsonConvert.SerializeObject("Error: " + ex.Message)})</script>", false);
			}
		}

		protected void btnSave_Click(object sender, EventArgs e)
		{

			try
			{
				EmployeeMasters Empmaster = new EmployeeMasters();
				Empmaster.EmpCode = txtEmpCode.Text;
				Empmaster.EmpName = txtEmpName.Text;
				Empmaster.EmpFName = txtEmpFName.Text;
				Empmaster.EmpStatus = ddlStatus.SelectedValue;
				Empmaster.Gender = ddlGender.SelectedValue;
				Empmaster.ContactNo = txtContact.Text;
				Empmaster.EmpDOJ = Convert.ToDateTime(txtdoj.Text);
				Empmaster.EmpDOL = string.IsNullOrEmpty(txtdol.Text) ? Convert.ToDateTime("1/1/1753 12:00:00 AM") : Convert.ToDateTime(txtdol.Text);
				Empmaster.BranchCode = Convert.ToInt32(ddlBranch.SelectedValue);
				Empmaster.DeptCode = Convert.ToInt32(ddlDepartment.SelectedValue);
				Empmaster.DesiCode = Convert.ToInt32(ddlDesignation.SelectedValue);
				Empmaster.IsSupervisor = Convert.ToInt32(chkSupervisor.Checked ? 1 : 0);
				Empmaster.UpdatedBy = Convert.ToString(Session["UserID"]);
				Empmaster.CompID = Convert.ToInt32(Session["CompanyID"]);
				string Result = mc.UpdateEmployee(Empmaster);
				if (Result == "Record Saved Successfully")
				{
					ClearFormData();
					BindGridView();
					ScriptManager.RegisterStartupScript(this, typeof(Page), "Success", $"<script>success({JsonConvert.SerializeObject("Record Saved Successfully")})</script>", false);
				}
			}
			catch (SqlException SqlEx)
			{
				if (SqlEx.Number == 2627)
				{
					ScriptManager.RegisterStartupScript(this, typeof(Page), "Error", $"<script>error({JsonConvert.SerializeObject("Data already exists.")})</script>", false);
					//BindGridView();
				}
			}
			catch (Exception ex)
			{
				ScriptManager.RegisterStartupScript(this, typeof(Page), "Error", $"<script>error({JsonConvert.SerializeObject(ex.Message)}</script>", false);
			}

		}

		protected void btnCancel_Click(object sender, EventArgs e)
		{
			ClearFormData();
		}

		protected void BindGridView()
		{
			try
			{
				MasterCommonClass mc = new MasterCommonClass();
				DataTable dt = mc.BindTableDataValue("Employee", "ISSuperVisor",1);
				gvEMPMaster.DataSource = dt;
				gvEMPMaster.DataBind();
				Session["EmployeeMasterData"] = dt;
			}
			catch (Exception ex)
			{
				ScriptManager.RegisterStartupScript(this, typeof(Page), "Error", $"<script>error({JsonConvert.SerializeObject("Error: " + ex.Message)})</script>", false);
			}
		}

		public void BindBranchDropDown()
		{
			try
			{
				MasterCommonClass mc = new MasterCommonClass();
				ddlBranch.DataSource = mc.BindTableData("BRANCH", "BranchName");
				ddlBranch.DataTextField = "BranchName";
				ddlBranch.DataValueField = "BranchCode";
				ddlBranch.DataBind();
				ddlBranch.Items.Insert(0, new ListItem("--Select Branch--", "0"));
			}
			catch (Exception ex)
			{
				ScriptManager.RegisterStartupScript(this, typeof(Page), "Error", $"<script>error({JsonConvert.SerializeObject("Error: " + ex.Message)})</script>", false);
			}
		}
		public void BindDepartmentDropDown()
		{
			try
			{
				MasterCommonClass mc = new MasterCommonClass();
				ddlDepartment.DataSource = mc.BindTableData("DEPARTMENTMASTER", "DepartmentCode");
				ddlDepartment.DataTextField = "DepartmentName";
				ddlDepartment.DataValueField = "DepartmentCode";
				ddlDepartment.DataBind();
				ddlDepartment.Items.Insert(0, new ListItem("--Select Department--", "0"));
			}
			catch (Exception ex)
			{
				ScriptManager.RegisterStartupScript(this, typeof(Page), "Error", $"<script>error({JsonConvert.SerializeObject("Error: " + ex.Message)})</script>", false);
			}
		}
		public void BindDesignationDropDown()
		{
			try
			{
				MasterCommonClass mc = new MasterCommonClass();
				ddlDesignation.DataSource = mc.BindTableData("DESIGNATION", "DesiCode");
				ddlDesignation.DataTextField = "DesiName";
				ddlDesignation.DataValueField = "DesiCode";
				ddlDesignation.DataBind();
				ddlDesignation.Items.Insert(0, new ListItem("--Select Designation--", "0"));
			}
			catch (Exception ex)
			{
				ScriptManager.RegisterStartupScript(this, typeof(Page), "Error", $"<script>error({JsonConvert.SerializeObject("Error: " + ex.Message)})</script>", false);
			}
		}

		protected void ClearFormData()
		{
			txtEmpCode.Text = string.Empty;
			txtEmpFName.Text = string.Empty;
			txtEmpName.Text = string.Empty;
			ddlDesignation.SelectedValue = ddlDepartment.SelectedValue = ddlBranch.SelectedValue = "0";
			ddlStatus.ClearSelection();
			ddlGender.ClearSelection();
			txtContact.Text = string.Empty;
			txtdoj.Text = string.Empty;
			txtdol.Text = string.Empty;
			chkSupervisor.Checked = false;
			btnSave.Text = "Save";
			ViewState["flag"] = 0;
		}

		protected void gvEMPMaster_RowCommand(object sender, GridViewCommandEventArgs e)
		{

		}
	}
}