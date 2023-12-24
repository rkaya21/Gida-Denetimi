using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gida_Denetimi_Satis
{
    public partial class Urunler : System.Web.UI.Page
    {   
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ekle1_btn(object sender, EventArgs e)
        {
            int adet = Convert.ToInt32(lblAdet1.Text);
            string urunBilgi = "Ürün: Protein Tozu";
            UrunKaydet.Items.Add(urunBilgi);

            int urunFiyat1 = 1800;
            int urunBedeli = adet * urunFiyat1;
            UrunKaydet.Items.Add("Fiyat: " + urunBedeli.ToString() + " TL");

            /*urunfiyat1*/ Session["urunFiyat1"] = urunBedeli;
        }
        protected void ekle2_btn(object sender, EventArgs e)
        {
            int adet = Convert.ToInt32(lblAdet2.Text);
            string urunBilgi2 = "Ürün: BCAA";
            UrunKaydet.Items.Add(urunBilgi2);

            int urunFiyat2 = 380;
            int urunBedeli = adet * urunFiyat2;
            UrunKaydet.Items.Add("Fiyat: " + urunBedeli.ToString() + " TL");
            
            /*urunfiyat2*/ Session["urunFiyat2"] = urunBedeli;
        }
        protected void ekle3_btn(object sender, EventArgs e)
        {
            int adet = Convert.ToInt32(lblAdet3.Text);
            string urunBilgi3 = "Ürün: Creatine";
            UrunKaydet.Items.Add(urunBilgi3);
            
            int urunFiyat3 = 570;
            int urunBedeli = adet * urunFiyat3;
            UrunKaydet.Items.Add("Fiyat: " + urunBedeli.ToString() + " TL");

            /*urunfiyat3*/ Session["urunFiyat3"] = urunBedeli;
        }
        protected void ekle4_btn(object sender, EventArgs e)
        {
            int adet = Convert.ToInt32(lblAdet4.Text);
            string urunBilgi4 = "Ürün: Gainer";
            UrunKaydet.Items.Add(urunBilgi4);

            int urunFiyat4 = 1360;
            int urunBedeli = adet * urunFiyat4;
            UrunKaydet.Items.Add("Fiyat: " + urunBedeli.ToString() + " TL");
            
            /*urunfiyat4*/ Session["urunFiyat4"] = urunBedeli;
        }
        protected void hesapla_btn(object sender, EventArgs e)
        {
            string deger = new string('*', 25);
            UrunKaydet.Items.Add(deger);

            /*  |Session bilgilerimi değişkenlere atadım| */
            int toplamFiyat1 = Convert.ToInt32(Session["urunFiyat1"]);
            int toplamFiyat2 = Convert.ToInt32(Session["urunFiyat2"]);
            int toplamFiyat3 = Convert.ToInt32(Session["urunFiyat3"]);
            int toplamFiyat4 = Convert.ToInt32(Session["urunFiyat4"]);

            
            /* | hepsinitopla değişkenine,atadığım değişkenleri toplattım. | */


            int hepsinitopla = toplamFiyat1 + toplamFiyat2 + toplamFiyat3 + toplamFiyat4;
            lblFiyat.Text = "Toplam Fiyat: " + hepsinitopla.ToString() + " TL";
            lblFiyat.Visible = true;
        }
        protected void temizle_btn(object sender, EventArgs e)
        {
            /* Değişkenleri Temizle */
            Session["urunFiyat1"] = null;
            Session["urunFiyat2"] = null;
            Session["urunFiyat3"] = null;
            Session["urunFiyat4"] = null;

            /* Adet Değişkenleri Temizle */
            lblAdet1.Text = "0";
            lblAdet2.Text = "0";
            lblAdet3.Text = "0";
            lblAdet4.Text = "0";

            /* UrunKaydet ListBox */ UrunKaydet.Items.Clear();
            /* lblFiyat değeri sil boş dize ata */ lblFiyat.Text = string.Empty;
            /*  */ lblFiyat.Visible = false;
        }
        /* buton1 */
        protected void arttir1_btn(object sender, ImageClickEventArgs e)
        {
            int adet = Convert.ToInt32(lblAdet1.Text);
            adet++;
            lblAdet1.Text = adet.ToString();
        }
        protected void azalt1_btn(object sender, ImageClickEventArgs e)
        {
            int adet = Convert.ToInt32(lblAdet1.Text);
            if(adet > 1)
            {
                adet--;
                lblAdet1.Text = adet.ToString();
            }
        }
        /* buton2 */
        protected void arttir2_btn(object sender, ImageClickEventArgs e)
        {
            int adet = Convert.ToInt32(lblAdet2.Text);
            adet++;
            lblAdet2.Text = adet.ToString();
        }
        protected void azalt2_btn(object sender, ImageClickEventArgs e)
        {
            int adet = Convert.ToInt32(lblAdet2.Text);
            if( adet > 1)
            {
                adet--;
                lblAdet2 .Text = adet.ToString();
            }
        }
        /* buton3 */
        protected void arttir3_btn(object sender, ImageClickEventArgs e)
        {
            int adet = Convert.ToInt32(lblAdet3.Text);
            adet++;
            lblAdet3.Text = adet.ToString();
        }
        protected void azalt3_btn(object sender, ImageClickEventArgs e)
        {
            int adet = Convert.ToInt32(lblAdet3.Text);
            if( adet > 1 )
            {
                adet--;
                lblAdet3.Text = adet.ToString();
            }
        }
        /* buton4 */
        protected void arttir4_btn(object sender, ImageClickEventArgs e)
        {
            int adet = Convert.ToInt32(lblAdet4.Text);
            adet++;
            lblAdet4.Text = adet.ToString();
        }
        protected void azalt4_btn(object sender, ImageClickEventArgs e)
        {
            int adet = Convert.ToInt32(lblAdet4.Text);
            if(adet > 1)
            {
                adet--;
                lblAdet4.Text = adet.ToString();
            }
        }
    }
}