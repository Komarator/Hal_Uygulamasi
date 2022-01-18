using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace HalUygulaması
{
    public partial class UrunSil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            string con = "Data Source=.;Database= EYB; Integrated Security=True;";
            SqlConnection db = new SqlConnection(con);
            db.Open();
            string delete = "DELETE FROM EYB.dbo.Urunler WHERE id = " + urunID.Text + ";";
            SqlCommand cmd = new SqlCommand(delete, db);
            int m = cmd.ExecuteNonQuery();
            db.Close();
        }
    }
}