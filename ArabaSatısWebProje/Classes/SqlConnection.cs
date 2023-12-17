using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace ArabaSatısWebProje.Classes
{
    class SqlConnectionClasses
    {
        public static SqlConnection connection = new SqlConnection("Data Source=AYSESELIN\\SQLEXPRESS02;Initial Catalog=ArabaSatıs;Integrated Security=True");
                          

        public static void CheckConnection()
        {
            if (connection.State == System.Data.ConnectionState.Closed)
            
                connection.Open();
        }
        



    }
    }


    
