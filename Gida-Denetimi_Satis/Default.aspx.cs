using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gida_Denetimi_Satis
{
    public partial class Giriş : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void girişbtn_Click(object sender, EventArgs e)
        {
            if( kullanicitxt.Text == "recep" && sifretxt.Text == "1234" )
            {
                Session["Giris"] = kullanicitxt.Text;
                Response.Redirect("AnaSayfa.aspx");
            }
        }
    }
}