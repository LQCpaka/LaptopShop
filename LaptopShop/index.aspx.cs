using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace LaptopShop
{
    public partial class index : System.Web.UI.Page
    {
        static string connectionString = @"Data Source=LQC\SQLEXPRESS;Initial Catalog=LaptopShop;Integrated Security=True;TrustServerCertificate=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserEmail"] != null)
            {
                txtEmailUser.Text = Session["UserEmail"].ToString();
            }
        }



        

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    using (SqlCommand cmd = new SqlCommand("sp_login", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.AddWithValue("@UserEmail", loginEmail.Text);
                        cmd.Parameters.AddWithValue("@UserPassword", loginPass.Text);

                        con.Open();

                        SqlDataReader reader = cmd.ExecuteReader();
                        if (reader.Read())
                        {

                            Session["UserEmail"] = loginEmail.Text;


                            reader.Close();


                            con.Close();

                            Response.Redirect("index.aspx");
                        }
                        else
                        {
                            reader.Close();

                            con.Close();

                        }
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}