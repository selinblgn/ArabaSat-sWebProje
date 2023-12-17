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
    public partial class MessageDelete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int selectedID = Convert.ToInt32(Request.QueryString["id"]);
            SqlCommand commandDelete = new SqlCommand("delete from TableContact where ContactID=@pconıd", SqlConnectionClasses.connection);
            SqlConnectionClasses.CheckConnection();
            commandDelete.Parameters.AddWithValue("@pconıd", selectedID);
            commandDelete.ExecuteNonQuery();
            Response.Redirect("Messages.aspx");




        }
    }
}