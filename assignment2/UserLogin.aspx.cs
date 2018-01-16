using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace assignment2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Context.Items.Add("name", tb_name.Text.ToString());
            Context.Items.Add("incom", tb_incom.Text.ToString());
            Context.Items.Add("occu", tb_occu.Text.ToString());
            Context.Items.Add("geb", genderbtn.SelectedValue.ToString());
            Context.Items.Add("age", tb_age.Text.ToString());

            //String name = Context.Items["name"].ToString();
            //Label3.Text = name;
             Server.Transfer("surveyform.aspx");
           /// Request.Redirect("surveyform.aspx");
            //HttpContext.Current.RewritePath("surveyform.aspx");
        }
    }
}