using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using ArabaSatısWebProje.Classes;
using System.Data;

namespace ArabaSatısWebProje
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Timeout = 5;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("select * from TableUsers where UserMail=@pmail and UserPassword=@ppassword", SqlConnectionClasses.connection);
            SqlConnectionClasses.CheckConnection();
            string shaPass = Sha256Converter.ComputeSha256Hash(tboxPassword.Text);

            komut.Parameters.AddWithValue("@pmail", tboxMail.Text);
            komut.Parameters.AddWithValue("@ppassword", shaPass);

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(komut);
            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {
                if (tboxMail.Text != "a.selinbilgin@gmail.com")
                {
                    Session["IsUserAdmin"] = true;
                    Session["UserMail"] = "a.selinbilgin@gmail.com";
                    Response.Redirect("AdminWebForm.aspx");

                }
                else
                {
                    Session["IsUserOnline"] = true;
                    Session["UserMail"] = dt.Rows[1].ToString();
                    Response.Redirect("LİstCars.aspx");
                }





            }


            else
            {
                Response.Write("Hatalı kullanıcı adı yada şifre");

            }


        }
    }
}