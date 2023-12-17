<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ContactPage.aspx.cs" Inherits="ArabaSatısWebProje.ContactPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:TextBox ID="tboxName" runat="server" ToolTip="İsminizi Giriniz:"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="tboxMail" runat="server" ToolTip="Mail Adresinizi Giriniz:"></asp:TextBox>
        <br />
        <br />
        <asp:TextBox ID="tboxMessage" runat="server" TextMode="MultiLine" ToolTip="Mesajınızı Giriniz:"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="btnSend" runat="server" OnClick="btnSend_Click" Text="Mesajı Gönder" />
    </form>
</asp:Content>
