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
		public string CreatedByUserID { get; set; }
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
		public string CreatedByUserID
		{
			get;
			set;
		}
	}

	public class ClientMasters
	{

		public int chkComp2 { get; set; }
		public int flag
		{
			get;
			set;
		}
		public int ClientCode
		{
			get;
			set;
		}
		public string ClientName
		{
			get;
			set;
		}
		public string PhoneNo
		{
			get;
			set;
		}
		public string EmailID
		{
			get;
			set;
		}
		public string WebSite
		{
			get;
			set;
		}
		public string HeadOffice
		{
			get;
			set;
		}
		public string Address2
		{
			get;
			set;
		}
		public int StateID
		{
			get;
			set;
		}
		public string CityName
		{
			get;
			set;
		}
		public string PinCode
		{
			get;
			set;
		}
		public string Remark
		{
			get;
			set;
		}
		public int compid
		{
			get;
			set;
		}
		public Int32 CreatedByUserID { set; get; }
		public Int32 ModifiedByUserID { set; get; }
	}

	public class UnitMasters
	{
		public int trnscom2 { get; set; }
		public int flag { get; set; }
		public int compid { get; set; }
		public string UnitItemYesNo { get; set; }
		public int unitcode { get; set; }
		public int clientcode { get; set; }
		public string unitname { get; set; }
		public string Address { get; set; }
		public string City { get; set; }
		public string State { get; set; }
		public int Pincode { get; set; }
		public string Location { get; set; }
		public string supervisor { get; set; }
		public int BRANCHcode { get; set; }
		public int RegionCode { get; set; }
		public int OPAreaCode { get; set; }
		public int statecode { get; set; }
		public int Uzonecode { get; set; }
		public string PhoneNo { get; set; }
		public string FaxNo { get; set; }
		public string EmailID { get; set; }
		public string WebSite { get; set; }
		public string ContactPerson { get; set; }
		public string Status { get; set; }
		public string IsBonus { get; set; }
		public string BonusOn { get; set; }
		public decimal BonusLimit { get; set; }
		public decimal BonusMaxLimit { get; set; }
		public decimal BonusRate { get; set; }
		public string GrPeriod { get; set; }

		public string LeavePeriod { get; set; }
		public int AttendanceCode { get; set; }
		public int desicode { get; set; }
		public decimal LowLimit { get; set; }
		public decimal UpLimit { get; set; }
		public decimal AwardAmt { get; set; }
		public string OTPayable { get; set; }
		public string OTDisplay { get; set; }
		public string SeperateOT { get; set; }
		public string SeperateLeave { get; set; }
		public string SeperateBonus { get; set; }
		public string IsBankCharge { get; set; }
		public string UniformDed { get; set; }
		public string IsPTax { get; set; }
		public string LWP { get; set; }
		public string IsSeperatePFChallan { get; set; }
		public decimal FoodCouponRate { get; set; }
		public string IsESIOnOT { get; set; }
		public string ESINoLimit { get; set; }
		public string PFDeduction { get; set; }
		public string ESIDeduction { get; set; }
		public int SalaryCycleDateFrom { get; set; }
		public int SalaryCycleDateTo { get; set; }
		public decimal EmpESIRate { get; set; }
		public decimal EmprESIRate { get; set; }
		public string IsSepESIChallan { get; set; }
		public int PFCode { get; set; }
		public string PANno { get; set; }
		public string TANno { get; set; }
		public Int32 CreatedByUserID { set; get; }
		public Int32 ModifiedByUserID { set; get; }
		public string IsBonusLimitFix { set; get; }
		public string IsBonusOldRule { set; get; }

		//public string ESINoLimit { set; get; }
		public string IsGratuity { set; get; }
		//public string IsBonus { set; get; }
		public decimal CWF { set; get; }
		public string RateDay { set; get; }

		public string GSTINID { get; set; }
		public string UnitStateCode { get; set; }

		public decimal EmpWF { get; set; }
		public decimal EmprWF { get; set; }
		public decimal GrDays { get; set; }
		public decimal GrRate { get; set; }
		public int IsBonMday { get; set; }
		public int IsBonOT { get; set; }
		public int IsGonCTC { get; set; }
		public int IsBonArrear { get; set; }
		public int IsBonCTC { get; set; }
		public int IsESIonVayu { get; set; }
		public int IsLonCTC { get; set; }
		public int LWFnewRullapp { get; set; }
		public int PFNewRuleApp { get; set; }
		public string AggrementFileName { get; set; }
		public string RateFileName { get; set; }
		public DateTime AggrementDate { get; set; }
		public DateTime AggrementRenewalDate { get; set; }

		public string AutoBill { get; set; }
		public string ddlPFOnSConve { get; set; }
		public string ddlESIOnSConv { get; set; }
		public string ddlPFOnIncentive { get; set; }
		public string ddlESIOnIncentive { get; set; }
		public string ddlPFOnAttBonus { get; set; }
		public string ddlESIOnAttBonus { get; set; }
		public string ddlPfOnOthInc { get; set; }
		public string ddlEsiOnOthInc { get; set; }

		public int statecodeLWF { get; set; }


	}

	public class ESIZONEMaster
	{
		public int flag
		{
			get;
			set;
		}
		public int ZoneCode
		{
			get;
			set;
		}
		public string ZoneName
		{
			get;
			set;
		}
		public string EsttCode
		{
			get;
			set;
		}
		public string LocalOffice
		{
			get;
			set;
		}
		public string ZoneRemark
		{
			get;
			set;
		}
		public string CreatedByUserID
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
										new SqlParameter("@UdhyogAadharNo" ,cm.UdhyogAadharNo),
										new SqlParameter("@CreatedBy",cm.CreatedByUserID)
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
										new SqlParameter("@Remark" ,dm.Remark),
										new SqlParameter("@CreatedBy",dm.CreatedByUserID)
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


		public string InsertClientDetail(ClientMasters cm)
		{
			SqlParameter[] sp = {
										new SqlParameter("@flag" ,cm.flag),
										new SqlParameter("@clientCode" ,cm.ClientCode),
										new SqlParameter("@ClientName" ,cm.ClientName),
										new SqlParameter("@PhoneNo" ,cm.PhoneNo),
										new SqlParameter("@EmailID" ,cm.EmailID),
										new SqlParameter("@WebSite", cm.WebSite),
										new SqlParameter("@HeadOffice" ,cm.HeadOffice),
										new SqlParameter("@Address2" ,cm.Address2),
										//new SqlParameter("@StateCode" ,cm.StateID),
										new SqlParameter("@CityName" ,cm.CityName),
										new SqlParameter("@PinCode", cm.PinCode),
										new SqlParameter("@Remark" ,cm.Remark),
										new SqlParameter("@compid" , cm.compid),
										new SqlParameter("@chkComp2" , cm.chkComp2),
										new SqlParameter("@CreatedByuserID" ,cm.CreatedByUserID),
										new SqlParameter("@UpdatedByuserID" ,cm.ModifiedByUserID),

									};
			int result = DBClass.ExecuteProcedure("InsertClientMasterSP", sp);

			if (result > 0)
			{
				return "Record Saved Successfully";

			}
			else
			{
				return "Record not Saved";
			}

		}

		public string InsertUnitDetail(UnitMasters um)
		{
			SqlParameter[] sp = {
								new SqlParameter("@compid" ,um.compid),
								new SqlParameter("@clientcode" ,um.clientcode),
								new SqlParameter("@unitcode" ,um.unitcode),
								new SqlParameter("@unitname" ,um.unitname),
								new SqlParameter("@Address" ,um.Address),
								new SqlParameter("@City", um.City),
								new SqlParameter("@Pincode" ,um.Pincode),
								new SqlParameter("@Location" ,um.Location),
								new SqlParameter("@supervisor" ,um.supervisor),
								new SqlParameter("@BRANCHcode" ,um.BRANCHcode),
								new SqlParameter("@RegionCode" , um.RegionCode),
								new SqlParameter("@OPAreaCode" , um.OPAreaCode),
								new SqlParameter("@statecode", um.statecode),
								new SqlParameter("@statecodeLWF", um.statecodeLWF),
								new SqlParameter("@Uzonecode" ,um.Uzonecode),
								new SqlParameter("@PhoneNo" ,um.PhoneNo),
								new SqlParameter("@FaxNo" ,um.FaxNo),
								new SqlParameter("@EmailID" ,um.EmailID),
								new SqlParameter("@WebSite", um.WebSite),
								new SqlParameter("@ContactPerson" ,um.ContactPerson),
								new SqlParameter("@Status" ,um.Status),
								new SqlParameter("@PFCode" ,um.PFCode),
								new SqlParameter("@PANno" ,um.PANno),
								new SqlParameter("@TANno" ,um.TANno),
								new SqlParameter("@CreatedByuserID" ,um.CreatedByUserID),
								new SqlParameter("@UpdatedByuserID" ,um.ModifiedByUserID),
								new SqlParameter("@GSTINID" ,um.GSTINID),
								new SqlParameter("@UnitStateCode" ,um.UnitStateCode),
								new SqlParameter("@UnitItemYesNo" ,um.UnitItemYesNo),
								new SqlParameter("@AggrementFileName" ,um.AggrementFileName),
								new SqlParameter("@RateFileName" ,um.RateFileName),
								new SqlParameter("@AggrementDate" ,um.AggrementDate),
								new SqlParameter("@AggrementRenewalDate" ,um.AggrementRenewalDate),
								new SqlParameter("@trnscom2",um.trnscom2),
							};
			int result = DBClass.ExecuteProcedure("InsertUnitMasterSP", sp);

			if (result > 0)
			{
				return "Record Saved Successfully";

			}
			else
			{
				return "Record not Saved ";
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

		public DataTable BindClientDetail(int CompanyID, int ClientCode)
		{
			DataTable dt = new DataTable();
			SqlParameter[] sp = {

										new SqlParameter("@CompanyID" , CompanyID),
										new SqlParameter("@ClientCode" ,ClientCode)

									};
			dt = DBClass.GetDataTableByProc("SelectClientDetialSP", sp);
			return dt;


		}
		public DataTable BindUnitMasterDetail(int CompanyID, int UnitID)
		{
			DataTable dt = new DataTable();
			SqlParameter[] sp = {

										new SqlParameter("@CompanyID" , CompanyID),
										new SqlParameter("@UnitID" , UnitID)

									};
			dt = DBClass.GetDataTableByProc("SelectUnitDetialSP", sp);
			return dt;
		}

		public string InsertESIZONEDetail(ESIZONEMaster em)
		{
			SqlParameter[] sp = {
										new SqlParameter("@flag" ,em.flag),
										new SqlParameter("@ZoneCode" ,em.ZoneCode),
										new SqlParameter("@ZoneName" ,em.ZoneName),
										new SqlParameter("@EsttCode" ,em.EsttCode),
										new SqlParameter("@LocalOffice" ,em.LocalOffice),
										new SqlParameter("@ZoneRemark", em.ZoneRemark),
										new SqlParameter("@CreatedBy",em.CreatedByUserID)

									};
			int result = DBClass.ExecuteProcedure("InsertESIZONEMasterSP", sp);

			if (result > 0)
			{
				return "Record Saved Successfully";

			}
			else
			{
				return "Record not Saved";
			}

		}
	}
}
