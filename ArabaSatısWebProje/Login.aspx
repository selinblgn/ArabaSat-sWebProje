<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ArabaSatısWebProje.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <form id="form1" runat="server">
        <asp:TextBox ID="tboxMail" runat="server" TextMode="Email" ToolTip="Mail Giriniz"></asp:TextBox>
        <asp:TextBox ID="tboxPassword" runat="server" TextMode="Password" ToolTip="Şifre Giriniz"></asp:TextBox>
        <asp:Button ID="btnLogin" runat="server"  Text="Giriş Yap" Width="124px" OnClick="btnLogin_Click" />
    </form>

</asp:Content>
