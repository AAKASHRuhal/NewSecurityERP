using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DalLayer;
using System.Diagnostics.Contracts;
using System.Net.NetworkInformation;
using System.Reflection.Emit;
using System.Runtime.Remoting.Metadata.W3cXsd2001;

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
		public int Compid
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
        public int Flag { get; set; }
        public int Compid { get; set; }
        public int Unitcode { get; set; }
        public int Clientcode { get; set; }
        public string Unitname { get; set; }
        public int ERPUnitCode { get; set; }
        public string Status { get; set; }
        public int StateCode { get; set; }
        public string City { get; set; }
        public string Location { get; set; }
        public int Pincode { get; set; }
        public string SupervisorId { get; set; }
        public int BranchCode { get; set; }
        public int RegionCode { get; set; }
        public int OPAreaCode { get; set; }
        public string EmailID { get; set; }
        public string ContactPerson1 { get; set; }
        public string ContactPerson2 { get; set; }
        public string ContactPerson3 { get; set; }
        public string Phone1 { get; set; }
        public string Phone2 { get; set; }
        public string Phone3 { get; set; }
        public string Longitude { get; set; }
        public string Latitude { get; set; }
        public string Address { get; set; }
        public Int32 CreatedByUserID { set; get; }
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
		public int Compid
		{
			get;
			set;
		}

	}
	public class RegionMasters
	{
		public int flag
		{
			get;
			set;
		}
		public int RegionCode
		{
			get;
			set;
		}
		public string RegionName
		{
			get;
			set;
		}
		public string RegionHead
		{
			get;
			set;
		}
		public string ContactNo
		{
			get;
			set;
		}
		public string EmailID
		{
			get;
			set;
		}
		public string RegionRemark
		{
			get;
			set;
		}
		public int Compid
		{
			get;
			set;
		}
		public string CreatedBy
		{
			get;
			set;
		}

	}
	public class BankMasters
	{
		public int flag
		{
			get;
			set;
		}
		public int CompanyID
		{
			get;
			set;
		}
		public int BankCode
		{
			get;
			set;
		}
		public string BankName
		{
			get;
			set;
		}
		public string BranchName
		{
			get;
			set;
		}
		public string AccountNo
		{
			get;
			set;
		}
		public string IFSCode
		{
			get;
			set;
		}
		public string Address
		{
			get;
			set;
		}
		public string Remark
		{
			get;
			set;
		}
		public string CreatedBy
		{
			get;
			set;
		}
	}

	public class OperationAreaMasters
	{
		public int flag
		{
			get;
			set;
		}
		public int OPAreaCode
		{
			get;
			set;
		}
		public string OPAreaName
		{
			get;
			set;
		}
		public string OPAreaRemark
		{
			get;
			set;
		}
		public int Compid
		{
			get;
			set;
		}
		public string CreatedBy
		{
			get;
			set;
		}

	}

	public class StateMasters
	{
		public int flag
		{
			get;
			set;
		}
		public int StateCode
		{
			get;
			set;
		}
		public string StateName
		{
			get;
			set;
		}
		public string StateRemark
		{
			get;
			set;
		}
		public int Compid
		{
			get;
			set;
		}
		public string CreatedBy
		{
			get;
			set;
		}


	}

	public class BranchMasters
	{
		public int BranchRegion
		{
			get;
			set;
		}
		public int BranchState
		{
			get;
			set;
		}
		public int flag
		{
			get;
			set;
		}
		public int BranchCode
		{
			get;
			set;
		}
		public string BranchName
		{
			get;
			set;
		}
		public string Address
		{
			get;
			set;
		}
		public string BranchManager
		{
			get;
			set;
		}
		public string PhoneNo
		{
			get;
			set;
		}
		public string Remark
		{
			get;
			set;
		}
		public string PinCode
		{
			get;
			set;
		}
		public string City
		{
			get;
			set;
		}
		public string CreatedBy
		{
			get; set;
		}
		public int Compid
		{
			get; set;
		}



	}

	public class PFMasters
	{
		public int flag
		{
			get;
			set;
		}
		public int PFCode
		{
			get;
			set;
		}
		public string PFName
		{
			get;
			set;
		}
		public string PFEsttCode
		{
			get;
			set;
		}
		public string LocalOffice
		{
			get;
			set;
		}
		public string Remark
		{
			get;
			set;
		}
		public int Compid
		{
			get;
			set;
		}
		public string CreatedBy
		{
			get;
			set;
		}
	}


	public class TaskMasters
	{
		public int flag { get; set; }
		public int TaskCode { get; set; }
		public string TaskName { get; set; }
		public int SendMail { get; set; }
		public int SendSMS { get; set; }
		public string UserID { get; set; }
		public int CompID { get; set; }
	}


	public class TaskQuestionMasters
	{
		public int flag { get; set; }
		public int QuesId { get; set; }
		public int TaskId { get; set; }
		public string Question { get; set; }
		public string QuestionType { get; set; }
		public string QuestionOptions { get; set; }
		public int IsImage { get; set; }
		public int IsAudio { get; set; }
		public int IsVideo { get; set; }
		public string UserID { get; set; }
	}


	public class GeneralQuestionMasters
	{
		public int flag { get; set; }
		public int QuestionCode { get; set; }
		public string Question { get; set; }
		public string AnswerType { get; set; }
		public int IsImage { get; set; }
		public int IsAudio { get; set; }
		public int IsVideo { get; set; }
		public string UserID { get; set; }
		public int CompID { get; set; }
	}


	public class DepartmentMasters
	{
		public int flag { get; set; }
		public int DepartmentCode { get; set; }
		public string DepartmentName { get; set; }
		public string UserID { get; set; }
		public int CompID { get; set; }
	}


	public class UnitWiseTaskManagmentMasters
	{
		public int flag { get; set; }
		public int id { get; set; }
		public int BranchId { get; set; }
		public int UnitId { get; set; }
		public int TaskId { get; set; }
		public string SubTaskQuesId { get; set; }
		public string UserID { get; set; }
		public int CompID { get; set; }
	}


    public class SendNotificationMasters
    {
        public int flag { get; set; }
        public int NotificationCode { get; set; }
        public string NotificationTitle { get; set; }
        public string NotificationMessage { get; set; }
        public string SendToIds { get; set; }
        public string UserID { get; set; }
        public int CompID { get; set; }
    }

    public class QRCodeUnitDetails
    {
        public string UnitMasterCode { get; set; }
        public string UnitName { get; set; }
        public string Latitude { get; set; }
        public string Longitude { get; set; }
    }


    public class DailyTaskManagmentMasters
    {
        public int flag { get; set; }
        public int ID { get; set; }
        public string SupervisorId { get; set; }
        public int UnitId { get; set; }
        public string StartDate { get; set; }
        public string EndDate { get; set; }
        public string StartTime { get; set; }
        public string EndTime { get; set; }
        public string Status { get; set; }
        public string UserID { get; set; }
        public int CompID { get; set; }

    }

	public class EmployeeMasters
	{
		public string EmpCode { get; set; }
		public int IsNewEmp { get; set; }
		public string EmpName { get; set; }
		public string EmpStatus { get; set; }
		public string EmpFName { get; set; }
		public string Gender { get; set; }
		public string ContactNo { get; set; }
		public DateTime EmpDOJ { get; set; }
		public DateTime EmpDOL { get; set; }
		public int BranchCode { get; set; }
		public int DeptCode { get; set; }
		public int DesiCode { get; set; }
		public int IsSupervisor { get; set; }
		public int CompID { get; set; }
		public string UpdatedBy { get; set; }
		public DateTime UpdatedDate { get; set; }
	}


	public class UserCreationMasters
	{
		public int Flag { get; set; }
		public int Id { get; set; }
		public string EmpCode { get; set; }
		public string UserName { get; set; }
		public string UserId { get; set; }
		public string UserPassword { get; set; }
		public string UserType { get; set; }
		public string Status { get; set; }
		public string EmailId { get; set; }
		public string MobileNo { get; set; }
		public int CompID { get; set; }
		public string CreatedBy { get; set; }
	}

	public class MasterCommonClass
	{
		public MasterCommonClass()
		{
		}
		/*----------------------------------------------------------------------------------Common Function --------------------------------------------------------------*/
		public DataTable BindTableData(string TableName, string OrderName)
		{
			DataTable dt = DBClass.GetDataTable("Select * from " + TableName + " order by " + OrderName + " desc");
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

		public DataTable BindDataTableFromQuery(string SqlQuery)
		{
			DataTable dt = DBClass.GetDataTable(SqlQuery);
			return dt;
		}

		public DataTable BindTableDataValue(string TableName, string TableField, int TableID)
		{
			DataTable dt = DBClass.GetDataTable("Select * from " + TableName + " where " + TableField + " = " + TableID + "");
			return dt;
		}

        public DataTable BindTableDataValue(string TableName, string TableField, string TableID)
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

        public string FatchMaxRecordString(string TableName, string ReturnColumn)
        {
            DataTable dt = DBClass.GetDataTable("SELECT MAX(" + ReturnColumn + ") FROM " + TableName);
			if (String.IsNullOrEmpty(Convert.ToString(dt.Rows[0][0])))
				return "0";
			else
				return Convert.ToString(dt.Rows[0][0]);
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
										new SqlParameter("@CreatedBy",dm.CreatedByUserID),
										new SqlParameter("@Compid",dm.Compid)
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
										new SqlParameter("@StateCode" ,cm.StateID),
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
                                new SqlParameter("@flag" ,um.Flag),
                                new SqlParameter("@Compid" ,um.Compid),
                                new SqlParameter("@Unitcode" ,um.Unitcode),
                                new SqlParameter("@ClientCode" ,um.Clientcode),
                                new SqlParameter("@UnitName" ,um.Unitname),
                                new SqlParameter("@ErpUnitCode" ,um.ERPUnitCode),
                                new SqlParameter("@Status" ,um.Status),
                                new SqlParameter("@StateCode", um.StateCode),
                                new SqlParameter("@City", um.City),
                                new SqlParameter("@Location" ,um.Location),
                                new SqlParameter("@Pincode" ,um.Pincode),
                                new SqlParameter("@SupervisorId" ,um.SupervisorId),
                                new SqlParameter("@Branchcode" ,um.BranchCode),
                                new SqlParameter("@RegionCode" , um.RegionCode),
                                new SqlParameter("@OPAreaCode" , um.OPAreaCode),
								new SqlParameter("@EmailID" ,um.EmailID),
								new SqlParameter("@ContactPerson1" ,um.ContactPerson1),
								new SqlParameter("@ContactPerson2" ,um.ContactPerson2),
								new SqlParameter("@ContactPerson3" ,um.ContactPerson3),
								new SqlParameter("@Phone1" ,um.Phone1),
								new SqlParameter("@Phone2" ,um.Phone2),
								new SqlParameter("@Phone3" ,um.Phone3),
								new SqlParameter("@Longitude" ,um.Longitude),
								new SqlParameter("@Latitude" ,um.Latitude),
                                new SqlParameter("@Address" ,um.Address),
								new SqlParameter("@CreatedByuserID" ,um.CreatedByUserID),
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
										new SqlParameter("@CreatedBy",em.CreatedByUserID),
										new SqlParameter("@compid",em.Compid)

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

		public string InsertRegionDetail(RegionMasters rm)
		{
			SqlParameter[] sp = {
										new SqlParameter("@flag" ,rm.flag),
										new SqlParameter("@RegionCode" ,rm.RegionCode),
										new SqlParameter("@RegionName" ,rm.RegionName),
										new SqlParameter("@RegionHead" ,rm.RegionHead),
										new SqlParameter("@ContactNo" , rm.ContactNo),
										new SqlParameter("@EmailID" , rm.EmailID),
										new SqlParameter("@RegionRemark" ,rm.RegionRemark),
										new SqlParameter("@Compid",rm.Compid),
										new SqlParameter("@CreatedBy",rm.CreatedBy),
									};
			int Result = DBClass.ExecuteProcedure("InsertRegionMasterSP", sp);
			if (Result > 0)
			{
				return "Record Saved Successfully";
			}
			else
			{
				return "Record not Saved";
			}
		}

		public string InsertBankDetail(BankMasters bm)
		{
			SqlParameter[] sp = {
										new SqlParameter("@flag" ,bm.flag),
										new SqlParameter("@bankcode" ,bm.BankCode),
										new SqlParameter("@bankname" ,bm.BankName),
										new SqlParameter("@BranchName" ,bm.BranchName),
										new SqlParameter("@AccNo" ,bm.AccountNo),
										new SqlParameter("@IFSCode" ,bm.IFSCode),
										new SqlParameter("@Address", bm.Address),
										new SqlParameter("@Remark", bm.Remark),
										new SqlParameter("@compid", bm.CompanyID),
										new SqlParameter("@createdBy",bm.CreatedBy)
									};
			int result = DBClass.ExecuteProcedure("InsertBankMasterSP", sp);

			if (result > 0)
			{
				return "Record Saved Successfully";

			}
			else
			{
				return "Record not Saved";
			}

		}

		public string InsertStateDetail(StateMasters sm)
		{
			SqlParameter[] sp = {
										new SqlParameter("@flag" ,sm.flag),
										new SqlParameter("@stateCode" ,sm.StateCode),
										new SqlParameter("@stateName" ,sm.StateName),
										new SqlParameter("@stateRemark" ,sm.StateRemark),
										new SqlParameter("@Compid" ,sm.Compid),
										new SqlParameter("@CreatedBy" ,sm.CreatedBy)
									};
			int result = DBClass.ExecuteProcedure("InsertStateMasterSP", sp);

			if (result > 0)
			{
				return "Record Saved Successfully";

			}
			else
			{
				return "Record not Saved";
			}

		}

		public string InsertOperationAreaDetail(OperationAreaMasters om)
		{
			SqlParameter[] sp = {
										new SqlParameter("@flag" ,om.flag),
										new SqlParameter("@OPAreaCode" ,om.OPAreaCode),
										new SqlParameter("@OPAreaName" ,om.OPAreaName),
										new SqlParameter("@OPAreaRemark" ,om.OPAreaRemark),
										new SqlParameter("@Compid",om.Compid),
										new SqlParameter("@CreatedBy",om.CreatedBy)
									};
			int Result = DBClass.ExecuteProcedure("InsertOperationAreaMasterSP", sp);
			if (Result > 0)
			{
				return "Record Saved Successfully";
			}
			else
			{
				return "Record not Saved";
			}
		}

		public string InsertBranchDetail(BranchMasters bm)
		{
			SqlParameter[] sp = {
										new SqlParameter("@flag" ,bm.flag),
										new SqlParameter("@BranchCode" ,bm.BranchCode),
										new SqlParameter("@BranchName" ,bm.BranchName),
										new SqlParameter("@BManager" ,bm.BranchManager),
										new SqlParameter("@Baddress" ,bm.Address),
										new SqlParameter("@City" ,bm.City),
										new SqlParameter("@PinCode" ,bm.PinCode),
										new SqlParameter("@BPhone" ,bm.PhoneNo),
										new SqlParameter("@Remark", bm.Remark),
										new SqlParameter("@BranchRegion", bm.BranchRegion),
										new SqlParameter("@BranchState", bm.BranchState),
										new SqlParameter("@Compid",bm.Compid),
										new SqlParameter("@CreatedBy",bm.CreatedBy)

									};
			int result = DBClass.ExecuteProcedure("InsertBranchMasterSP", sp);

			if (result > 0)
			{
				return "Record Saved Successfully";

			}
			else
			{
				return "Branch name already exist.";
			}

		}

		public string InsertPFMaster(PFMasters pf)
		{
			SqlParameter[] sp = {
										new SqlParameter("@flag" ,pf.flag),
										new SqlParameter("@PFCode" ,pf.PFCode),
										new SqlParameter("@PFName" ,pf.PFName),
										new SqlParameter("@PFEsttCode" ,pf.PFEsttCode),
										new SqlParameter("@LocalOffice" ,pf.LocalOffice),
										new SqlParameter("@Remark" ,pf.Remark),
										new SqlParameter("@Compid",pf.Compid),
										new SqlParameter("@CreatedBy",pf.CreatedBy)

									};
			int result = DBClass.ExecuteProcedure("InsertPFMasterSP", sp);
			if (result > 0)
			{
				return "Record Saved Successfully";

			}
			else
			{
				return "Record not Saved ";
			}
		}



		public string InsertTaskDetails(TaskMasters tm)
		{
			SqlParameter[] sp = {
										new SqlParameter("@flag" ,tm.flag),
										new SqlParameter("@TaskCode" ,tm.TaskCode),
										new SqlParameter("@TaskName" ,tm.TaskName),
										new SqlParameter("@SendMail" ,tm.SendMail),
										new SqlParameter("@sendSms",tm.SendSMS),
										new SqlParameter("@CreatedBy",tm.UserID),
										new SqlParameter("@CompId",tm.CompID),
									};
			int result = DBClass.ExecuteProcedure("InsertUpdateTaskMasterSP", sp);

			if (result > 0)
			{
				return "Record Saved Successfully";

			}
			else
			{
				return "Record not Saved";
			}
		}

		public string InsertTaskQuestionDetails(TaskQuestionMasters tqm)
		{
			SqlParameter[] sp = {
										new SqlParameter("@flag" ,tqm.flag),
										new SqlParameter("@QuesId" ,tqm.QuesId),
										new SqlParameter("@TaskId" ,tqm.TaskId),
										new SqlParameter("@Question" ,tqm.Question),
										new SqlParameter("@QuestionType" ,tqm.QuestionType),
										new SqlParameter("@QuesOption",tqm.QuestionOptions),
										new SqlParameter("@IsImage",tqm.IsImage),
										new SqlParameter("@IsAudio",tqm.IsAudio),
										new SqlParameter("@IsVideo",tqm.IsVideo),
										new SqlParameter("@CreatedBy",tqm.UserID)
									};
			int result = DBClass.ExecuteProcedure("InsertUpdateTaskQuestionMaster", sp);

			if (result > 0)
			{
				return "Record Saved Successfully";
			}
			else
			{
				return "Record not Saved";
			}
		}


        public string InsertGeneralQuestionDetails(GeneralQuestionMasters qm)
        {
            SqlParameter[] sp = {
                                        new SqlParameter("@flag" ,qm.flag),
                                        new SqlParameter("@QuestionCode" ,qm.QuestionCode),
                                        new SqlParameter("@Question" ,qm.Question),
                                        new SqlParameter("@AnswerType" ,qm.AnswerType),
                                        new SqlParameter("@IsImage",qm.IsImage),
                                        new SqlParameter("@IsAudio",qm.IsAudio),
                                        new SqlParameter("@IsVideo",qm.IsVideo),
                                        new SqlParameter("@CreatedBy",qm.UserID),
                                        new SqlParameter("@CompId",qm.CompID)
                                    };
            int result = DBClass.ExecuteProcedure("InsertUpdateGeneralQuestionMasterSP", sp);

			if (result > 0)
			{
				return "Record Saved Successfully";

			}
			else
			{
				return "Record not Saved";
			}
		}


        public string InsertDepartmentDetails(DepartmentMasters dp)
        {
            SqlParameter[] sp = {
                                        new SqlParameter("@flag" ,dp.flag),
                                        new SqlParameter("@DepartmentCode" ,dp.DepartmentCode),
                                        new SqlParameter("@DepartmentName" ,dp.DepartmentName),
                                        new SqlParameter("@CreatedBy",dp.UserID),
                                        new SqlParameter("@CompId",dp.CompID)
                                    };
            int result = DBClass.ExecuteProcedure("InsertUpdateDepartmentMaster", sp);

			if (result > 0)
			{
				return "Record Saved Successfully";

			}
			else
			{
				return "Record not Saved";
			}
		}


        public string InsertUnitWiseTaskManagmentData(UnitWiseTaskManagmentMasters uwtm)
        {
            SqlParameter[] sp = {
                                        new SqlParameter("@flag" ,uwtm.flag),
                                        new SqlParameter("@id" ,uwtm.id),
                                        new SqlParameter("@BranchId" ,uwtm.BranchId),
                                        new SqlParameter("@UnitId" ,uwtm.UnitId),
                                        new SqlParameter("@TaskId" ,uwtm.TaskId),
                                        new SqlParameter("@SubTaskQuesId" ,uwtm.SubTaskQuesId),
                                        new SqlParameter("@CreatedBy",uwtm.UserID),
                                        new SqlParameter("@CompId",uwtm.CompID)
                                    };
            int result = DBClass.ExecuteProcedure("InsertUpdateUnitWiseTaskSP", sp);

			if (result > 0)
			{
				return "Record Saved Successfully";

			}
			else
			{
				return "Record not Saved";
			}
		}

		public string UpdateEmployee(EmployeeMasters EM)
		{
			SqlParameter[] sp = {
										new SqlParameter("@IsNewEmp" ,EM.IsNewEmp),
										new SqlParameter("@Empcode" ,EM.EmpCode),
										new SqlParameter("@EmpName" ,EM.EmpName),
										new SqlParameter("@EmpFName" ,EM.EmpFName),
										new SqlParameter("@EmpStatus" ,EM.EmpStatus),
										new SqlParameter("@Gender" ,EM.Gender),
										new SqlParameter("@ContactNo" ,EM.ContactNo),
										new SqlParameter("@EmpDOJ" ,EM.EmpDOJ),
										new SqlParameter("@EmpDOL" ,EM.EmpDOL),
										new SqlParameter("@BranchCode" ,EM.BranchCode),
										new SqlParameter("@DeptCode" ,EM.DeptCode),
										new SqlParameter("@DesiCode" ,EM.DesiCode),
										new SqlParameter("@ISSupervisor" ,EM.IsSupervisor),
										new SqlParameter("@UpdatedBy",EM.UpdatedBy),
										new SqlParameter("@CompId",EM.CompID)
									};
			int result = DBClass.ExecuteProcedure("UpdateEmployeeData", sp);

			if (result > 0)
			{
				return "Record Saved Successfully";

			}
			else
			{
				return "Record not Saved";
			}
		}


        public string InsertNotificationDetails(SendNotificationMasters nm)
        {
            SqlParameter[] sp = {
                                        new SqlParameter("@flag" ,nm.flag),
                                        new SqlParameter("@NotificationId" ,nm.NotificationCode),
                                        new SqlParameter("@Title" ,nm.NotificationTitle),
                                        new SqlParameter("@Message" ,nm.NotificationMessage),
                                        new SqlParameter("@ReceiverId" ,nm.SendToIds),
                                        new SqlParameter("@CreatedBy",nm.UserID),
                                        new SqlParameter("@CompId",nm.CompID)
                                    };
            int result = DBClass.ExecuteProcedure("InsertUpdateUserNotificationSP", sp);

            if (result > 0)
            {
                return "Record Saved Successfully";

            }
            else
            {
                return "Record not Saved";
            }
        }


        public string InsertDailyTaskManagmentDetails(DailyTaskManagmentMasters dtm)
        {
            SqlParameter[] sp = {
                                        new SqlParameter("@flag" ,dtm.flag),
                                        new SqlParameter("@id" ,dtm.ID),
                                        new SqlParameter("@SupervisorId" ,dtm.SupervisorId),
                                        new SqlParameter("@UnitId",dtm.UnitId),
                                        new SqlParameter("@StartDate",dtm.StartDate),
                                        new SqlParameter("@EndDate" ,dtm.EndDate),
                                        new SqlParameter("@StartTime" ,dtm.StartTime),
                                        new SqlParameter("@EndTime",dtm.EndTime),
                                        new SqlParameter("@CreatedBy",dtm.UserID),
                                        new SqlParameter("@CompId",dtm.CompID)
                                    };
            int result = DBClass.ExecuteProcedure("InsertUpdateDailyTaskSP", sp);

			if (result > 0)
			{
				return "Record Saved Successfully";

			}
			else
			{
				return "Record not Saved";
			}
		}


        public string InsertUserCreationMasterData(UserCreationMasters um)
        {
            SqlParameter[] sp = {
                                        new SqlParameter("@flag" ,um.Flag),
                                        new SqlParameter("@Id" ,um.Id),
                                        new SqlParameter("@EmpCode" ,um.EmpCode),
                                        new SqlParameter("@UserName" ,um.UserName),
                                        new SqlParameter("@UserId" ,um.UserId),
                                        new SqlParameter("@UserPassword" ,um.UserPassword),
                                        new SqlParameter("@UserType" ,um.UserType),
                                        new SqlParameter("@Status" ,um.Status),
                                        new SqlParameter("@EmailId" ,um.EmailId),
                                        new SqlParameter("@MobileNo" ,um.MobileNo),
                                        new SqlParameter("@CreatedBy",um.CreatedBy),
                                        new SqlParameter("@CompId",um.CompID),
                                    };
            int result = DBClass.ExecuteProcedure("InsertUpdateUserCreationMaster", sp);

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
