using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibrary1
{
    public class Conection
    { 
      public Conection()
            {
                Connection = new SqlConnection(@"Data Source=DESKTOP-0K55P8O; Initial Catalog=ExercicioExtra; Integrated Security=True");
            }

       public SqlConnection Connection { get; }

    }
}
