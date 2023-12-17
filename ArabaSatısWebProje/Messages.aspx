<%@ Page Title="" Language="C#" MasterPageFile="~/AdminLayout.Master" AutoEventWireup="true"   EnableEventValidation="true"  CodeBehind="Messages.aspx.cs" Inherits="ArabaSatısWebProje.Messages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <table class="nav-justified">
        <tr>
            <td>Mesajlar</td>
        </tr>
        <tr>
            <td>&nbsp;&nbsp;<asp:DataList ID="DataList1" runat="server">
                <ItemTemplate>
                    <table class="nav-justified">
                        <tr>
                            <td>Gönderen Kişi:<asp:Label ID="lblName" runat="server" Text='<%# Eval("ContactName") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;Gönderene Kişi Mail:<asp:Label ID="lblMail" runat="server" Text='<%# Eval("ContactMail") %>'></asp:Label>
                                <br />
                                Mesaj:</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:TextBox ID="tboxMessage" runat="server" Height="99px" ReadOnly="True" Text='<%# Eval("ContactMessage") %>' TextMode="MultiLine" Width="269px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <a href="MessageDelete.aspx?id=<%# Eval("ContactID")%> "><div class="btn-danger">SİL</div></a>
                                <br />
                                <br />
                                <br />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</form>
</asp:Content>
