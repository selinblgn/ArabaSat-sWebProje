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
    public partial class AdminAddCars : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(Session["IsUserAdmin"]) == true)
            {
                SqlCommand komut = new SqlCommand("select * from TableCar where CarConfirmation=@pcon", SqlConnectionClasses.connection);
                SqlConnectionClasses.CheckConnection();
                komut.Parameters.AddWithValue("@pcon", false);
                SqlDataReader dr = komut.ExecuteReader();
                DataList1.DataSource = dr;
                DataList1.DataBind();
                dr.Close();
            }
            else
            {
                Response.Redirect("Login.aspx");
            }


        }
    }
}