<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLayout.Master" AutoEventWireup="true" CodeBehind="AdminAddCars.aspx.cs" Inherits="ArabaSatısWebProje.AdminAddCars" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <table class="nav-justified" style="height: 332px">
            <tr>
                <td style="width: 288px">&nbsp;</td>
                <td style="width: 1067px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 288px; height: 20px">Araba Modelini:</td>
                <td style="height: 20px; width: 1067px;">
                    <asp:TextBox ID="tboxModel" runat="server" ReadOnly="True" Text='<%# Eval("CarModel") %>'></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 288px">Araba Fotoğraf Linki:</td>
                <td style="width: 1067px">
                    <asp:TextBox ID="tboxPhoto" runat="server" ReadOnly="True" Text='<%# Eval("CarPhoto") %>'></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 288px; height: 20px">Araba Yakıt Tipi:</td>
                <td style="height: 20px; width: 1067px;">
                    <asp:TextBox ID="tboxFuel" runat="server" ReadOnly="True" Text='<%# Eval("CarFuelType") %>'></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 288px; height: 20px">Açıklama:</td>
                <td style="height: 20px; width: 1067px;">
                    <asp:TextBox ID="tboxDesc" runat="server" TextMode="MultiLine" ReadOnly="True" Text='<%# Eval("CarDescription") %>'></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 288px; height: 20px">Satıcı Ad Soyad:</td>
                <td style="height: 20px; width: 1067px;">
                    <asp:TextBox ID="tboxSeller" runat="server" ReadOnly="True" Text='<%# Eval("CarSeller") %>'></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 288px; height: 20px">Satıcı İletişim Numarası:</td>
                <td style="height: 20px; width: 1067px;">
                    <asp:TextBox ID="tboxContact" runat="server" ReadOnly="True" Text='<%# Eval("CarContact") %>'></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 288px; height: 98px">Araç&nbsp; Fiyatı:</td>
                <td style="height: 98px; width: 1067px;">
                    <asp:TextBox ID="tboxPrice" runat="server" ReadOnly="True" Text='<%# Eval("CarDescription") %>' ></asp:TextBox>
                </td>
            </tr>
                    <tr>
                        <a href="ApproveCars.aspx?carid=<%# Eval("CarID") %>"><div class="btn btn-danger">ONAYLA</div></a>
                    </tr>
        </table>
            </ItemTemplate>


        </asp:DataList>
    </form>
</asp:Content>
