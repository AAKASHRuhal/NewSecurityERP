using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace NewSecurityERP
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            RouteTable.Routes.MapPageRoute("", "", "~/Default.aspx");
            RouteTable.Routes.MapPageRoute("Dashboard", "Dashboard", "~/Dashboard.aspx");
            RouteTable.Routes.MapPageRoute("NewUserRegistration", "NewUserRegistration", "~/CandidateRegistration/NewUserRegistration.aspx");
            RouteTable.Routes.MapPageRoute("CandidateApproval", "CandidateApproval", "~/CandidateRegistration/CandidateApproval.aspx");
            RouteTable.Routes.MapPageRoute("ViewCandidateRegistration", "ViewCandidateRegistration", "~/CandidateRegistration/ViewCandidateRegistration.aspx");

            // Masters Routing
            RouteTable.Routes.MapPageRoute("Bank-Master", "bank-master", "~/Masters/BankMaster.aspx");
            RouteTable.Routes.MapPageRoute("Branch-Master", "branch-master", "~/Masters/BranchMaster.aspx");
            RouteTable.Routes.MapPageRoute("Client-Master", "client-master", "~/Masters/ClientMaster.aspx");
            RouteTable.Routes.MapPageRoute("Company-Master", "company-master", "~/Masters/CompanyMaster.aspx");
            RouteTable.Routes.MapPageRoute("Designation-Master", "designation-master", "~/Masters/DesignationMaster.aspx");
            RouteTable.Routes.MapPageRoute("EsiZone-Master", "esizone-master", "~/Masters/ESIZoneMaster.aspx");
            RouteTable.Routes.MapPageRoute("Operation-Area-Master", "operation-area-master", "~/Masters/OperationRegionMaster.aspx");
            RouteTable.Routes.MapPageRoute("PfZone-Master", "pfzone-master", "~/Masters/PFZoneMaster.aspx");
            RouteTable.Routes.MapPageRoute("Region-Master", "region-master", "~/Masters/RegionMaster.aspx");
            RouteTable.Routes.MapPageRoute("State-Master", "state-master", "~/Masters/StateMaster.aspx");
            RouteTable.Routes.MapPageRoute("Unit-Master", "unit-master", "~/Masters/UnitMaster.aspx");

        }
    }
}