<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="hotels.aspx.cs" Inherits="hotel_management_system.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
            .page-header {
                text-align:center;

            }
            .form-horizontal {
                font-size: 30px;
                
                background-color:ghostwhite;
           
            }
            .form-horizontal .col-md-7 group-control{
                text-align:left;
            }
           
                    
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;<br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\hotelDB.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Image], [HotelId], [Name], [Type], [Location], [Price], [Book] FROM [Hotel_Details]"></asp:SqlDataSource>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="HotelId" DataSourceID="SqlDataSource1" RepeatColumns="4" Height="839px" Width="1209px" CellPadding="4" ForeColor="#333333">
        <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <ItemTemplate>
            
            
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Image") %>' Height="300" Width="300" />
            <br />
            HotelId:
            <asp:Label ID="HotelIdLabel" runat="server" Text='<%# Eval("HotelId") %>' />
            <br />
            Name:
            <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
            <br />
            Type:
            <asp:Label ID="TypeLabel" runat="server" Text='<%# Eval("Type") %>' />
            <br />
            Location:
            <asp:Label ID="LocationLabel" runat="server" Text='<%# Eval("Location") %>' />
            <br />
            Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
            <br />
            
            <asp:Button ID="Book1" runat="server" class="btn btn-primary" Text='<%# Eval("Book") %>' PostBackUrl='<%# "~/hotelbook.aspx?HotelId=" + Eval("HotelId") %>' />
            <br />
<br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
    </asp:DataList>
</asp:Content>
