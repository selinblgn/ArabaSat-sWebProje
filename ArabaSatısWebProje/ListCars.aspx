<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ListCars.aspx.cs" Inherits="ArabaSatısWebProje.ListCars" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <form id="form1" runat="server">
      <div class="container" style="height: 278px">

          <asp:DataList ID="DataList1" runat="server">
              <ItemTemplate>
                  <table class="nav-justified">
                      <tr>
                          <td>
                              <asp:Label ID="Label1" runat="server" Text='<%# Eval("CarModel") %>'></asp:Label>
                              <asp:Label ID="Label2" runat="server" Text='<%# Eval("BrandName") %>'></asp:Label>
                          </td>
                      </tr>
                      <tr>
                          <td>
                              <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("CarPhoto") %>' />
                          </td>
                      </tr>
                      <tr>
                          <td>
                              <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("CarDescription") %>' TextMode="MultiLine"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td style="height: 20px">
                              <asp:Label ID="Label3" runat="server" Text='<%# Eval("CarFuelType") %>'></asp:Label>
                          </td>
                      </tr>
                      <tr>
                          <td>
                              <asp:Label ID="Label5" runat="server" Text='<%# Eval("CarSeller") %>'></asp:Label>
                              <asp:Label ID="Label4" runat="server" Text='<%# Eval("CarContact") %>'></asp:Label>
                          </td>
                      </tr>
                      <tr>
                          <td>&nbsp;</td>
                      </tr>
                      <tr>
                         <td>
                              <asp:Label ID="Label6" runat="server" Text='<%# Eval("CarPrice") %>'></asp:Label>
                          </td>
                      </tr>
                      <tr>
                          <td>&nbsp;</td>
                      </tr>
                  </table>
              </ItemTemplate>
          </asp:DataList>

       </div>


   </form>
</asp:Content>

