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

	}



}
