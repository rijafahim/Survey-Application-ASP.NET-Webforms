using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace assignment2
{

    public partial class WebForm2 : System.Web.UI.Page
    {
        protected List<question> ques_list = new List<question>();
        protected List<string> ans_list = new List<string>();
        protected string mystr= "";
      

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
              
            

                User myUser = new User();

                myUser.Name= Context.Items["name"].ToString();
                myUser.Incom= Context.Items["incom"].ToString();
                myUser.Occu = Context.Items["occu"].ToString();
                myUser.Gen = Context.Items["geb"].ToString();
                myUser.Age = Context.Items["age"].ToString();
                myUser.Answers=(string)HttpContext.Current.Session["myvar"];
                HttpContext.Current.Session["userObj"] = myUser;
                HttpContext.Current.Session["myvar"] = "";

                RetrieveQuestion();
                questionList.DataSource = ques_list;
                questionList.DataBind();
               
            }
            //string ans = (string)HttpContext.Current.Session["myvar"];
            //myUser.Answers = (string)HttpContext.Current.Session["myvar"];
            //int len = ques_list.Count;

            

        }


        public void RetrieveQuestion()
        {
            string connectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;" +
                @"Data Source=C:\Users\daany\OneDrive\assignment2\survey_db.mdb;Persist Security Info=False";

            OleDbConnection dbConn = new OleDbConnection(connectionString);

            OleDbCommand cmd = new OleDbCommand("Select Top 10 * FROM [questions] ORDER BY rnd(ID)", dbConn);

            // Open connection
            dbConn.Open();
            using (dbConn)
            {
                OleDbDataReader reader = null;
                reader = cmd.ExecuteReader();
                int i = 1;
                try
                {
                    while (reader.Read())
                    {
                        question new_ques = new question();
                        new_ques.Ques = reader[1].ToString();
                        new_ques.Opt1 = reader[2].ToString();
                        new_ques.Opt2 = reader[3].ToString();
                        new_ques.Opt3 = reader[4].ToString();
                        new_ques.Opt4 = reader[5].ToString();
                        ques_list.Add(new_ques);
                        i++;
                        //Console.WriteLine("ID: " + reader[1].ToString() + "  Name: " + reader[2].ToString() + "  Password: " + reader[3].ToString());
                    }
                    reader.Close();
                    dbConn.Close();
                }
                catch (OleDbException exception)
                {
                    Console.WriteLine("SQL Error occured: " + exception);
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ans = (string)HttpContext.Current.Session["myvar"];
            User userobj = (User)HttpContext.Current.Session["userObj"];
            //Label2.Text = mystr;
            // Response.Write("output: " + mystr);
           
            write_user(ans, userobj);
            Server.Transfer("UserProfile.aspx");
        }

        protected void write_user(string res, User obj)
        {
            string connectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;" +
                 @"Data Source=C:\Users\daany\OneDrive\assignment2\survey_db.mdb;Persist Security Info=False";

            OleDbConnection dbConn = new OleDbConnection(connectionString);

            // Open connection
            dbConn.Open();
            using (dbConn)
            {
                OleDbCommand cmd = new OleDbCommand(
                    "INSERT INTO [User] ([gender], [age], [occu], [income], [result]) VALUES (@gen, @a, @oc, @inc, @res)", dbConn);

                cmd.Parameters.AddWithValue("@gen", obj.Gen.ToString());
                cmd.Parameters.AddWithValue("@a", obj.Age);
                cmd.Parameters.AddWithValue("@oc", obj.Occu);
                cmd.Parameters.AddWithValue("@inc", obj.Incom);
                cmd.Parameters.AddWithValue("@res", res);




                // Execute command
                try
                {
                    //cmd.Parameters["@user"].Value = "tooooooooooooooooooooooooooooooooooo long user name";
                    cmd.ExecuteNonQuery();

                    Response.Write("Row inserted successfully.");
                    dbConn.Close();
                }
                catch (OleDbException exception)
                {
                    Console.WriteLine("SQL Error occured: " + exception);
                }
            }
        }




        protected void questionList_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            string tmp = e.CommandName.ToString();
            string a = ((RadioButton)e.CommandSource).Text.ToString();
            string ans = (string)HttpContext.Current.Session["myvar"];
            ans += " ";
            ans += tmp;
            HttpContext.Current.Session["myvar"] = ans;
           // ans_list.Add(a);
           
          
            //mystr= mystr + "  " + Label2.Text.ToString();
            //System.Diagnostics.Debugger.Break();
        }

        public void check1(object sender, EventArgs e)
        {
           
            foreach (RepeaterItem item in questionList.Items)
            {
                RadioButton btn = item.FindControl("RadioButton1") as RadioButton;
              

                if (btn.Text.Equals((sender as RadioButton).Text))
                {
                   // String temp = btn.Text.ToString();
                    //btn.Text = "1";
                    CommandEventArgs cargs = new CommandEventArgs("1", btn.Text);
                    RepeaterCommandEventArgs rargs = new RepeaterCommandEventArgs(item, btn, cargs);
                    
                    questionList_ItemCommand(btn, rargs);
                    //btn.Text = temp;
                }
            }
        }

        public void check2(object sender, EventArgs e)
        {
            
            foreach (RepeaterItem item in questionList.Items)
            {
                RadioButton btn = item.FindControl("RadioButton2") as RadioButton;
                if (btn.Text.Equals((sender as RadioButton).Text))
                {
                    CommandEventArgs cargs = new CommandEventArgs("2", btn.Text);
                    RepeaterCommandEventArgs rargs = new RepeaterCommandEventArgs(item, btn, cargs);
                    questionList_ItemCommand(btn, rargs);
                }
            }
        }

        public void check3(object sender, EventArgs e)
        {
            
            foreach (RepeaterItem item in questionList.Items)
            {
                RadioButton btn = item.FindControl("RadioButton3") as RadioButton;
                if (btn.Text.Equals((sender as RadioButton).Text))
                {
                    CommandEventArgs cargs = new CommandEventArgs("3", btn.Text);
                    RepeaterCommandEventArgs rargs = new RepeaterCommandEventArgs(item, btn, cargs);
                    questionList_ItemCommand(btn, rargs);
                }
            }
        }

        public void check4(object sender, EventArgs e)
        {
            
            foreach (RepeaterItem item in questionList.Items)
            {
                RadioButton btn = item.FindControl("RadioButton4") as RadioButton;
                if (btn.Text.Equals((sender as RadioButton).Text))
                {
                    CommandEventArgs cargs = new CommandEventArgs("4", btn.Text);
                    RepeaterCommandEventArgs rargs = new RepeaterCommandEventArgs(item, btn, cargs);
                    questionList_ItemCommand(btn, rargs);
                }
            }
        }



    }
}

