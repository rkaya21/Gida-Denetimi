<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSayfa.Master" AutoEventWireup="true" CodeBehind="Barkodlama.aspx.cs" Inherits="Gida_Denetimi_Satis.Barkodlama" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container mt-4" style="margin-left: 20px;">
        <!-- Sağa kaydırma için margin-left eklendi -->
        <div class="row">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">
                        <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style14">Gönderme Süreci</span></h3>
                    </div>
                    <div class="card-body">
                        <div class="form-group">
                            <label for="ddlUrun">&nbsp; Ürün Seçiniz:</label>
                            <asp:DropDownList ID="Kategori" runat="server" CssClass="form-control" Style="margin-left: 7px" Width="112px">
                                <asp:ListItem Text="Protein Tozu" Value="ProteinTozu" />
                                <asp:ListItem Text="BCAA" Value="BCAA" />
                                <asp:ListItem Text="Creatine" Value="Creatine" />
                                <asp:ListItem Text="Gainer" Value="Gainer" />
                            </asp:DropDownList>
                        </div>

                        <div class="form-group">
                            <label for="txtBarkod">Barkod Bilgisi:</label>
                            <asp:TextBox ID="Barkod" runat="server" CssClass="form-control" Width="118px" ForeColor="#009933" style="margin-bottom: 0px"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <asp:Button ID="bilgi" runat="server" Text="Gönder" OnClick="gonder_btn" CssClass="auto-style16" />
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">
                        <h5 class="card-title">Barkod Bilgisi</h5>
                    </div>
                    <div class="card-body">
                        <asp:ListBox ID="DepoKaydet" runat="server" CssClass="list-group" Height="191px" Width="267px"></asp:ListBox>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="head">
    <!-- İçerik sayfasına özel head içeriği buraya gelebilir -->
    <style type="text/css">
        .auto-style14 {
            text-decoration: underline;
        }

        .auto-style16 {
            margin-left: 68px;
        }
    </style>
</asp:Content>
