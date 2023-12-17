<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="AddCars.aspx.cs" Inherits="ArabaSatısWebProje.AddCars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <table class="nav-justified" style="height: 332px">
            <tr>
                <td style="width: 288px">Araba Markasını Seçiniz:</td>
                <td style="width: 1067px">
                    <asp:DropDownList ID="combobox" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 288px; height: 20px">Araba Modelini Yazınız:</td>
                <td style="height: 20px; width: 1067px;">
                    <asp:TextBox ID="tboxModel" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 288px">Araba Fotoğraf Linki:</td>
                <td style="width: 1067px">
                    <asp:TextBox ID="tboxPhoto" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 288px; height: 20px">Araba Yakıt Tipi Gİriniz:</td>
                <td style="height: 20px; width: 1067px;">
                    <asp:TextBox ID="tboxFuel" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 288px; height: 20px">Açıklama Giriniz:</td>
                <td style="height: 20px; width: 1067px;">
                    <asp:TextBox ID="tboxDesc" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 288px; height: 20px">Satıcı Ad Soyad:</td>
                <td style="height: 20px; width: 1067px;">
                    <asp:TextBox ID="tboxSeller" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 288px; height: 20px">Satıcı İletişim Numarası:</td>
                <td style="height: 20px; width: 1067px;">
                    <asp:TextBox ID="tboxContact" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 288px; height: 98px">Araç&nbsp; Fiyatı:</td>
                <td style="height: 98px; width: 1067px;">
                    <asp:TextBox ID="tboxPrice" runat="server" ></asp:TextBox>
                    <asp:Button ID="btnSend" runat="server" Height="28px" OnClick="Button1_Click" Text="İlanı Yayınla" Width="111px" />
                </td>
            </tr>
        </table>
    </form>
</asp:Content>
