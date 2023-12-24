using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gida_Denetimi_Satis
{
    public partial class Barkodlama : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Barkod.Text = "#00001";
                Barkod.ReadOnly = true;
            }
        }
        protected void gonder_btn(object sender, EventArgs e)
        {
            /* |Kategori Atama */
            string kategori = Kategori.SelectedItem.Value;
            DepoKaydet.Items.Add("Kategori: " + kategori);
            /* |Kategori Atama */

            
            /* |Barkod Atama| */
            int mevcutbarkod = int.Parse(Barkod.Text.Replace("#", ""));
            mevcutbarkod++;
            Barkod.Text = "#" + mevcutbarkod.ToString("D5"); //5-digit 
            string kaydet = Barkod.Text;
            DepoKaydet.Items.Add("Barkod: " + kaydet);
            /* |Barkod Atama| */

            string deger = new string('*', 25);
            DepoKaydet.Items.Add(deger);
        }
    }
}