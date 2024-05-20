using DalLayer;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BalLayer
{
    public class CanRegistration
    {
        public string UpdateCanPhoto(string Reg_ID, int Company_ID, string File_Name)
        {
            SqlParameter[] sqlParam = {
                new SqlParameter("@RegId",Reg_ID),
                new SqlParameter("@Compid",Company_ID),
                new SqlParameter("@PhotoName",File_Name),
            };
            int row = DBClass.ExecuteProcedure("UpdateEmpPhotoName", sqlParam);
            if (row > 0)
                return "Success";
            else
                return "Failed";
        }

        public DataTable BindTableDataValue(string SelectQuery)
        {
            DataTable dt = DBClass.GetDataTable(SelectQuery);
            return dt;
        }

        public DataTable GetCandidateDetails(string RegId, string AadharNo, string CompanyId)
        {
            SqlParameter[] sqlParam = {
                new SqlParameter("@RegId",RegId),
                new SqlParameter("@AadharNo",AadharNo),
                new SqlParameter("@Compid",CompanyId)
            };

            DataTable dt = DBClass.GetDataTableByProc("GetCandidateDataSP", sqlParam);
            return dt;
        }


        public DataTable GetCandiDateDetails(string UserId, string CompanyId)
        {
            SqlParameter[] sqlParam = {
                new SqlParameter("@UserId",UserId),
                new SqlParameter("@CompId",CompanyId),
            };

            DataTable dt = DBClass.GetDataTableByProc("GetCandidateDetails", sqlParam);
            return dt;
        }

        public DataTable GetCandiDateDetailsForCorrection(string UserId, string CompanyId)
        {
            SqlParameter[] sqlParam = {
                new SqlParameter("@UserId",UserId),
                new SqlParameter("@CompId",CompanyId),
            };

            DataTable dt = DBClass.GetDataTableByProc("GetCorrectionCandidateDetails", sqlParam);
            return dt;
        }

        public class CandidateRegistrationDocument
        {
            public string PaymentMode { get; set; }
            public string BankName { get; set; }
            public string AccNo { get; set; }
            public string IFSCode { get; set; }
            public string BankAddress { get; set; }
            public string Qualification { get; set; }
            public string IdProof { get; set; }
            public string ResdentProof { get; set; }
            public string ResdentProofIdNumber { get; set; }
            public DateTime ResdentProofExpiryDate { get; set; }
            public string Qualification_Doc { get; set; }
            public string IdProof_Doc { get; set; }
            public string IdProof_Doc_Back { get; set; }
            public string ResdentProof_Doc { get; set; }
            public string ResdentProof_Doc_Back { get; set; }
            public string ExperienceLetterDoc { get; set; }
            public string GunLicenceDoc { get; set; }
            public string HandsImpressionDoc { get; set; }
            public string BankPassbookDoc { get; set; }
            public string RegistrationId { get; set; }
            public int CompId { get; set; }
        }
    }


}
