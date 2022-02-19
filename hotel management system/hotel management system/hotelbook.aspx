<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="hotelbook.aspx.cs" Inherits="hotel_management_system.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
    <meta name="keywords" content="Travel App Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
    </script>
    <!--// Meta tag Keywords -->

    <!-- Custom-Files -->
    <link rel="stylesheet" href="css/bootstrap.css">
    <!-- Bootstrap-Core-CSS -->
    <link rel="stylesheet" type="text/css" href="css/jquery.mmenu.all.css">
    <!-- menu -->
    <link rel="stylesheet" href="css/main.css" type="text/css" media="all" />
    <!-- Style-CSS -->
    <link href="css/fontawesome-all.css" rel="stylesheet">
    <!-- Font-Awesome-Icons-CSS -->
    <!-- //Custom-Files -->

    <!-- Web-Fonts -->
    <link href="//fonts.googleapis.com/css?family=Asap:400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
    <!-- //Web-Fonts -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <div class="container">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="HotelId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="18px" Width="934px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="HotelId" HeaderText="HotelId" ReadOnly="True" SortExpression="HotelId" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
            <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:ImageField DataImageUrlField="Image" HeaderText="Image">
                <ControlStyle Height="150px" Width="150px" />
            </asp:ImageField>
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\hotelDB.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [HotelId], [Name], [Type], [Location], [Price], [Image] FROM [Hotel_Details] WHERE ([HotelId] = @HotelId)">
        <SelectParameters>
            <asp:QueryStringParameter Name="HotelId" QueryStringField="HotelId" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
        
          
                <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hotel Booking</h2>
            <label class="inputLabel">Full Name</label>
            <asp:TextBox ID="TextBox1" required="true" runat="server" ForeColor="Black" class="form-control" Width="783px" />
            <br />
            <label class="inputLabel">Email</label>
            <asp:TextBox ID="TextBox2" required="true" runat="server" ForeColor="Black" class="form-control" Width="783px" />
            <br />
        <label class="inputLabel">Phone Number</label>
        <asp:TextBox ID="TextBox7" required="true" runat="server" ForeColor="Black" class="form-control" Width="783px" />
        <br />
            <label class="inputLabel">Check-In date</label>
            <asp:TextBox ID="TextBox3" required="true" runat="server" TextMode="Date" ForeColor="Black" class="form-control" Width="783px" />
            <br />
            <label class="inputLabel">Check-Out Date</label>
            <asp:TextBox ID="TextBox4" required="true" runat="server" TextMode="Date" ForeColor="Black" class="form-control" Width="783px" />
            <br />
            <label class="inputLabel">Enter No. of Guests</label>
        <div class="col-md-6">
            <asp:DropDownList ID="no_of_person"
                class="form-control"
                runat="server"
                AutoPostBack="True"
               
                Width="783px">
            </asp:DropDownList>
        </div>
            <br />
            <label class="inputLabel">Enter No. of Rooms</label>
        <div class="col-md-6">
            <asp:DropDownList ID="DropDownList1"
                class="form-control"
                runat="server"
                AutoPostBack="True"
                
                Width="783px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
        </div>
            <br />
        <label class="inputLabel">
            &nbsp;<asp:Label ID="Label5" runat="server" Font-Size="Large" Text="Total Amount"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:Label ID="Label4" runat="server" Font-Size="Large"></asp:Label>
        </label>
        <br />
            <asp:Button ID="Book1" runat="server" class="btn btn-primary" Text="Book" OnClick="Book1_Click" />
            <br />
        <br />
            <br />
            </div>

</asp:Content>
