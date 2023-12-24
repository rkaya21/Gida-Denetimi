<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="Urunler.aspx.cs" Inherits="Gida_Denetimi_Satis.Urunler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .adet-etiketi {
            font-size: 18px;
            margin: 5px;
        }

        .product-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: flex-start; /* Sayfanın en solundan başlaması için */
            margin: 0;
            padding: 0;
        }

        .product-card {
            width: 200px;
            margin: 10px;
            padding: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        .product-image {
            max-width: 100%;
            height: auto;
            margin-bottom: 10px;
        }

        .auto-style14 {
            max-width: 100%;
            height: 144px;
            margin-bottom: 10px;
            width: 147px;
        }

        .auto-style15 {
            max-width: 100%;
            height: 144px;
            margin-bottom: 10px;
            width: 147px;
        }

        .auto-style16 {
            max-width: 100%;
            height: 144px;
            margin-bottom: 10px;
            width: 147px;
        }

        .auto-style17 {
            max-width: 100%;
            height: 144px;
            margin-bottom: 10px;
            width: 147px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="product-container">
        <div class="product-card">
            <img src="img/hardline.jpg" alt="ürün1" class="auto-style14" />
            <h3>Ürün 1</h3>
            <p>Protein Tozu</p>
            <p>Fiyat: 1800TL</p>
            <asp:Button ID="ekle1" runat="server" Text="Sepete Ekle" OnClick="ekle1_btn" />
            <br />
            <asp:ImageButton ID="arttir1" runat="server" ImageUrl="~/img/up.png" OnClick="arttir1_btn" Height="53px" Width="59px" />
            <asp:Label ID="lblAdet1" runat="server" Text="1" CssClass="adet-etiketi"></asp:Label>
            <asp:ImageButton ID="azalt1" runat="server" ImageUrl="~/img/down.png" OnClick="azalt1_btn" Height="53px" Width="59px" />
        </div>

        <div class="product-card">
            <img src="img/bcaa.jpg" alt="ürün2" class="auto-style15" />
            <h3>Ürün 2</h3>
            <p>BCAA</p>
            <p>Fiyat: 380TL</p>
            <asp:Button ID="ekle2" runat="server" Text="Sepete Ekle" OnClick="ekle2_btn" />
            <br />
            <asp:ImageButton ID="arttir2" runat="server" ImageUrl="~/img/up.png" OnClick="arttir2_btn" Height="53px" Width="59px" />
            <asp:Label ID="lblAdet2" runat="server" Text="1" CssClass="adet-etiketi"></asp:Label>
            <asp:ImageButton ID="azalt2" runat="server" ImageUrl="~/img/down.png" OnClick="azalt2_btn" Height="53px" Width="59px" />
        </div>

        <div class="product-card">
            <img src="img/creatine.jpg" alt="ürün3" class="auto-style17" />
            <h3>Ürün 3</h3>
            <p>Creatine</p>
            <p>Fiyat: 570TL</p>
            <asp:Button ID="ekle3" runat="server" Text="Sepete Ekle" OnClick="ekle3_btn" />
            <br />
            <asp:ImageButton ID="arttir3" runat="server" ImageUrl="~/img/up.png" OnClick="arttir3_btn" Height="53px" Width="59px" />
            <asp:Label ID="lblAdet3" runat="server" Text="1" CssClass="adet-etiketi"></asp:Label>
            <asp:ImageButton ID="azalt3" runat="server" ImageUrl="~/img/down.png" OnClick="azalt3_btn" Height="53px" Width="59px" />
        </div>

        <div class="product-card">
            <img src="img/gainer.jpg" alt="ürün4" class="auto-style16" />
            <h3>Ürün 4</h3>
            <p>Gainer</p>
            <p>Fiyat: 1360TL</p>
            <asp:Button ID="ekle4" runat="server" Text="Sepete Ekle" OnClick="ekle4_btn" />
            <br />
            <asp:ImageButton ID="arttir4" runat="server" ImageUrl="~/img/up.png" OnClick="arttir4_btn" Height="53px" Width="59px" />
            <asp:Label ID="lblAdet4" runat="server" Text="1" CssClass="adet-etiketi"></asp:Label>
            <asp:ImageButton ID="azalt4" runat="server" ImageUrl="~/img/down.png" OnClick="azalt4_btn" Height="53px" Width="59px" />
        </div>
    </div>

    <div style="text-align: center; margin: 20px;">
        <asp:ListBox ID="UrunKaydet" runat="server" Rows="4" Width="296px" Height="147px"></asp:ListBox>
        <br />
        <asp:Button ID="btnHesapla" runat="server" Text="Hesapla" OnClick="hesapla_btn" Height="36px" Width="110px" />
        <br />
        <asp:Button ID="btnTemizle" runat="server" Text="Temizle" OnClick="temizle_btn" Height="36px" Width="110px" />
        <br />
        <asp:Label ID="lblFiyat" runat="server" Visible="False"></asp:Label>
    </div>
</asp:Content>
