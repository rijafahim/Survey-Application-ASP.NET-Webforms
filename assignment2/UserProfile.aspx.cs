using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace assignment2
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ans = (string)HttpContext.Current.Session["myvar"];
            User userobj= (User)HttpContext.Current.Session["userObj"];

            occu_lb.Text = userobj.Occu;
            gen_lb.Text = userobj.Gen;
            age_lb.Text = userobj.Age;
            inc_lb.Text = userobj.Incom;
            resl_lb.Text = ans;
        }
    }
}