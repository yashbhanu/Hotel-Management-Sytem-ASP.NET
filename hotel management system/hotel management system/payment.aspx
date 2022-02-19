<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="payment.aspx.cs" EnableEventValidation="false" Inherits="hotel_management_system.WebForm3" %>
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
    <form action="#" method="post" class="creditly-card-form agileinfo_form">
        <section class="creditly-wrapper wthree, w3_agileits_wrapper">
            <div>
                <div class="vertical_post">
                    <form action="#" method="post">
    
    <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Payment</h2>
    <br />
    <h2>Select From Popular Banks</h2>
    <div class="swit-radio">
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem Value="1" Text="Syndicate Bank"></asp:ListItem>
            <asp:ListItem Value="2" Text="Bank of Baroda">Bank of Baroda</asp:ListItem>
            <asp:ListItem Value="3" Text="Canara Bank">Canara Bank</asp:ListItem>
            <asp:ListItem Value="4" Text="ICICI Bank">ICICI Bank</asp:ListItem>
            <asp:ListItem Value="5" Text="State Bank Of India"></asp:ListItem>
        </asp:RadioButtonList>
        <br />
    </div>
                        <div class="credit-card-wrapper">
                            <div class="first-row form-group">
                                <div class="controls">
    <label class="inputLabel">Name On Card</label>
    <asp:TextBox ID="TextBox1" required="true" placeholder="Your Name" runat="server" ForeColor="Black" class="form-control" Width="783px" />
                                    </div>
    <br />
                                <div class="w3_agileits_card_number_grids">
                                    <div class="w3_agileits_card_number_grid_left">
                                        <div class="controls">
    <label class="inputLabel">Card Number</label>
    <asp:TextBox ID="TextBox2" required="true" class="number credit-card-number form-control" name="number" inputmode="numeric" placeholder="•••• •••• •••• ••••" runat="server" ForeColor="Black" Width="783px" />
                                            </div></div>
    <br />
                                    <div class="w3_agileits_card_number_grid_right">
                                        <div class="controls">
    <label class="inputLabel">CVV</label>
    <asp:TextBox ID="TextBox7" required="true" class="security-code form-control" inputmode="numeric" name="security-code" placeholder="•••" runat="server" ForeColor="Black" Width="783px" />
                                            </div></div>
    <br />
                                    <div class="clear"></div>
                                </div>
                                <div class="controls">
    <label class="inputLabel">Expiration Date</label>
    <asp:TextBox ID="TextBox3" required="true" class="expiration-month-and-year form-control" name="expiration-month-and-year" placeholder="MM / YY" runat="server" ForeColor="Black" Width="783px" />
                                    </div></div>
    <br />
        <asp:Button ID="Book1" runat="server" class="btn btn-primary" Text="Pay" OnClick="Book1_Click" />
                       </div>
        <br />
        <br />
                        
                        </form>
                </div>   </div></section>    
</form>

        
                    </div>
   

</asp:Content>
