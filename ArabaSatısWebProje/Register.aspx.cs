using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using ArabaSatısWebProje.Classes;



namespace ArabaSatısWebProje
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand( "insert into TableUsers(UserMail,UserPassword) values(@pmail,@ppassword)",SqlConnectionClasses.connection);
            SqlConnectionClasses.CheckConnection();
            string newPassword = Sha256Converter.ComputeSha256Hash(tboxPassword.Text);
            komut.Parameters.AddWithValue("@pmail", tboxMail.Text);
            komut.Parameters.AddWithValue("@ppassword", newPassword);
            komut.ExecuteNonQuery();

        }
    }
}