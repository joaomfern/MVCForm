using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibrary1
{
    public class DocumentsDALcs
    {
        public static void AddDocument (Document document)
        {
            using ( var connection = new Conection().Connection)
            {
                using (var command = new SqlCommand(
                   cmdText: "AddDocument",
                   connection: connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command
                        .Parameters
                        .Add(new SqlParameter("@categoryId", SqlDbType.Int));

                    command
                        .Parameters["@categoryId"]
                        .Value = document.Categoryid;

                    command
                        .Parameters
                        .Add(new SqlParameter("@bankaccountid", SqlDbType.Int));

                    command
                        .Parameters["@bankaccountid"]
                        .Value = document.Bankaccountid;
                    
                    command
                        .Parameters
                        .Add(new SqlParameter("@creditorid", SqlDbType.Int));

                    command
                        .Parameters["@creditorid"]
                        .Value = document.Creditorid;
                    
                    command
                        .Parameters
                        .Add(new SqlParameter("@description", SqlDbType.NVarChar));

                    command
                        .Parameters["@description"]
                        .Value = document.Creditorid;

                    command
                        .Parameters
                        .Add(new SqlParameter("@documentNumber", SqlDbType.NVarChar));

                    command
                        .Parameters["@documentNumber"]
                        .Value = document.Creditorid;

                    command
                        .Parameters
                        .Add(new SqlParameter("@documentdate", SqlDbType.DateTime));

                    command
                        .Parameters["@documentdate"]
                        .Value = document.Documentdate;

                    command
                        .Parameters
                        .Add(new SqlParameter("@duedate", SqlDbType.DateTime));

                    command
                        .Parameters["@duedate"]
                        .Value = document.Duedate;

                    command
                        .Parameters
                        .Add(new SqlParameter("@amount", SqlDbType.Float));

                    command
                        .Parameters["@amount"]
                        .Value = document.Amount;

                    command
                        .Parameters
                        .Add(new SqlParameter("@paymentdate", SqlDbType.DateTime));

                    command
                        .Parameters["@paymentdate"]
                        .Value = document.Paymentdate;

                    command
                        .Parameters
                        .Add(new SqlParameter("@paymenttypeid", SqlDbType.Int));

                    command
                        .Parameters["@paymenttypeid"]
                        .Value = document.Paymenttypeid;

                    connection.Open();

                    command.ExecuteNonQuery();
                }
            }
        }
        public static void EditDocument(Document document)
        {
            using (var connection = new Conection().Connection)
            {
                using (var command = new SqlCommand(
                   cmdText: "EditDocument",
                   connection: connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command
                        .Parameters
                        .Add(new SqlParameter("@documentid", SqlDbType.Int));

                    command
                        .Parameters["@documentid"]
                        .Value = document.Documentid;

                    command
                        .Parameters
                        .Add(new SqlParameter("@categoryId", SqlDbType.Int));

                    command
                        .Parameters["@categoryId"]
                        .Value = document.Categoryid;

                    command
                        .Parameters
                        .Add(new SqlParameter("@bankaccountid", SqlDbType.Int));

                    command
                        .Parameters["@bankaccountid"]
                        .Value = document.Bankaccountid;

                    command
                        .Parameters
                        .Add(new SqlParameter("@creditorid", SqlDbType.Int));

                    command
                        .Parameters["@creditorid"]
                        .Value = document.Creditorid;

                    command
                        .Parameters
                        .Add(new SqlParameter("@description", SqlDbType.NVarChar));

                    command
                        .Parameters["@description"]
                        .Value = document.Creditorid;

                    command
                        .Parameters
                        .Add(new SqlParameter("@documentNumber", SqlDbType.NVarChar));

                    command
                        .Parameters["@documentNumber"]
                        .Value = document.Creditorid;

                    command
                        .Parameters
                        .Add(new SqlParameter("@documentdate", SqlDbType.DateTime));

                    command
                        .Parameters["@documentdate"]
                        .Value = document.Documentdate;

                    command
                        .Parameters
                        .Add(new SqlParameter("@duedate", SqlDbType.DateTime));

                    command
                        .Parameters["@duedate"]
                        .Value = document.Duedate;

                    command
                        .Parameters
                        .Add(new SqlParameter("@amount", SqlDbType.Float));

                    command
                        .Parameters["@amount"]
                        .Value = document.Amount;

                    command
                        .Parameters
                        .Add(new SqlParameter("@paymentdate", SqlDbType.DateTime));

                    command
                        .Parameters["@paymentdate"]
                        .Value = document.Paymentdate;

                    command
                        .Parameters
                        .Add(new SqlParameter("@paymenttypeid", SqlDbType.Int));

                    command
                        .Parameters["@paymenttypeid"]
                        .Value = document.Paymenttypeid;

                    connection.Open();

                    command.ExecuteNonQuery();
                }
            }
        }
        public static void ExcluirUtilizador(int DocumentId)
        {
            using (var connection = new Conection().Connection)
            {
                using (var command = new SqlCommand(
                cmdText: "RemoveDocument",
                connection: connection))
                {
                    command.CommandType = CommandType.StoredProcedure;

                    command.Parameters.Add(new SqlParameter("@documentid", SqlDbType.Int));
                    command.Parameters["@documentid"].Value = DocumentId;

                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
        }
   
    }
    }

