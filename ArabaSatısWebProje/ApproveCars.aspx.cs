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
    public partial class ApproveCars : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int selectedID=Convert.ToInt32(Request.QueryString["carid"]);
            SqlCommand komut = new SqlCommand("update TableCar set CarConfirmation=@pcon where CarID=@pcarid", SqlConnectionClasses.connection);
            SqlConnectionClasses.CheckConnection();
            komut.Parameters.AddWithValue("@pcarid", selectedID);
            komut.Parameters.AddWithValue("@pcon", true);
            komut.ExecuteNonQuery();
            Response.Redirect("AdminAddCars.aspx");



        }
    }
}