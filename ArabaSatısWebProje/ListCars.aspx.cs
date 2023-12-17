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

    public partial class ListCars : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            SqlCommand commandlist = new SqlCommand("Select CarID,CarModel,CarBrandID, CarFuelType,CarDEscription,CarContact,CarPhoto,CarSeller,CarConfirmation,CarPrice,BrandID,BrandName from TableCar inner join TableBrand on TableCar.CarBRandID=TableBrand.BrandID where CarConfirmation=@pcon", SqlConnectionClasses.connection);
         
            SqlConnectionClasses.CheckConnection();
            commandlist.Parameters.AddWithValue("@pcon", true);

            SqlDataReader dr = commandlist.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            dr.Close();
            

        }
    }
}