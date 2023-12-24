<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="Gida_Denetimi_Satis.AnaSayfa1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .content-container {
            margin: 20px;
            padding: 20px;
            background-color: #f8f9fa; /* Arka plan rengi */
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Gölge efekti */
            max-width: 50%; /* Maksimum genişlik ayarı */
            align-self: flex-end; /* Sol alttan başlaması için */
        }

        .panel-container {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }

        .panel-content {
            text-align: center;
        }

        .panel-image {
            margin: 10px;
            border: 1px solid #ddd; /* Kenarlık rengi */
            border-radius: 5px;
            overflow: hidden;
        }
        .auto-style13 {
            margin-top: 0px;
            margin-left: 153px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="panel-container">
        <div class="panel-content">
            <asp:Panel ID="Panel1" runat="server" CssClass="auto-style11">
                <div>
                    <strong>Biz Kimiz?</strong>
                    <p class="auto-style12">
                        Türk markalarını titizlikle seçme amacıyla çıktığımız bu yolda, laboratuvarlarda yapılan kapsamlı denetimler
                        sonucunda, Türkiye'de üretilen ürünlerin yüksek kalite standartlarına uyması güdüsüyle çalışmalara başladık.
                    </p>
                    <p class="auto-style12">
                        Bu süreçte başlattığımız barkodlama sistemi, her bir ürünü benzersiz bir kimlikle donatmamıza ve üretim
                        aşamalarını detaylı şekilde takip etmemize olanak sağlıyor.
                    </p>
                    <p class="auto-style12">
                        Bu sayede, ürünlerimizin kalitesini güvence altına alıyor, taklit ürünlerin önüne geçiyor ve müşterilerimize
                        tam bir şeffaflık sunuyoruz.
                    </p>
                </div>
            </asp:Panel>
        </div>
        <div class="panel-image">
            <asp:Panel ID="Panel2" runat="server" CssClass="auto-style7" Height="182px">
            </asp:Panel>
        </div>
    </div>
    <div class="content-container">
        <h2 style="text-align: center; color: #007bff;">Sağlıklı Yaşam İçin Türk Markaları</h2>
        <p>
            Türk markalarını titizlikle seçme amacıyla çıktığımız bu yolda, laboratuvarlarda yapılan kapsamlı denetimler sonucunda,
            Türkiye'de üretilen ürünlerin yüksek kalite standartlarına uyması güdüsüyle çalışmalara başladık.
        </p>
        <p>
            Bu süreçte başlattığımız barkodlama sistemi, her bir ürünü benzersiz bir kimlikle donatmamıza ve üretim aşamalarını
            detaylı şekilde takip etmemize olanak sağlıyor. Bu sayede, ürünlerimizin kalitesini güvence altına alıyor, taklit
            ürünlerin önüne geçiyor ve müşterilerimize tam bir şeffaflık sunuyoruz.
        </p>
        <div class="panel-image">
            <asp:Panel ID="Panel3" runat="server" CssClass="auto-style7" Height="182px">
                <asp:Image ID="Image3" runat="server" CssClass="auto-style8" Height="140px" ImageUrl="~/img/HardLine.jpg" Width="130px" />
                <asp:Image ID="Image4" runat="server" CssClass="auto-style9" Height="137px" ImageUrl="~/img/vitamin.jpeg" Width="130px" />
            </asp:Panel>
        </div>
        <p>
            Barkodlama sürecimiz, ürünlerimizin üretim, depolama ve dağıtım aşamalarını detaylı bir şekilde izleyerek, her bir ürünün
            kalite standartlarına uygunluğunu ve güvenilirliğini sağlıyor. Bu çaba, müşterilerimize daha güvenli, kaliteli ve
            sağlıklı ürünler sunma hedefimizi destekliyor.
        </p>
    </div>
</asp:Content>
