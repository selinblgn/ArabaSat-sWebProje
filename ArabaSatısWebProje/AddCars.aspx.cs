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
    public partial class AddCars : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(Session["IsUserOnline"]) == true)
            { 
                if (Page.IsPostBack==false)
               {

                    SqlCommand commandListBrand = new SqlCommand("select *  from TableBrand", SqlConnectionClasses.connection);
                    SqlConnectionClasses.CheckConnection();
                    SqlDataReader dr = commandListBrand.ExecuteReader();
                    combobox.DataTextField = "BrandName";
                    combobox.DataValueField = "BrandID";
                    combobox.DataSource = dr;

                    combobox.DataBind();
                    dr.Close();


                }
                else
                {
                    Response.Redirect("Login.aspx");
                }


            }





        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into TableCar(CarModel,CarBrandID,CarFuelType,CarDEscription,CarContact,CarSeller,CarPhoto,CarPrice) values (@pmodel,@pbrand,@pfuel,@pdesc,@pcontact,@pseller,@pphoto,@pprice)",SqlConnectionClasses.connection);
            SqlConnectionClasses.CheckConnection();
            komut.Parameters.AddWithValue("@pmodel", tboxModel.Text);
            komut.Parameters.AddWithValue("@pbrand", Convert.ToInt32(combobox.SelectedValue));
            komut.Parameters.AddWithValue("@pfuel", tboxFuel.Text);
            komut.Parameters.AddWithValue("@pdesc", tboxDesc.Text);
            komut.Parameters.AddWithValue("@pcontact", tboxContact.Text);
            komut.Parameters.AddWithValue("@pseller", tboxSeller.Text);
            komut.Parameters.AddWithValue("@pprice", Convert.ToInt32(tboxPrice.Text));
            komut.Parameters.AddWithValue("@pphoto", tboxPhoto.Text);

            komut.ExecuteNonQuery();




        }
    }
}