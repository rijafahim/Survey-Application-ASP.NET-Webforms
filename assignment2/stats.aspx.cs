using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace assignment2
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        List<User> all_user = new List<User>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                RetrieveUsers();
                int i = all_user.Count;
                int total_c=i;
                int female=0;
                int male=0;
                int age20=0;
                int age2030 = 0;
                int age3040 = 0;
                int age4050 = 0;
                int age50 = 0;

                int inc20 = 0;
                int inc2030 = 0;
                int inc3040 = 0;
                int inc4050 = 0;
                int inc50 = 0;

             


                for (int x=0; x<i; x++)
                {
                    int age = Convert.ToInt32(all_user[x].Age);
                    int income = Convert.ToInt32(all_user[x].Incom);

                    //Response.Write(all_user[x].Occu + "<br/>");

                    //////////////////age///////////
                    if (all_user[x].Gen=="Female")
                    {
                        female++;
                    }
                    if (all_user[x].Gen == "Male")
                    {
                        male++;
                    }

                    if(age<20)
                    {
                        age20++;
                    }
                    else if(age >= 20 && age < 30)
                    {
                        age2030++;
                    }
                    else if (age >= 30 && age <40)
                    {
                        age3040++;
                    }
                    else if (age >= 40 && age < 50)
                    {
                        age4050++;
                    }
                    else if (age > 50)
                    {
                        age50++;
                    }

                    ///////////////////income////////////


                    if (income < 20000)
                    {
                        inc20++;
                    }
                    else if (income >= 20000 && income < 30000)
                    {
                        inc2030++;
                    }
                    else if (income >= 30000 && income < 40000)
                    {
                        inc3040++;
                    }
                    else if (income >= 40000 && income < 50000)
                    {
                        inc4050++;
                    }
                    else if (income > 50000)
                    {
                        inc50++;
                    }

                }


                tltpar_lb.Text = total_c.ToString();
                fc_lbl.Text = female.ToString();
                mc_lbl.Text = male.ToString();

                inc_lb1.Text = inc20.ToString();
                inc_lb2.Text = inc2030.ToString();
                inc_lb3.Text = inc3040.ToString();
                inc_lb4.Text = inc4050.ToString();
                inc_lb5.Text = inc50.ToString();

                lb1.Text = age20.ToString();
                lb2.Text = age2030.ToString();
                lb3.Text = age3040.ToString();
                lb4.Text = age4050.ToString();
                lb5.Text = age50.ToString();



            }

        }


        public void RetrieveUsers()
        {
            string connectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;" +
                @"Data Source=C:\Users\daany\OneDrive\assignment2\survey_db.mdb;Persist Security Info=False";

            OleDbConnection dbConn = new OleDbConnection(connectionString);

            OleDbCommand cmd = new OleDbCommand("Select * FROM [User]", dbConn);

            // Open connection
            dbConn.Open();
            using (dbConn)
            {
                OleDbDataReader reader = null;
                reader = cmd.ExecuteReader();
                
                try
                {
                    while (reader.Read())
                    {
                        User new_user = new User();
                        new_user.Gen = reader[1].ToString();
                        new_user.Age = reader[2].ToString();
                        new_user.Occu= reader[3].ToString();
                        new_user.Incom= reader[4].ToString();
                        new_user.Answers= reader[5].ToString();
                        all_user.Add(new_user);
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
    }



}