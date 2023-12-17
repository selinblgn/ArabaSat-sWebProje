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
    public partial class ContactPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            SqlCommand komut1 = new SqlCommand("Insert into TableContact(ContactMessage,ContactMail,ContactName) values (@pmsg,@pmail,@pname)",SqlConnectionClasses.connection);
          
            SqlConnectionClasses.CheckConnection();
            komut1.Parameters.AddWithValue("@pmsg", tboxMessage.Text);
            komut1.Parameters.AddWithValue("@pmail", tboxMail.Text);
            komut1.Parameters.AddWithValue("@pname", tboxName.Text);

            komut1.ExecuteNonQuery();
            komut1.Connection.Close();





        }
    }
}