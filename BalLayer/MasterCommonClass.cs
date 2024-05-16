using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DalLayer;

namespace BalLayer
{
	public class CompanyMasters
	{
		public int flag { get; set; }
		public int compid { get; set; }
		public string compname { get; set; }
		public string ReqAddress { get; set; }
		public string compaddress { get; set; }
		public string City { get; set; }
		public string state { get; set; }
		public string pincode { get; set; }
		public string phoneno { get; set; }
		public string FaxNo { get; set; }
		public string Email { get; set; }
		public string website { get; set; }
		public string RegNo { get; set; }
		public string PANNo { get; set; }
		public string TANno { get; set; }
		public string PFEstCode { get; set; }
		public string ESIEstCode { get; set; }
		public string Staxno { get; set; }
		public string LocalTaxNo { get; set; }
		public string InterStateTaxNo { get; set; }
		public string CINNo { get; set; }
		public string Head1 { get; set; }
		public string Head2 { get; set; }
		public string Head3 { get; set; }
		public string Head4 { get; set; }
		public string Head5 { get; set; }
		public string Head6 { get; set; }
		public string Head7 { get; set; }
		public string Head8 { get; set; }
		public string Head9 { get; set; }
		public string Head10 { get; set; }
		public string Head11 { get; set; }
		public string Head12 { get; set; }
		public string Head13 { get; set; }
		public string Head14 { get; set; }
		public string Head15 { get; set; }
		public string Head16 { get; set; }
		public string Head17 { get; set; }

		public int HeadEdit3 { get; set; }
		public int HeadEdit4 { get; set; }
		public int HeadEdit5 { get; set; }
		public int HeadEdit6 { get; set; }
		public int HeadEdit7 { get; set; }
		public int HeadEdit8 { get; set; }
		public int HeadEdit9 { get; set; }
		public int HeadEdit10 { get; set; }
		public int HeadEdit11 { get; set; }
		public int HeadEdit12 { get; set; }
		public int HeadEdit13 { get; set; }
		public int HeadEdit14 { get; set; }
		public int HeadEdit15 { get; set; }
		public int HeadEdit16 { get; set; }
		public int HeadEdit17 { get; set; }

		public decimal PFRate { get; set; }
		public decimal PFEmpRate { get; set; }
		public decimal PFEmprRate { get; set; }

		public decimal PFRateNew { get; set; }
		public decimal PFEmpRateNew { get; set; }
		public decimal PFEmprRateNew { get; set; }

		public decimal PFPensionLimit { get; set; }
		public decimal ESIEmpRate { get; set; }
		public decimal ESIEmprRate { get; set; }
		public decimal ESIGrossLimit { get; set; }
		public char SalaryTypeDisplayK { get; set; }
		public char SalaryTypeDisplayG { get; set; }
		public char DeductionMappingWith { get; set; }
		public decimal YearlyEL { get; set; }
		public decimal YearlyCL { get; set; }
		public decimal YearlySL { get; set; }
		public decimal AdminCharges20 { get; set; }
		public decimal AdminCharges21 { get; set; }
		public decimal AdminCharges22 { get; set; }
		public decimal CWFAmounts { get; set; }
		public decimal BankChargeDedAmt { get; set; }
		public string GSTINID { get; set; }
		public string CompStateCode { get; set; }
		public string MSMEDRegNo { get; set; }
		public string UdhyogAadharNo { get; set; }
	}

	public class DesignationMasters
	{
		public int flag
		{
			get;
			set;
		}
		public int Desicode
		{
			get;
			set;
		}
		public string Desiname
		{
			get;
			set;
		}
		public string Remark
		{
			get;
			set;
		}
	}

