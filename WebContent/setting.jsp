<!DOCTYPE html>
<html>
<% com.beans.Client client = (com.beans.Client)session.getAttribute("client");%>
<% RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp"); %>
<% if (client == null) response.sendRedirect("index.jsp");%>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/css/bootstrap-datepicker.standalone.min.css">
  <link rel="stylesheet" href="now-ui-kit.css" type="text/css">
  <link rel="stylesheet" href="nucleo-icons.css" type="text/css">
  <script src="navbar-ontop.js"></script>
  <link rel="icon" href="logo.png">
  <title>Account Information</title>
  <meta name="description" content="Start your development with a beautiful Bootstrap 4 UI kit. It is yours Free.">
  <meta name="keywords" content="bootstrap 4, bootstrap 4 uit kit, bootstrap 4 kit, now ui, now ui kit, creative tim, html kit, html css template, web template, bootstrap, bootstrap 4, css3 template, frontend, responsive bootstrap template, bootstrap ui kit, responsive ui kit">
</head>

<body class="bg-dark">
  <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top" style="	width: 100%;	height: 70px;">
    <div class="container">
      <div class="row">
        <div class="col-md-12 w-50"><img src="logo.png" width="60" height="60" class="d-inline-block align-top" alt=""></div>
      </div><a class="navbar-brand" href="index.jsp" style="">Pikkatchuuuuu Store</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarPrimaryContent">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse text-center justify-content-end" id="navbarPrimaryContent">
        <ul class="navbar-nav">
          <li class="nav-item mx-3">
            <a class="nav-link align-items-center d-flex" href="<%if(client!=null) out.print("index.jsp");else out.print("signup.jsp");%>">
            
              <% if(client!=null)
                	out.print("<i class='fa fa-home fa-fw fa-2x'></i>&nbsp;Home");
              		
                  else out.print("<i class='fa fa-user fa-fw fa-2x'></i>&nbsp;CONNECT");
                  %>     
              </a>
          </li>
          <li class="nav-item mx-3">
            <a class="nav-link align-items-center d-flex" href="shop.jsp">
            <i class="fa fa-shopping-bag  fa-fw fa-2x"></i>
              </i>&nbsp;Shop</a>
          </li> 
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
									for(int j = 0; j < client.i; j++) {
										out.print("<a class='dropdown-item text-center' href='#'>" +client.getPanier()[j].getName() + " x " + client.getQuantity()[j] + "</a>");		
									}
								%>
								<a class='dropdown-item text-center' href='#'>Total Price: <%
									out.print((int)client.getTotalSum() + " $");
									if(client.i != 0) {
										out.print("<a class='dropdown-item text-center' href='#'><input type='button' class='btn btn-primary' value='Pay Now'/></a>");
									}
								%>
								</a>
							</div>
						</div> <%
 	}%>
              <% if(client!=null)	
                  out.print("<li class='nav-item mx-3'><a class='nav-link align-items-center d-flex' href='disconnect.jsp'><i class='fa fa-sign-out fa-2x'></i></i>&nbsp;DISCONNECT</a></li>");
              %>
        </ul>
      </div>
    </div>
  </nav>
  <div class="h-100" style="	background-image: url(&quot;signup.jpg&quot;);	background-position: center;	background-size: 100% 100%;	background-repeat: no-repeat;">
    <div class="container py-4">
      <div class="row"></div>
      <div class="row">
        <div class="col-md-6">
          <div class="card-body text-center">
            <div class="row mt-5">
              <div class="col-md-12">
                <h5 class="mb-4">
                  <b>My account informations</b>
                </h5>
                <button class="btn btn-icon rounded btn-light mx-1 btn-facebook shadow" type="button">
                  <i class="fa fa-fw fa-lg fa-facebook-square"></i>
                </button>
                <button class="btn btn-icon rounded btn-lg btn-light mx-1 btn-twitter shadow" type="button">
                  <i class="fa fa-fw fa-2x fa-twitter"></i>
                </button>
                <button class="btn btn-icon rounded btn-light mx-1 btn-google shadow" type="button">
                  <i class="fa fa-fw fa-google-plus fa-lg"></i>
                </button>
              </div>
            </div>
            <div class="row mt-4 pt-2">
              <div class="col" style="">
                <form method="post" action="change">
                  <% if((String)request.getAttribute("msg")==null)
                	  out.print("");
                  else out.print((String)request.getAttribute("msg"));
                  %>
                  <div class="form-group mb-2">
                    <div class="input-group border-0 bg-dark">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="basic-addon1">
                        </span>
                      </div>
                      <input type="password" name="oldpass" class="form-control" id="oldpass" placeholder="Old password ...">
                    </div>
                  </div>
                  <div class="form-group mb-2">
                    <div class="input-group border-0 bg-dark">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="basic-addon1">
                        </span>
                      </div>
                      <input type="text" name="name" class="form-control" value="<% if(client!=null)out.print(client.getName()); %>" id="name" value="<% request.getAttribute("name"); %>" placeholder="First Name..." required="required">
                    </div>
                  </div>
                  <div class="form-group mb-2">
                    <div class="input-group border-0 bg-dark">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="basic-addon1">
                        </span>
                      </div>
                      <input type="password" name="newpass" class="form-control" id="newpass" placeholder="New Password...">
                    </div>
                  </div>
                  <div class="form-group mb-2">
                    <div class="input-group border-0 bg-dark">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="basic-addon1">
                        </span>
                      </div>
                      <input type="password" name="renewpass" class="form-control"  id="renewpass" placeholder="Re-type new password...">
                    </div>
                  </div>
                  <div class="form-group mb-2">
                    <div class="input-group border-0 bg-dark">
                      <div class="input-group-prepend ">
                        <span class="input-group-text" id="basic-addon1">
                        </span>
                      </div>
                      <input type="number" name="phone" class="form-control" value="<%if(client!=null) out.print(client.getPhone()); %>" id="phone" placeholder="Phone...">
                    </div>
                  </div>
                  <div class="form-group mb-3">
                    <div class="input-group border-0 bg-dark">
                      <div class="input-group-prepend ">
                        <span class="input-group-text" id="basic-addon1">
                        </span>
                      </div>
                      <input type="email" name="email" class="form-control" value="<% if(client!=null)out.print(client.getEmail()); %>" id="email" placeholder="Email..." required="required">
                    </div>
                  </div>
                  <button type="button" id="sbm" class="btn mt-4 mb-3 rounded btn-lg btn-dark text-body">Submit Changes</button>
                </form>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-6 text-center" style="">
          <div class="row h-75">
            <div class="col-md-12 m-5 px-5 pl-5 pr-5 pt-5">
              <h5 class="mx-5 mt-5">
                <b>COSPLAYS?</b><br><b>Click to enter the universe in&nbsp;</b><br><b>now !</b><br></h5><a class="btn btn-dark btn-lg rounded active" href="shop.jsp"  style="">Shop</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="py-3 bg-dark">
		<div class="container">
			<div class="row" style="margin-top: 67px !important;">
				<div class="col-lg-6 col-xs-6">
					<img class="img-fluid d-block rounded" src="istic.png">
				</div>
				<div class="col-lg-3 col-xs-3">
					<p>
						<a href="https://goo.gl/maps/AUq7b9W7yYJ2" target="_blank">
							Technopole de Borj C�dria, Route de Soliman<br>BP 123,
							Hammam Chatt 1164<br>Ben Arous, Tunisie
						</a>
					</p>
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
					<p class="mb-0 mt-2">� 2018 Pikkatchuuuu Store. All rights
						reserved</p>
				</div>
			</div>
		</div>
		</div>
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  <script src="parallax.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/js/bootstrap-datepicker.js"></script>
  <script>
    $(document).ready(function() {
      $('[data-toggle="popover"]').popover();
      $('[data-toggle="tooltip"]').tooltip();
      $('#datepicker-example').datepicker({
        calendarWeeks: true,
        autoclose: true,
        todayHighlight: true
      });
      $("#oldpass").keyup(function() {
    	  if ($(this).val() != "") {
    		  $(this).attr("required", "required");
    		  $("#newpass").attr("required", "required");
    		  $("#renewpass").attr("required", "required");
    	  } else {
    		  $(this).removeAttr("required");
    		  $("#newpass").removeAttr("required");
    		  $("#renewpass").removeAttr("required");
    	  }
      });
      $("#sbm").click(function() {
    	  if (($("#newpass").val() != $("#renewpass").val()) && ($("#newpass").val() != "" || $("#renewpass").val() != "")) {
    		  alert("new password and retyped new password must be equal!");
    	  } else if($("#newpass").val() === $("#renewpass").val() && $("#newpass") != "") {
    		  $("form").submit();
    	  }
      });
    });
  </script>
</body>

</html>