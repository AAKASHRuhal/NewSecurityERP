using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BalLayer;
using System.Data;

namespace NewSecurityERP.Masters
{
    public partial class CompanyMaster : System.Web.UI.Page
    {
        MasterCommonClass mc = new MasterCommonClass();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
            }
        }

        public void BindGridView()
        {
            gvCompanyMaster.DataSource = mc.BindTableData("COMPANY", "compname");
            gvCompanyMaster.DataBind();
        }
    }
}



