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
        }
    }
}