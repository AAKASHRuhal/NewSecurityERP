using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using BalLayer;

namespace NewSecurityERP
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
		public static string login_btn_Click(string userId, string password, int companyId)
		{
			{
				try
				{
					string value = "";
					//type = type.ToUpper();
					loginCommonClass lic = new loginCommonClass();
					string userid = userId;
					string pass = password;
					int Companyid = companyId;
					string Password = lic.Encrypt(pass);
					DataTable dt = lic.VerifyUser(userid, Password, Companyid);
					if (dt != null && dt.Rows.Count > 0)
					{
						HttpContext.Current.Session["UserID"] = Convert.ToString(dt.Rows[0]["ID"]);
						HttpContext.Current.Session["loginID"] = Convert.ToString(dt.Rows[0]["UserID"]);
						HttpContext.Current.Session["UserName"] = Convert.ToString(dt.Rows[0]["FirstName"]);
						HttpContext.Current.Session["CompanyID"] = Convert.ToString(dt.Rows[0]["compid"]);
						HttpContext.Current.Session["loginType"] = Convert.ToString(dt.Rows[0]["adminlogin"]);
						HttpContext.Current.Session["EmpCode"] = Convert.ToString(dt.Rows[0]["EmpCode"]);
						HttpContext.Current.Session["BranchCode"] = Convert.ToString(dt.Rows[0]["BranchCode"]);
						HttpContext.Current.Session["RegionCode"] = Convert.ToString(dt.Rows[0]["RegionCode"]);
						HttpContext.Current.Session["AdminLogin"] = Convert.ToString(dt.Rows[0]["adminLogin"]);

						//string PayModuleAccess = "TRUE";
						if (dt.Rows[0]["adminlogin"].ToString() == "User")
						{
							value = "/Dashboard.aspx";
						}
						else
						{
							value = "/Dashboard.aspx";
						}

						return value;
					}
					else
					{
						return "Sorry, User Name or Password is wrong.";
						
					}

				}
				catch (Exception ex)
				{
					return "exception";
	
				}


			}
		}
	}
}