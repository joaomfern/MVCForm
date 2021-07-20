using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassLibrary1
{
    public class Document
    {
        public Document( int categoryid, int bankaccountid, int creditorid, string description, string documentnumber, DateTime documentdate, DateTime duedate, float amount, DateTime paymentdate, int paymenttypeid )
        {
            Categoryid = categoryid;
            Bankaccountid = bankaccountid;
            Creditorid = creditorid;
            Description = description;
            Documentnumber = documentnumber;
            Documentdate = documentdate;
            Duedate = duedate;
            Amount = amount;
            Paymentdate = paymentdate;
            Paymenttypeid = paymenttypeid;
        }

        public int Documentid { get; }
        public int Categoryid { get; }
        public int Bankaccountid { get; }
        public int Creditorid { get; }
        public string Description { get; }
        public string Documentnumber { get; }
        public DateTime Documentdate { get; }
        public DateTime Duedate { get; }
        public float Amount { get; }
        public DateTime Paymentdate { get; }
        public int Paymenttypeid { get; }
    }
}
