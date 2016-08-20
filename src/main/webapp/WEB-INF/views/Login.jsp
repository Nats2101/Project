<!doctype html>
<head>
<title>LogIn</title>

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
     
  <script language="javascript">
function check(form)/*function to check userid & password*/
{
 /*the following code checkes whether the entered userid and password are matching*/
 if(form.Uname.value == "nats" && form.password.value == "1234")
  {
    window.open('home1.html')/*opens the target page while Id & password matches*/
  }
 else
 {
   alert("Enter valid Password or Username")/*displays error message*/
  }
}
</script>	
 
</head>
<body>
<div>
<%@ include file = "Header.jsp"%>
</div>

<center>
<form class="F1" name = login action="post">
<h3>Login         <span class="glyphicon glyphicon-user"></h3>
<p>Username: <input type = "text"  name = Uname placeholder="Arthur Conan Doyle" Required ></p>

<p>Password: <input type = "password" name = password placeholder="221B" Required ></p>

<input class="button" type = "button"  onclick="check(this.form)" value = "Login">
<input class="button" type = "reset" value = "Cancel">
</form></center>

<div>
<%@ include file = "Footer.jsp"%>
</div>

</body>
</html>
