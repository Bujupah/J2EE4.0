<%@ page import="com.beans.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<%
	Client client = (com.beans.Client) session.getAttribute("client");
	Product[] products = (com.beans.Product[]) session.getAttribute("products");
%>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/css/bootstrap-datepicker.standalone.min.css">
<link rel="stylesheet" href="now-ui-kit.css" type="text/css">
<link rel="stylesheet" href="nucleo-icons.css" type="text/css">
<script src="navbar-ontop.js"></script>
<link rel="icon" href="logo.png">
<title>Shopuuuuuung :v</title>
<meta name="description"
	content="Start your development with a beautiful Bootstrap 4 UI kit. It is yours Free.">
<meta name="keywords"
	content="bootstrap 4, bootstrap 4 uit kit, bootstrap 4 kit, now ui, now ui kit, creative tim, html kit, html css template, web template, bootstrap, bootstrap 4, css3 template, frontend, responsive bootstrap template, bootstrap ui kit, responsive ui kit">
</head>

<body class="">
	<nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top"
		style="width: 100%; height: 70px;">
		<div class="container">
			<div class="row">
				<div class="col-md-12 w-50">
					<img src="logo.png" width="60" height="60"
						class="d-inline-block align-top" alt="">
				</div>
			</div>
			<a class="navbar-brand" href="index.jsp" style="">Pikkatchuuuuu
				Store</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarPrimaryContent">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse text-center justify-content-end"
				id="navbarPrimaryContent">
				<ul class="navbar-nav">
					<li class="nav-item mx-3"><a
						class="nav-link align-items-center d-flex"
						href="<%if (client != null)
				out.print("#");
			else
				out.print("login.jsp");%>">
							<i class="fa fa-user fa-fw fa-2x"></i> </i>&nbsp; <%
 	if (client != null)
 		out.print(client.getName());
 	else
 		out.print("CONNECT");
 %>
					</a></li>
					<%
						if (client != null)
							out.print(
									"<li class='nav-item mx-3'><a class='nav-link dropdown-toggle' href='#' id='navbarDropdownMenuLink' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'><i class='fa fa-fw fa-shopping-cart fa-2x'></i>Cart</a><div class='dropdown-menu' aria-labelledby='navbarDropdownMenuLink'><a class='dropdown-item' href='#'>Total Price:&nbsp;</a></div></li> ");
					%>
					<%
						if (client != null)
							out.print(
									"<li class='nav-item mx-3'><a class='nav-link align-items-center d-flex' href='setting.jsp'><i class='fa fa-user fa-fw fa-cogs fa-2x'></i></i>&nbsp;SETTING</a></li>");
					%>

				</ul>
			</div>
		</div>
	</nav>
	<div class="py-5 bg-dark">
		<div class="container">
			<div class="row">
				<div class="text-center mx-auto col-md-12">
					<h1>Select a product:</h1>
				</div>
			</div>
			<div class="row">
				<%
					for(int i= 0; i <products.length; i++) {
				%>
				<div class="col-lg-3 col-md-6 p-3">
					<div class="card bg-light text-center">
						<div class="card-body p-4">
							<h3 style="height:80px"><%=products[i].getName()%></h3>
							<img src="/J2ee4.0/GetImage?id=<%=i + 1%>" style="width:100%; margin-bottom: 15px">
							<br>
							<h2>
								<b><%=products[i].getPrice()%>$</b>
							</h2>
							<a class="btn btn-primary" href="#">View Details</a>
							
						</div>
					</div>
				</div>
				<%
					}
				%>
			</div>
		</div>
	</div>
	<div class="py-3 bg-dark">
		<div class="container">
			<div class="row">
				<div class="col-md-12 text-center d-md-flex align-items-center">
					<i class="d-block fa fa-stop-circle fa-2x mr-md-5 text-primary"></i>
					<ul class="nav mx-md-auto d-flex justify-content-center">
						<li class="nav-item"><a class="nav-link active" href="#">Home</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#">Features</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#">Pricing</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#">About</a></li>
					</ul>
					<div class="row">
						<div
							class="col-md-12 d-flex align-items-center justify-content-md-between justify-content-center my-2">
							<a href="#"> <i
								class="d-block fa fa-facebook-official text-muted fa-lg mx-2"></i>
							</a> <a href="#"> <i
								class="d-block fa fa-instagram text-muted fa-lg mx-2"></i>
							</a> <a href="#"> <i
								class="d-block fa fa-twitter text-muted fa-lg ml-2"></i>
							</a>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 text-center">
					<p class="mt-2 mb-0">© 2018 Pikkatchuuuu Store. All rights
						reserved</p>
				</div>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<script src="parallax.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/js/bootstrap-datepicker.js"></script>
	<script>
		$(document).ready(function() {
			$('[data-toggle="popover"]').popover();
			$('[data-toggle="tooltip"]').tooltip();
			$('#datepicker-example').datepicker({
				calendarWeeks : true,
				autoclose : true,
				todayHighlight : true
			});
		});
	</script>
</body>

</html>