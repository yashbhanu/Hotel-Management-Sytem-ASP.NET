<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="hotel_management_system.homepage" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Varela+Round">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <style>
body {
	font-family: 'Varela Round', sans-serif;
}
.form-control {
	box-shadow: none;
	border-radius: 4px;
}	
.navbar {
	background: #fff;
	padding-left: 16px;
	padding-right: 16px;
	border-bottom: 1px solid #dfe3e8;
	border-radius: 0;
}
.nav-link img {
	border-radius: 50%;
	width: 36px;
	height: 36px;
	margin: -8px 0;
	float: left;
	margin-right: 10px;
}
.navbar .navbar-brand {
	padding-left: 0;
	font-size: 20px;
	padding-right: 50px;
}
.navbar .navbar-brand b {
	color: #5c6ac4;		
}
.navbar .form-inline {
	display: inline-block;
}
.navbar .navbar-nav {
	position: relative;
}
.navbar a, .navbar a:active {
	color: #888;
	font-size: 15px;
	background: transparent;
}
.search-box {
	position: relative;
}	
.search-box input {
	padding-right: 35px;
	border-color: #dfe3e8;
	border-radius: 4px !important;
	box-shadow: none
}
.search-box .input-group-text {
	min-width: 35px;
	border: none;
	background: transparent;
	position: absolute;
	right: 0;
	z-index: 9;
	padding: 7px;
	height: 100%;
}
.search-box i {
	color: #a0a5b1;
	font-size: 19px;
}
.navbar .btn-primary, .navbar .btn-primary:active {
	color: #fff;
	background: #5c6ac4 !important;
	padding-top: 8px;
	padding-bottom: 6px;
	border-radius: 4px;
	vertical-align: middle;
	border: none;
	min-width: 120px;
	margin: 2px 0;
}
.navbar .btn-primary:hover, .navbar .btn-primary:focus {		
	color: #fff;
	background: #5765c1 !important;
}
.navbar .action-buttons .dropdown-toggle::after {
	display: none;
}
.search-box .btn span {
	transform: scale(0.9);
	display: inline-block;
}
.navbar .nav-item i {
	font-size: 18px;
}
.navbar .dropdown-item i {
	font-size: 16px;
	min-width: 22px;
}
.navbar .dropdown-menu {
	border-radius: 1px;
	border-color: #e5e5e5;
	box-shadow: 0 2px 8px rgba(0,0,0,.05);
}
.navbar .navbar-nav .dropdown-menu a {
	padding: 8px 20px;
	line-height: normal;
}
.navbar .navbar-form {
	border: none;
}
.navbar .navbar-form-wrapper {
	padding: 0 15px;
}
.navbar .login-form label {
	color: #888;
	font-weight: normal;
}
.navbar .dropdown-menu.login-form {
	width: 280px;
	padding: 20px;
	left: auto;
	right: 0;
	font-size: 14px;
}
.navbar .navbar-nav .dropdown-menu.login-form a {
	padding: 0 !important;
	color: #5c6ac4;
	font-weight: normal;
}
.navbar .navbar-nav .dropdown-menu.login-form a:hover{
	text-decoration: underline;
}
.navbar .dropdown-menu.login-form .checkbox-inline {
	margin-top: 10px;
}
@media (min-width: 1200px){
	.form-inline .input-group {
		width: 300px;
		margin-left: 30px;
	}
}
@media (max-width: 768px){
	.navbar .dropdown-menu.login-form {
		width: 100%;
		padding: 10px 15px;
		background: transparent;
		border: none;
	}
	.navbar .form-inline {
		display: block;
	}
	.navbar .input-group {
		width: 100%;
	}
	.navbar .navbar-nav .btn-primary, .navbar .navbar-nav .btn-primary:active {
		display: block;
	}
}
</style>

    <script>
// Prevent dropdown menu from closing when click inside the form
$(document).on("click", ".navbar-right .dropdown-menu", function(e){
	e.stopPropagation();
});
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <nav class="navbar navbar-expand-lg navbar-light">
                <a href="#" class="navbar-brand">Hotel<b>z</b></a>
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <!-- Collection of nav links, forms, and other content for toggling -->
                <div id="navbarCollapse" class="collapse navbar-collapse justify-content-start">
                    <div class="navbar-nav">
                        <a href="homepage.aspx" class="nav-item nav-link">Home</a>
                        <a href="about.aspx" class="nav-item nav-link">About</a>
                        
                        <a href="hotels.aspx" class="nav-item nav-link active">Hotels</a>
                        <a href="userbooking.aspx" class="nav-item nav-link active">Your Bookings</a>
                        <a href="profile.aspx" class="nav-item nav-link">Profile</a>
                        <a href="login.aspx" class="nav-item nav-link">Log Out</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" class="inputLabel" Font-Bold="False" Font-Size="Medium" Height="40px" Width="90px"></asp:Label>
                    </div>
                </div>
            </nav>

            <div class="container">

                <!-- Portfolio Item Heading -->
                <h1 class="my-4">Book Your Stay
    <small>Welcome To Hotelz</small>
                </h1>

                <!-- Portfolio Item Row -->
                <div class="row">

                    <div class="col-md-8">
                        <img class="img-fluid" src="pics/home.jpg" alt="">
                    </div>

                    <div class="col-md-4">
                        <h3 class="my-3">Best Place to Stay</h3>
                        <p>Our new hotels will play a leading role in prompting peace, enjoy the greatest pleasure in our hotel. If you are looking for peace and tranquility after days spent amongst city streets, our hotels offers refreshments in its refined indoor rooms. Good tourism will follow good hotels. Experience our luxury hotel rooms.</p>
                        <h3 class="my-3">Luxuries offered</h3>
                        <ul>
                            <li>Deluxe Rooms</li>
                            <li>Best Service</li>
                            <li>Low Cost</li>
                            <li>Best Quality Rooms</li>
                        </ul>
                    </div>

                </div>
                <!-- /.row -->

                <!-- Related Projects Row -->
                <h3 class="my-4">Our Hotels</h3>

                <div class="row">

                    <div class="col-md-3 col-sm-6 mb-4">
                        <a href="hotels.aspx">
                            <img class="img-fluid" src="pics/p1.jpg" alt="">
                        </a>
                    </div>

                    <div class="col-md-3 col-sm-6 mb-4">
                        <a href="hotels.aspx">
                            <img class="img-fluid" src="pics/p2.jpg" alt="">
                        </a>
                    </div>

                    <div class="col-md-3 col-sm-6 mb-4">
                        <a href="hotels.aspx">
                            <img class="img-fluid" src="pics/p3.jpg" alt="">
                        </a>
                    </div>

                    <div class="col-md-3 col-sm-6 mb-4">
                        <a href="hotels.aspx">
                            <img class="img-fluid" src="pics/p4.jpg" alt="">
                        </a>
                    </div>

                </div>
                <!-- /.row -->

            </div>
            <!-- /.container -->
    </form>
</body>
</html>
