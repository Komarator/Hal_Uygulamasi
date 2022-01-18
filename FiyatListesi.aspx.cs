using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HalUygulaması
{
    public partial class FiyatListesi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
           
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

        }

        protected void addButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("UrunEkle.aspx");
        }

        protected void deleteButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("UrunSil.aspx");
        }

        protected void updateButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("UrunGuncelle.aspx");
        }
    }
}