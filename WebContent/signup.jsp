<%@ page import="com.beans.*"%>
<!DOCTYPE html>
<html>
<% Client client = (com.beans.Client)session.getAttribute("client");%>
<% RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp"); %>
<% if (client != null) dispatcher.forward(request, response);%>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" type="text/css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/css/bootstrap-datepicker.standalone.min.css">
  <link rel="stylesheet" href="now-ui-kit.css" type="text/css">
  <link rel="stylesheet" href="nucleo-icons.css" type="text/css">
  <script src="navbar-ontop.js"></script>
  <link rel="icon" href="logo.png">
  <title>SignUp HEEEEE ! <3</title>
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
                  <b>SIGN UP</b>
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
                <form method="post" action="join">
                  <% if((String)request.getAttribute("error")==null)
                	  out.print("");
                  else out.print((String)request.getAttribute("error"));
                  %>
                  <div class="form-group mb-2">
                    <div class="input-group border-0 bg-dark">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="basic-addon1">
                        </span>
                      </div>
                      <input type="text" name="name" class="form-control" id="inlineFormInputGroup" placeholder="First Name..." required="required">
                    </div>
                  </div>
                  <div class="form-group mb-2">
                    <div class="input-group border-0 bg-dark">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="basic-addon1">
                        </span>
                      </div>
                      <input type="password" name="password" class="form-control" id="inlineFormInputGroup" placeholder="Password...">
                    </div>
                  </div>
                  <div class="form-group mb-2">
                    <div class="input-group border-0 bg-dark">
                      <div class="input-group-prepend">
                        <span class="input-group-text" id="basic-addon1">
                        </span>
                      </div>
                      <input type="password" name="repassword" class="form-control" id="inlineFormInputGroup" placeholder="Re-type password...">
                    </div>
                  </div>
                  <div class="form-group mb-2">
                    <div class="input-group border-0 bg-dark">
                      <div class="input-group-prepend ">
                        <span class="input-group-text" id="basic-addon1">
                        </span>
                      </div>
                      <input type="number" name="phone" class="form-control" id="inlineFormInputGroup" placeholder="Phone...">
                    </div>
                  </div>
                  <div class="form-group mb-3">
                    <div class="input-group border-0 bg-dark">
                      <div class="input-group-prepend ">
                        <span class="input-group-text" id="basic-addon1">
                        </span>
                      </div>
                      <input type="email" name="email" class="form-control" id="inlineFormInputGroup" placeholder="Email..." required="required">
                    </div>
                  </div>
                  <button type="submit" class="btn mt-4 mb-3 rounded btn-lg btn-dark text-body">SIGN UP</button>
                </form>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-6 text-center" style="">
          <div class="row h-75">
            <div class="col-md-12 m-5 px-5 pl-5 pr-5 pt-5">
              <h5 class="mx-5 mt-5">
                <b>You have an account ?</b><br><b>Click to log in&nbsp;</b><br><b>now !</b><br></h5><a class="btn btn-dark btn-lg rounded active" href="login.jsp" style="">Log in</a>
            </div>
          </div>
        </div>
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