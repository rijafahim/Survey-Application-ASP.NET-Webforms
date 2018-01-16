using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace assignment2
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            question new_ques = new question();
            new_ques.Ques = tb_name.Text;
            new_ques.Opt1 = tb_name0.Text;
            new_ques.Opt2 = tb_name1.Text;
            new_ques.Opt3 = tb_name2.Text;
            new_ques.Opt4 = tb_name3.Text;
            write_ques(new_ques);

            Server.Transfer("confirm.aspx");

        }

        protected void write_ques(question obj)
        {
            string connectionString = @"Provider=Microsoft.Jet.OLEDB.4.0;" +
                 @"Data Source=C:\Users\daany\OneDrive\assignment2\survey_db.mdb;Persist Security Info=False";

            OleDbConnection dbConn = new OleDbConnection(connectionString);

            // Open connection
            dbConn.Open();
            using (dbConn)
            {
                OleDbCommand cmd = new OleDbCommand(
                    "INSERT INTO [questions] ([question], [opt1], [opt2], [opt3], [opt4]) VALUES (@gen, @op1, @op2, @op3, @op4)", dbConn);

                cmd.Parameters.AddWithValue("@gen", obj.Ques);
                cmd.Parameters.AddWithValue("@op1", obj.Opt1);
                cmd.Parameters.AddWithValue("@op2", obj.Opt2);
                cmd.Parameters.AddWithValue("@op3", obj.Opt3);
                cmd.Parameters.AddWithValue("@op4", obj.Opt4);




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
    }
}