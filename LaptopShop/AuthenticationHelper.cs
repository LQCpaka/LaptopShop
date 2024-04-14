using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LaptopShop
{
    public class AuthenticationHelper
    {
        private string connectionString;

        public AuthenticationHelper(string connectionString)
        {
            this.connectionString = connectionString;
        }

        public bool AuthenticateUser(string email, string password)
        {
            string query = "SELECT COUNT(*) FROM UserAccounts WHERE UserEmail = @Email AND UserPassword = @Password";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Email", email);
                    command.Parameters.AddWithValue("@Password", password);
                    connection.Open();
                    int userCount = (int)command.ExecuteScalar();
                    return userCount > 0;
                }
            }
        }
    }
}