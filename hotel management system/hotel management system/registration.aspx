<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="hotel_management_system.registration" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway|Open+Sans">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <style>
body {
	background: #eeeeee;
	font-family: 'Open Sans', sans-serif;
}
.navbar {
	font-size: 14px;
	background: #fff;
	padding-left: 16px;
	padding-right: 16px;
	border-bottom: 1px solid #d6d6d6;
	box-shadow: 0 0 4px rgba(0,0,0,.1);		
}
.navbar .navbar-brand {
	color: #555;
	padding-left: 0;
	font-size: 20px;
	padding-right: 50px;
	font-family: 'Raleway', sans-serif;
	text-transform: uppercase;
}
.navbar .navbar-brand b {
	color: #f04f01;
}
.navbar .navbar-nav a {
	font-size: 96%;
	font-weight: bold;		
	text-transform: uppercase;
}
.navbar .navbar-nav a.active {
	color: #f04f01 !important;
	background: transparent !important;
}
.search-box input.form-control, .search-box .btn {
	font-size: 14px;
	border-radius: 2px !important;
}
.search-box .input-group-append {
	padding-left: 4px;		
}
.search-box input.form-control:focus {
	border-color: #f04f01;
	box-shadow: 0 0 8px rgba(240,79,1,0.2);
}
.search-box .btn-danger, .search-box .btn-danger:active {
	font-weight: bold;
	background: #f04f01 !important;
	border-color: #f04f01;
	text-transform: uppercase;
	min-width: 90px;
}
.search-box .btn-danger:hover, .search-box .btn-danger:focus {
	background: #eb4e01 !important;
	box-shadow: 0 0 8px rgba(240,79,1,0.2);
}
.search-box .btn span {
	transform: scale(0.9);
	display: inline-block;
}
.navbar .nav-item.open > a {
	background: none !important;
}
.navbar .dropdown-menu {
	border-radius: 1px;
	border-color: #e5e5e5;
	box-shadow: 0 2px 8px rgba(0,0,0,.05);
}
.navbar .dropdown-menu a, .navbar .dropdown-menu a:active {
	color: #777;
	padding: 8px 20px;
	font-size: 13px;
  	background: #fff;
}
.navbar .dropdown-menu a:hover, .navbar .dropdown-menu a:focus {
	color: #333;
  	background: #f8f9fa;
}
@media (min-width: 992px){
	.form-inline .input-group .form-control {
		width: 225px;			
	}
}
@media (max-width: 992px){
	.form-inline {
		display: block;
	}
}
</style>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <style>
.login-form {
    width: 340px;
    margin: 30px auto;
  	font-size: 15px;
}
.login-form form {
    margin-bottom: 15px;
    background: #f7f7f7;
    box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
    padding: 30px;
}
.login-form h2 {
    margin: 0 0 15px;
}
.login-form .hint-text {
    color: #777;
    padding-bottom: 15px;
    text-align: center;
  	font-size: 13px; 
}
.form-control, .btn {
    min-height: 38px;
    border-radius: 2px;
}
.login-btn {        
    font-size: 15px;
    font-weight: bold;
}
.or-seperator {
    margin: 20px 0 10px;
    text-align: center;
    border-top: 1px solid #ccc;
}
.or-seperator i {
    padding: 0 10px;
    background: #f7f7f7;
    position: relative;
    top: -11px;
    z-index: 1;
}
.social-btn .btn {
    margin: 10px 0;
    font-size: 15px;
    text-align: left; 
    line-height: 24px;       
}
.social-btn .btn i {
    float: left;
    margin: 4px 15px  0 5px;
    min-width: 15px;
}
.input-group-addon .fa{
    font-size: 18px;
}
</style>
</head>
<body style="background-position: right; background-image: url('pics/hotell.jpg'); background-attachment: inherit;">
    <form id="form1" runat="server">
    <div>

        <div class="login-form">
            <br />
            <form action="/examples/actions/confirmation.php" method="post">
                <h1 class="text-center">&nbsp;</h1>
                <h1 class="text-center">&nbsp;</h1>
                <h1 class="text-center">&nbsp;</h1>
                <h1 class="text-center" style="color: #FFFFFF">Register</h1>
                <p class="text-center">&nbsp;</p>


                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text">
                                <span class="fa fa-user"></span>
                            </span>
                        </div>
                        <asp:TextBox ID="Textname" class="form-control" name="Name" placeholder="Name" required="required" runat="server"></asp:TextBox>

                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text">
                                <span class="fa fa-user"></span>
                            </span>
                        </div>
                        <asp:TextBox ID="Textlast" class="form-control" name="Last Name" placeholder="Last Name" required="required" runat="server"></asp:TextBox>

                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text">
                                <span class="fa fa-user"></span>
                            </span>
                        </div>
                        <asp:TextBox ID="Textemail" class="form-control" name="Email" placeholder="Email" required="required" TextMode="Email" runat="server"></asp:TextBox>

                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text">
                                <span class="fa fa-user"></span>
                            </span>
                        </div>
                        <asp:TextBox ID="Textuser" class="form-control" name="username" placeholder="Username" required="required" runat="server"></asp:TextBox>

                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text">
                                <i class="fa fa-lock"></i>
                            </span>
                        </div>
                        <asp:TextBox ID="Textpass" class="form-control" name="password" placeholder="Password" TextMode="Password" required="required" runat="server"></asp:TextBox>

                    </div>
                </div>
                <div class="form-group">
                    <asp:Button ID="Button1" class="btn btn-success btn-block login-btn" Text="Register" runat="server" OnClick="Button1_Click" />


                </div>
                <asp:Label ID="Label4" ForeColor="Red" runat="server"></asp:Label>
                <div class="clearfix">
                    <label class="float-left form-check-label" style="color: #FFFFFF">
                        <input type="checkbox" style="color: #FFFFFF">
                        Remember me</label>

                </div>

            </form>
            <div class="hint-text" style="color: #FFFFFF">Have an account? <a href="login.aspx" class="text-success">Sign In Now!</a></div>
        </div>
    </div>
    </form>
</body>
</html>
