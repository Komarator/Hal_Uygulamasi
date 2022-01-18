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
    public partial class UrunGuncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void guncelleButton_Click(object sender, EventArgs e)
        {
            string con = "Data Source=.;Database= EYB; Integrated Security=True;";
            SqlConnection db = new SqlConnection(con);
            db.Open();
            string update = "UPDATE EYB.dbo.Urunler SET urun_adi = '" + urunAdi.Text + "',urun_cinsi = '" + urunCinsi.Text + "',urun_turu = '" + urunTuru.Text + "',satis_fiyati = '" + satisFiyati.Text + "',birim_adi = '" + birimAdi.Text + "',tarih = '" + tarih.SelectedDate.ToString("yyyy-MM-dd") + "' WHERE id = " + urunID.Text + ";"; ;
            SqlCommand cmd = new SqlCommand(update, db);
            int m = cmd.ExecuteNonQuery();
            db.Close();
        }

        protected void araButton_Click(object sender, EventArgs e)
        {
            string con = "Data Source=.;Database= EYB; Integrated Security=True;";
            SqlConnection db = new SqlConnection(con);
            db.Open();
            string query = "SELECT * FROM EYB.dbo.Urunler WHERE id = " + urunID.Text + ";";
            SqlCommand cmd = new SqlCommand(query, db);
            using (SqlDataReader reader = cmd.ExecuteReader())
            {
                if (reader.Read()){
                    urunAdi.Text = reader["urun_adi"] + "";
                    urunCinsi.Text = reader["urun_cinsi"] + "";
                    urunTuru.Text = reader["urun_turu"] + "";
                    satisFiyati.Text = reader["satis_fiyati"] + "";
                    birimAdi.Text = reader["birim_adi"] + "";
                    DateTime date = DateTime.ParseExact(reader["tarih"] + "", "dd.MM.yyyy HH:mm:ss",System.Globalization.CultureInfo.InvariantCulture);
                    tarih.SelectedDate = date;
                }
            }
            //int m = cmd.ExecuteNonQuery();
            db.Close();
        }
    }
}