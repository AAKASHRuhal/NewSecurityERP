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

            // Tracking Masters
            RouteTable.Routes.MapPageRoute("Department-Master", "department-master", "~/Masters/DepartmentMaster.aspx");
            RouteTable.Routes.MapPageRoute("Question-Master", "question-master", "~/Masters/GeneralQuestionMaster.aspx");
            RouteTable.Routes.MapPageRoute("Task-Master", "task-master", "~/Masters/TaskMaster.aspx");
            RouteTable.Routes.MapPageRoute("SubTask-Master", "sub-task-master", "~/Masters/SubTaskMaster.aspx");
            RouteTable.Routes.MapPageRoute("Unit-QRCode", "unit-qr-code", "~/Masters/UnitQRCode.aspx");

            //transaction Routing
            RouteTable.Routes.MapPageRoute("Unit-Wise-Task-Managment", "unit-wise-task-managment", "~/Transaction/UnitWiseTaskManagment.aspx");
            RouteTable.Routes.MapPageRoute("Daily-Task-Assignment", "daily-task-assignment", "~/Transaction/DailyTaskAssignment.aspx");
            RouteTable.Routes.MapPageRoute("Send-Notification", "send-notification", "~/Transaction/SendNotification.aspx");




        }
    }
}