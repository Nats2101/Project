<!doctype html>
<head>
<title>LogIn</title>

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
       <link href="http://fonts.googleapis.com/css?family=Neucha" rel="stylesheet" type="text/css">
       
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  
  <link rel="stylesheet" href="resource/css/footer-distributed-with-contact-form.css">
    <link rel="stylesheet" type="text/css" href="resource/fonts/font-awesome-4.2.0/css/font-awesome.min.css"/>
  <link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
  <link rel="stylesheet" href="resource/css/Form1.css" type=text/css>
      <link rel="stylesheet" href="resource/css/style.css">
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
 <style>
.error {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #a94442;
	background-color: #f2dede;
	border-color: #ebccd1;
}

.msg {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #31708f;
	background-color: #d9edf7;
	border-color: #bce8f1;
}

/* #login-box {
	width: 300px;
	padding: 20px;
	margin: 100px auto;
	background: #fff;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	border: 1px solid #000;
} */

#login-box
{
	width: 500px;
	padding: 20px;
	margin: 100px auto;
	background: #fff;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;	
	  text-align: center;
}
h3
{
	padding-top: 20px;
	 font: bold;
  font-size:35px;
	font-family:Bradley Hand ITC;
        src: url(fonts/Bradley Hand ITC.ttf);
  text-align: center;
}
</style>
 
</head>
<body>
<div>
<%@ include file = "Header.jsp"%>
</div>

<div id="login-box">
<c:if test="${not empty error}">
			<div class="error">${error}</div>
		</c:if>
		<c:if test="${not empty msg}">
			<div class="msg">${msg}</div>
		</c:if>
		
<h3>Log in!<span class="glyphicon glyphicon-user"></span></h3>
		<form name='form' modelAttribute="login" action="<c:url value='j_spring_security_check' />" method='POST'>
		  <div class="form-group">
		 <label for="Uname"></label>
    	<input type="text"  name="j_username"  class="form-control" placeholder="Johnny"/>
 		 </div>
  <div class="form-group">
    <label for="password"></label>
    <input type="password" class="form-control" name="j_password" placeholder="****"/>
  </div>
  <div class="form-group">
  <button type="submit" class="btn btn-info" >Submit</button>
    </div>
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />  
		</form>
</div>

<div>
<%@ include file = "Footer.jsp"%>
</div>

</body>
</html>
