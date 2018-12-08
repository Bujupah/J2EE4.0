<!DOCTYPE html>
<html>
<% com.beans.Client client = (com.beans.Client)request.getAttribute("client"); %>
<% request.setAttribute("client", client); %>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/css/bootstrap-datepicker.standalone.min.css">
  <link rel="stylesheet" href="now-ui-kit.css" type="text/css">
  <link rel="stylesheet" href="nucleo-icons.css" type="text/css">
  <script src="navbar-ontop.js"></script>
  <link rel="icon" href="logo.png">
  <title>Now UI Kit by Creative Tim</title>
  <meta name="description" content="Start your development with a beautiful Bootstrap 4 UI kit. It is yours Free.">
  <meta name="keywords" content="bootstrap 4, bootstrap 4 uit kit, bootstrap 4 kit, now ui, now ui kit, creative tim, html kit, html css template, web template, bootstrap, bootstrap 4, css3 template, frontend, responsive bootstrap template, bootstrap ui kit, responsive ui kit">
</head>

<body class="bg-dark" style="">
  <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top navbar-ontop" style="	width: 100%;	height: 70px;">
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
            <a class="nav-link align-items-center d-flex" href="<%if(client!=null) out.print("#");else out.print("login.jsp");%>">
            <i class="fa fa-user fa-fw fa-2x"></i>
              </i>&nbsp;
              <% if(client!=null)
                	out.print(client.getName());
              		
                  else out.print("CONNECT");
                  %>
              
              </a>
          </li>
          <li class="nav-item mx-3">
            <a class="nav-link align-items-center d-flex" href="#">
            <i class="fa fa-user fa-fw fa-cogs fa-2x"></i>
          
              </i>&nbsp;SETTINGS</a>
          </li>
          <li class="nav-item dropdown mx-3" style=""> 
          <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fa fa-fw fa-shopping-cart fa-2x"></i>Cart</a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink"> <a class="dropdown-item" href="#">Total Price:&nbsp;</a></div>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <div class="pt-5">
    <div class="container">
      <div class="row h-25">
        <div class="col-md-4"></div>
        <div class="col-md-4 px-5 pt-5 mt-5" style="">
          <h4 class="text-center pt-5 px-5">Our Store</h4>
        </div>
        <div class="col-md-4"></div>
      </div>
    </div>
  </div>
  <div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4"></div>
        <div class="col-md-4"></div>
      </div>
    </div>
  </div>
  <div class="py-3">
    <div class="container">
      <div class="row">
        <div class="col-lg-4 col-6 p-3"><img class="img-fluid d-block rounded my-5 mx-auto" src="istic.png"></div>
        <div class="col-lg-4 col-6 p-3">
          <p> <a href="https://goo.gl/maps/AUq7b9W7yYJ2" target="_blank"> Fake street, 100 <br>NYC - 20179, USA</a> </p>
          <p> <a href="tel:+246 - 542 550 5462">+1 - 256 845 87 86</a> </p>
          <p class="mb-0"> <a href="mailto:info@pingendo.com">info@pingendo.com</a> </p>
        </div>
        <div class="col-md-4 p-3">
          <h5> <b>About</b> </h5>
          <p class="mb-0"> I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence.</p>
        </div>
      </div>
      <div class="row">
        <div class="col-md-12 text-center">
          <p class="mb-0 mt-2">© 2018 Pikkatchuuuu Store. All rights reserved</p>
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
    });
  </script>
</body>

</html>