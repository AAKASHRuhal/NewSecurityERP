using DalLayer;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewSecurityERP
{
    public partial class TrackingDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetOnlineOfflineUsersDetails();
            }
        }

        public void GetOnlineOfflineUsersDetails()
        {
            try
            {
                DataTable dt = DBClass.GetDataTableByProc("GetActiveInactiveUserData");

                // Create DataView for active users
                DataView dvActive = new DataView(dt);
                dvActive.RowFilter = "Status = 'Active'";
                ActiveUserCount.Text = dvActive.Count.ToString();

                // Create DataView for inactive users
                DataView dvInactive = new DataView(dt);
                dvInactive.RowFilter = "Status = 'Inactive'";
                InActiveUserCount.Text = dvInactive.Count.ToString();

                // Bind data to repeaters
                repeaterActiveUsers.DataSource = dvActive;
                repeaterActiveUsers.DataBind();

                repeaterInActiveUser.DataSource = dvInactive;
                repeaterInActiveUser.DataBind();
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, typeof(Page), "Error", $"<script>error({JsonConvert.SerializeObject(ex.Message)})</script>", false);
            }
        }
    }
}