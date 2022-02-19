<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="hotel_management_system.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="loginid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="221px" Width="445px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="customername" HeaderText="customername" SortExpression="customername" />
            <asp:BoundField DataField="customerlastname" HeaderText="customerlastname" SortExpression="customerlastname" />
            <asp:BoundField DataField="emailid" HeaderText="emailid" SortExpression="emailid" />
            <asp:BoundField DataField="loginid" HeaderText="loginid" ReadOnly="True" SortExpression="loginid" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\hotelDB.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [customername], [customerlastname], [emailid], [loginid] FROM [customer] WHERE ([loginid] = @loginid)">
        <SelectParameters>
            <asp:SessionParameter Name="loginid" SessionField="User" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />

</asp:Content>