	public class MasterCommonClass
	{
		public MasterCommonClass()
		{
		}
		/*----------------------------------------------------------------------------------Common Function --------------------------------------------------------------*/
		public DataTable BindTableData(string TableName, string OrderName)
		{
			DataTable dt = DBClass.GetDataTable("Select * from " + TableName + " order by " + OrderName + " ");
			return dt;
		}
		public DataTable BindTableData(string TableName, string OrderName, int TableID)
		{
			DataTable dt = DBClass.GetDataTable("Select * from " + TableName + " where compid = " + TableID + " order by " + OrderName + " ");
			return dt;
		}
		public DataTable BindTableData(string TableName, string OrderName, string Field1, int Field2)
		{
			DataTable dt = DBClass.GetDataTable("Select * from " + TableName + " where " + Field1 + "=" + Field2 + " order by " + OrderName + " ");
			return dt;
		}
		public DataTable BindTableDataBranch(string SqlQuery)
		{
			//string SqlQuery = "Select * from " + TableName + " where " + Field1 + "=" + Field2 + " order by " + OrderName + " ";
			DataTable dt = DBClass.GetDataTable(SqlQuery);
			return dt;
		}
		public DataTable BindTableDataValue(string TableName, string TableField, int TableID)
		{
			DataTable dt = DBClass.GetDataTable("Select * from " + TableName + " where " + TableField + " = " + TableID + "");
			return dt;
		}
		public DataTable BindTableDataValue(string TableName, string TableField1, int TableID1, string TableField2, int TableID2)
		{
			DataTable dt = DBClass.GetDataTable("Select * from " + TableName + " where " + TableField1 + " = " + TableID1 + " and " + TableField2 + "=" + TableID2);
			return dt;
		}
		public DataTable BindTableDataValue(string TableName, string TableField1, int TableID1, string TableField2, string TableID2)
		{
			DataTable dt = DBClass.GetDataTable("Select * from " + TableName + " where " + TableField1 + " = " + TableID1 + " and " + TableField2 + "='" + TableID2 + "'");
			return dt;
		}
		public DataTable BindTableDataValue(string TableName, string TableField1, int TableID1, string TableField2, int TableID2, string TableField3, string TableID3)
		{
			DataTable dt = DBClass.GetDataTable("Select * from " + TableName + " where " + TableField1 + " = " + TableID1 + " and " + TableField2 + "=" + TableID2 + " and " + TableField3 + "= '" + TableID3 + "'");
			return dt;
		} 
		public int FatchMaxRecord(string TableName, string ReturnColumn)
		{
			DataTable dt = DBClass.GetDataTable("SELECT MAX(Convert(bigint," + ReturnColumn + ")) FROM " + TableName);
			if (String.IsNullOrEmpty(Convert.ToString(dt.Rows[0][0])))
				return 0;
			else
				return Convert.ToInt32(Convert.ToString(dt.Rows[0][0]));

		}
		public int FatchMaxRecord(string TableName, string ReturnColumn, int Company)
		{
			DataTable dt = DBClass.GetDataTable("SELECT MAX(Convert(bigint," + ReturnColumn + ")) FROM " + TableName + " where compid=" + Company + "");
			if (String.IsNullOrEmpty(Convert.ToString(dt.Rows[0][0])))
				return 0;
			else
				return Convert.ToInt32(Convert.ToString(dt.Rows[0][0]));

		}
	 
		public int FatchMaxRecord(string TableName, string ReturnColumn, string TableField, int TableID)
		{
			DataTable dt = DBClass.GetDataTable("SELECT isnull(MAX (" + ReturnColumn + "),0) FROM " + TableName + " where " + TableField + " = " + TableID + "");
			if (String.IsNullOrEmpty(dt.Rows[0][0].ToString()))
				return 0;
			else
				return Convert.ToInt32(dt.Rows[0][0].ToString());

		}

