using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace assignment2
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("index.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer("stats.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Server.Transfer("allcustomers.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Server.Transfer("manage.aspx");
        }
    }
}