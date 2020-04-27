using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace WIS_Application
{
    public class DataLogicLayer
    {
        private static string connectionString = ConfigurationManager.ConnectionStrings["WISStudentInfoConnString"].ConnectionString;

        /* -------------- Register ----------------- */
        static public void saveuser(string Stitle, string SFName, string SLName, string SMoName, string SFaName, string Sdob, string Scountry, string SEmailID, string Spwd)
        {
            try
            {
                SqlConnection connection = new SqlConnection(connectionString);
                connection.Open();
                // Query to insert data into the student info table.
                string query = "insert into tblStudent values(@title, @fname, @lname, @mothersname, @fathersname, @dob, @country, @email, @pwd)";
                SqlCommand command = new SqlCommand(query, connection);

                command.Parameters.AddWithValue("@title", Stitle);
                command.Parameters.AddWithValue("@fname", SFName);
                command.Parameters.AddWithValue("@lname", SLName);
                command.Parameters.AddWithValue("@mothersname", SMoName);
                command.Parameters.AddWithValue("@fathersname", SFaName);
                command.Parameters.AddWithValue("@dob", Sdob);
                command.Parameters.AddWithValue("@country", Scountry);
                command.Parameters.AddWithValue("@email", SEmailID);
                // The password value recieved by this function is a hash password to maintain data security.
                command.Parameters.AddWithValue("@pwd", Spwd);

                command.ExecuteNonQuery();
                connection.Close();
            }
            catch(NullReferenceException e)
            {
                Console.WriteLine(e.Message);
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }

        /* ---------- Login -----------*/

        public static bool Authenticate(String email, String pwd)
        {
            try
            {
                SqlConnection connection = new SqlConnection(connectionString);
                connection.Open();

                if (connection.State == ConnectionState.Open)
                {
                    // Query to check for credentials in the student info table.
                    string query = "";
                    query = "select email,pwd from tblStudent where email= '" + email + "' and pwd='" + pwd + "'";
                    SqlCommand command = new SqlCommand(query, connection);
                    SqlDataReader reader = command.ExecuteReader();
                    if (reader.Read())
                    {
                        connection.Close();
                        return true;
                    }
                }
                connection.Close();
            }
            catch(NullReferenceException e)
            {
                Console.WriteLine(e.Message);
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            return false;
        }
    }
}