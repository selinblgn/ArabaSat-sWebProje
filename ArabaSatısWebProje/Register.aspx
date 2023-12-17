<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ArabaSatısWebProje.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:TextBox ID="tboxMail" runat="server" TextMode="Email" ToolTip="Mail Giriniz"></asp:TextBox>
        <asp:TextBox ID="tboxPassword" runat="server" TextMode="Password" ToolTip="Şifre Giriniz"></asp:TextBox>
        <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Kayıt Ol" Width="124px" />
    </form>
</asp:Content>
