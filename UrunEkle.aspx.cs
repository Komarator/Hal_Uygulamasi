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
    public partial class UrunEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ekle_Click(object sender, EventArgs e)
        {
            string con = "Data Source=.;Database= EYB; Integrated Security=True;";
            SqlConnection db = new SqlConnection(con);
            db.Open();
            string insert = "INSERT INTO EYB.dbo.Urunler (urun_adi,urun_cinsi,urun_turu,satis_fiyati,birim_adi,tarih) VALUES ('" + urunAdi.Text + "','" + urunCinsi.Text + "','" + urunTuru.Text + "','" + satisFiyati.Text + "','" + birimAdi.Text + "','" + tarih.SelectedDate.ToString("yyyy-MM-dd") + "')";
            SqlCommand cmd = new SqlCommand(insert, db);
            int m = cmd.ExecuteNonQuery();
            db.Close();
        }
    }
}