		// ********************* Methods for Issue Module ************************ Shahzad 03/03/2021

		
		
	
		public string InsertCompanyDetail(CompanyMasters cm)
		{
			SqlParameter[] sp = {
										new SqlParameter("@flag" ,cm.flag),
										new SqlParameter("@compid" ,cm.compid),
										new SqlParameter("@compname" ,cm.compname),
										new SqlParameter("@compaddress" ,cm.compaddress),
										new SqlParameter("@City" ,cm.City),
										new SqlParameter("@state", cm.state),
										new SqlParameter("@pincode" ,cm.pincode),
										new SqlParameter("@phoneno" ,cm.phoneno),
										new SqlParameter("@FaxNo" ,cm.FaxNo),
										new SqlParameter("@Email" ,cm.Email),
										new SqlParameter("@website" ,cm.website),
										new SqlParameter("@RegNo", cm.RegNo),
										new SqlParameter("@PANNo" ,cm.PANNo),
										new SqlParameter("@TANno" ,cm.TANno),
										new SqlParameter("@PFEstCode" ,cm.PFEstCode),
										new SqlParameter("@ESIEstCode" ,cm.ESIEstCode),
										new SqlParameter("@Staxno", cm.Staxno),
										new SqlParameter("@LocalTaxNo" ,cm.LocalTaxNo),
										new SqlParameter("@InterStateTaxNo" ,cm.InterStateTaxNo),
										new SqlParameter("@ReqAddress" ,cm.ReqAddress),
										new SqlParameter("@CINNo" , cm.CINNo),
										new SqlParameter("@SalaryTypeDisplayK" ,cm.SalaryTypeDisplayK),
										new SqlParameter("@SalaryTypeDisplayG" , cm.SalaryTypeDisplayG),
										new SqlParameter("@DeductionMappingWith" , cm.DeductionMappingWith),
										new SqlParameter("@YearlyEL" ,cm.YearlyEL),
										new SqlParameter("@YearlyCL" ,cm.YearlyCL),
										new SqlParameter("@YearlySL" ,cm.YearlySL),
										new SqlParameter("@CWFAmounts" ,cm.CWFAmounts),
										new SqlParameter("@BankChargeDedAmt" ,cm.BankChargeDedAmt),
										new SqlParameter("@GSTINID" ,cm.GSTINID),
										new SqlParameter("@CompStateCode" ,cm.CompStateCode),
										new SqlParameter("@MSMEDRegNo" ,cm.MSMEDRegNo),
										new SqlParameter("@UdhyogAadharNo" ,cm.UdhyogAadharNo)
									};
			int result = DBClass.ExecuteProcedure("InsertCompanyMasterSP", sp);

			if (result > 0)
			{
				return "Record Saved Successfully";

			}
			else
			{
				return "Record not Saved";
			}

		}
		/*------------------------------------------------------------------------------------Unit Master ------------------------------------------------------------------------------------- */
		/// <summary>
		/// UnitMaster :InsertUnitDetail function used for Insert Unit in DataBase
		/// procedure name InsertUnitMasterSP
		/// </summary>
		/// <param name="sm"></param>
		/// <returns></returns>

		public string InsertDesignationDetail(DesignationMasters dm)
		{
			SqlParameter[] sp = {
										new SqlParameter("@flag" ,dm.flag),
										new SqlParameter("@Desicode" ,dm.Desicode),
										new SqlParameter("@Desiname" ,dm.Desiname),
										new SqlParameter("@Remark" ,dm.Remark)
									};
			int result = DBClass.ExecuteProcedure("InsertDesignationMasterSP", sp);

			if (result > 0)
			{
				return "Record Saved Successfully";

			}
			else
			{
				return "Record not Saved";
			}

		}
		public DataTable BindDesignationRateParameter(int CompId, int UnitCode)
		{
			SqlParameter[] sp = {
										new SqlParameter("@compid" , CompId),
										new SqlParameter("@unitcode" , UnitCode)
									};
			DataTable dt = DBClass.GetDataTableByProc("SelectDesignationRateParameters", sp);
			return dt;
		}
		public DataTable BindCompanyHead(int CompId)
		{
			SqlParameter[] sp = {
										new SqlParameter("@compid" , CompId),

									};
			DataTable dt = DBClass.GetDataTableByProc("SelectCompanyHeadSP", sp);
			return dt;
		}
	
		

	}
}
