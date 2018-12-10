<%@ page import="com.beans.*"%>
<!DOCTYPE html>
<html>
<%
	Client client = (com.beans.Client) session.getAttribute("client");
	Product product = (com.beans.Product) session.getAttribute("product");
%>
<%
	if (client == null || product == null || (com.beans.Product[]) session.getAttribute("products") == null)
		response.sendRedirect("login.jsp");
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
<title>Product Details: <%
	if (client != null) {
		out.print(product.getName());
	}
%>
</title>
<meta name="description"
	content="Start your development with a beautiful Bootstrap 4 UI kit. It is yours Free.">
<meta name="keywords"
	content="bootstrap 4, bootstrap 4 uit kit, bootstrap 4 kit, now ui, now ui kit, creative tim, html kit, html css template, web template, bootstrap, bootstrap 4, css3 template, frontend, responsive bootstrap template, bootstrap ui kit, responsive ui kit">
</head>

<body class="py-3 bg-dark" style="height: 100%">
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
				out.print("index.jsp");
			else
				out.print("login.jsp");%>">
							<%
								if (client != null)
									out.print("<i class='fa fa-home fa-fw fa-2x'></i> </i>&nbsp;Home");
								else
									out.print("<i class='fa fa-user fa-fw fa-2x'></i> </i>&nbsp;CONNECT");
							%>
					</a></li>
					<%
						if (client != null) {
					%>
					<li class="nav-item mx-3"><a
						class="nav-link align-items-center d-flex" href="shop.jsp"> <i
							class="fa fa-shopping-bag  fa-fw fa-2x"></i>&nbsp;Shop
					</a></li>
					<%
						}
					%>
					<%
						if (client != null) {
					%>
					<li class='nav-item mx-3'><div class='dropdown'>
							<a class='nav-link dropdown-toggle' href='#'
								id='navbarDropdownMenuLink' data-toggle='dropdown'><i
								class='fa fa-fw fa-shopping-cart fa-2x'></i>Cart</a>
							<div class='dropdown-menu dropdown-menu-right'
								aria-labelledby='navbarDropdownMenuLink'>
								<%
									for (int j = 0; j < client.i; j++) {
											out.print("<a class='dropdown-item text-center' href='#'>" + client.getPanier()[j].getName() + " x "
													+ client.getQuantity()[j] + "</a>");
										}
								%>
								<a class='dropdown-item text-center' href='#'>Total Price: <%
									out.print((int) client.getTotalSum() + " $");
										if (client.i != 0) {
											out.print(
													"<a class='dropdown-item text-center' href='#'><input type='button' class='btn btn-primary' value='Pay Now'/></a>");
										}
								%>
								</a>
							</div>
						</div> <%
 	}
 %> <%
 	if (client != null)
 		out.print(
 				"<li class='nav-item mx-3'><a class='nav-link align-items-center d-flex' href='setting.jsp'><i class='fa fa-user fa-fw fa-cogs fa-2x'></i></i>&nbsp;"
 						+ client.getName() + "</a></li>");
 %> <%
 	if (client != null)
 		out.print(
 				"<li class='nav-item mx-3'><a class='nav-link align-items-center d-flex' href='disconnect.jsp'><i class='fa fa-sign-out fa-2x'></i></i>&nbsp;DISCONNECT</a></li>");
 %>
				</ul>
			</div>
		</div>
	</nav>
	<div class="py-5 bg-dark">
		<div class="container">
			<div class="row">
				<div class="col-md-12 p-3 text-center">
					<h1>
						<%
							if (product != null)
								out.print(product.getName());
						%>
					</h1>
				</div>
			</div>
			<form method="post" action="addToCart">
				<div class="row">
					<div class="col-lg-4 col-md-8 col-xs-12 p-3 text-center">
						<img
							src="/J2ee4.0/GetImage?id=<%if (product != null)
				out.print(product.getId() + 1);%>"
							style="width: 300px; border-radius: 10px">
					</div>
					<div class="col-lg-8 col-md-8 col-xs-8 p-3">
						<h2>
							Price: <b>
								<%
									if (product != null)
										out.print(product.getPrice());
								%>$
							</b>
						</h2>
						<h6>Description:</h6>
						<p>
							<%
								if (product != null)
									out.print(product.getDescription());
							%>
						</p>
						<br> Select Quantity:
						<p class="text-center">
						<div class="input-group" style="width: 30%">
							<button type="button" class="btn btn-danger btn-number"
								data-type="minus" data-field="quantity"
								style="border-radius: 100px" disabled="disabled">
								<span class="fa fa-minus"></span>
							</button>
							<input type="text" id="quantity" name="quantity"
								class="form-control input-number" value="1" min="1"
								max="<%if (product != null)
				out.print(product.getQuantity());%>">
							<span class="input-group-btn">
								<button type="button" class="btn btn-success btn-number"
									data-type="plus" data-field="quantity"
									style="border-radius: 100px; height: 40px;">
									<span class="fa fa-plus"></span>
								</button>
							</span>
						</div>
						<button type="submit" class="btn btn-primary"
							style="margin-top: 25px">Add To Cart!</button>

					</div>
				</div>
			</form>
		</div>
	</div>
	<div class="py-3 bg-dark">
		<div class="container">
			<div class="row" style="margin-top: 67px !important;">
				<div class="col-lg-6 col-xs-6">
					<img class="img-fluid d-block rounded" src="istic.png">
				</div>
				<div class="col-lg-3 col-xs-3">
					<p><a href="#">Technopole de Borj Cédria, Route de Soliman<br>BP 123, Hammam Chatt 1164<br>Ben Arous, Tunisie</a></p>
				</div>
				<div class="col-lg-3 col-xs-3">
					<p>
						<a href="tel:+216 - 79 326 790">+216 79 326 790</a>
					</p>
					<p class="mb-0">
						<a href="mailto:istic@istic.rnu.tn">istic@istic.rnu.tn</a>
					</p>
				</div>

			</div>
			<div class="row">
				<div class="col-md-12 text-center">
					<p class="mb-0 mt-2">© 2018 Pikkatchuuuu Store. All rights
						reserved</p>
				</div>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
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
				$('.btn-number').click(function(e){
			        e.preventDefault();
			        
			        var fieldName = $(this).attr('data-field');
			        var type      = $(this).attr('data-type');
			        var input = $("input[name='"+fieldName+"']");
			        var currentVal = parseInt(input.val());
			        if (!isNaN(currentVal)) {
			            if(type == 'minus') {
			                var minValue = parseInt(input.attr('min')); 
			                if(!minValue) minValue = 1;
			                if(currentVal > minValue) {
			                    input.val(currentVal - 1).change();
			                } 
			                if(parseInt(input.val()) == minValue) {
			                    $(this).attr('disabled', true);
			                }
			    
			            } else if(type == 'plus') {
			                var maxValue = parseInt(input.attr('max'));
			                if(!maxValue) maxValue = 9999999999999;
			                if(currentVal < maxValue) {
			                    input.val(currentVal + 1).change();
			                }
			                if(parseInt(input.val()) == maxValue) {
			                    $(this).attr('disabled', true);
			                }
			    
			            }
			        } else {
			            input.val(0);
			        }
			    });
			    $('.input-number').focusin(function(){
			       $(this).data('oldValue', $(this).val());
			    });
			    $('.input-number').change(function() {
			        
			        var minValue =  parseInt($(this).attr('min'));
			        var maxValue =  parseInt($(this).attr('max'));
			        if(!minValue) minValue = 1;
			        if(!maxValue) maxValue = 9999999999999;
			        var valueCurrent = parseInt($(this).val());
			        
			        var name = $(this).attr('name');
			        if(valueCurrent >= minValue) {
			            $(".btn-number[data-type='minus'][data-field='"+name+"']").removeAttr('disabled')
			        } else {
			            alert('Sorry, the minimum value was reached');
			            $(this).val($(this).data('oldValue'));
			        }
			        if(valueCurrent <= maxValue) {
			            $(".btn-number[data-type='plus'][data-field='"+name+"']").removeAttr('disabled')
			        } else {
			            alert('Sorry, the maximum value was reached');
			            $(this).val($(this).data('oldValue'));
			        }
			        
			        
			    });
			    $(".input-number").keydown(function (e) {
			            // Allow: backspace, delete, tab, escape, enter and .
			            if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 190]) !== -1 ||
			                 // Allow: Ctrl+A
			                (e.keyCode == 65 && e.ctrlKey === true) || 
			                 // Allow: home, end, left, right
			                (e.keyCode >= 35 && e.keyCode <= 39)) {
			                     // let it happen, don't do anything
			                     return;
			            }
			            // Ensure that it is a number and stop the keypress
			            if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
			                e.preventDefault();
			            }
			    });
			});
		</script>
</body>

</html>