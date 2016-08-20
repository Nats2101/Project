<!DOCTYPE html>
<html>
<head>
<title>SignUp</title>

 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
   <link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  
  <link rel="stylesheet" href="assets/css/footer-distributed-with-contact-form.css">
    <link rel="stylesheet" type="text/css" href="assets/fonts/font-awesome-4.2.0/css/font-awesome.min.css"/>
  <link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
  <link rel="stylesheet" href="assets/css/Form1.css" type=text/css>
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top headroom navi">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">	
	 	<p class=head>Pick-A-Book!<p>
			  </a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
	  <li><a href="Home">Home</a></li>
	  <li><a href="Fiction">Fiction</a></li>
	  <li><a href="Nonfiction">Non-Fiction</a></li>
	  <li><a href="Comic">Comics</a></li>
	  <li><a href="Children">Children's</a></li>
	  <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Other<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Travel</a></li>
            <li><a href="#">Food</a></li>
            <li><a href="#">Health</a></li>
          </ul>
        </li>
		<li><a href="Aboutus">About Us</a></li>
        <li class="active"><a href="Register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="Login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
	  
    </div>
  </div>
</nav>
 <center>
 <form name=F1 class="F1" action="get" onSubmit="return formValidation();">

<h3>Sign up!<span class="glyphicon glyphicon-pencil"></span></h3>

<p><input type=text name=Fname required placeholder="John" required ></p>
<p><input type=text name=Lname required placeholder="Doe" required ></p>
<p><input type=date name=DOB required ></p>
<p>
<input class=radio type=radio name=msex value="Male">Male
<input class=radio type=radio name=msex value="Female">Female
<p>
<p><input type=number name=Number placeholder="09634687123" required ></p>
<p><input type=text name="add" placeholder="Address" required></p>
<p><input type=email name="Email" placeholder="johndoe@gmail.com" required ><br></p>
<p><input type=text name="uname" placeholder="Choose a Username"required></p>
<p><input type=password name="pass" placeholder="Create a password!" required><br></p>
<!--<p><input type=cpassword name=cPassword placeholder="Confirm your password!" required><br></p>-->

<div>
<p>
<input class="button" type="submit" value=Submit>
<input class="button"type="reset" Value=Cancel>
</p>
</div>

</form>
</center>
		<footer class="footer-distributed">

			<div class="footer-left">

				<h3>Pick-A-Book<span></span></h3>


				<p class="footer-company-name">Pick-A-Book &copy; 2015</p>

				<div class="footer-icons">

					<a href="#"><i class="fa fa-facebook"></i></a>
					<a href="#"><i class="fa fa-twitter"></i></a>
					<a href="#"><i class="fa fa-linkedin"></i></a>
					<a href="#"><i class="fa fa-github"></i></a>

				</div>

			</div>

			<div class="footer-right">

				<p>Contact Us</p>

				<form action="#" method="post">

					<input type="text" name="email" placeholder="Email" />
					<textarea name="message" placeholder="Message"></textarea>
					<button>Send</button>

				</form>

			</div>

		</footer>
</body>
</html>
