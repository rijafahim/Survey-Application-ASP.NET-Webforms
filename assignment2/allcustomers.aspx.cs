using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace assignment2
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        List<User> all_user = new List<User>();
        protected void Page_Load(object sender, EventArgs e)
        {
            RetrieveUsers();
            userList.DataSource = all_user;
            userList.DataBind();

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
                        new_user.Occu = reader[3].ToString();
                        new_user.Incom = reader[4].ToString();
                        new_user.Answers = reader[5].ToString();
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