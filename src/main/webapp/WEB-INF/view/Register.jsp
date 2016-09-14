<!DOCTYPE html>
<html>
<head>
<title>SignUp</title>

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
    
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="<c:url value='/resource/js/angular/Pcontroller.js'/>"></script>
    
<style>
h3
{
	padding-top: 120px;
	 font: bold;
  font-size:35px;
	font-family:Bradley Hand ITC;
        src: url(fonts/Bradley Hand ITC.ttf);
   
}
</style>    
</head>
<body>

 <div>
<%@ include file = "Header.jsp"%>
</div>
<div class="container text-center">
<h3>Sign up!<span class="glyphicon glyphicon-pencil"></span></h3>

<form:form action="Register" modelAttribute="register" role="form" method="POST">
			<div class="form-group">
				<form:label path="fname"></form:label>
				<form:input class="form-control" path="fname" type="text" placeholder="John" required />
				<p class="errStyle"> <form:errors path="fname"></form:errors></p>
			</div>
			
			<div class="form-group">
				<form:label path="lname"></form:label>
				<form:input class="form-control" path="lname" type="text" placeholder="Doe" required/>
			<p class="errStyle"> <form:errors path="lname"></form:errors></p>
			</div>
			
			<div class="form-group">
				<form:label path="bdate"></form:label>
				<form:input class="form-control" path="bdate" type="date" required/>
				<p class="errStyle"> <form:errors path="bdate"></form:errors></p>
			</div>
			
			<div class="form-group">
				<form:label path="contact"></form:label>
				<form:input class="form-control" path="contact" type="number"  placeholder="Where do I contact you?" required/>
				<p class="errStyle"> <form:errors path="contact"></form:errors></p>
			</div>
			
			<div class="form-group">
				<form:label path="address"></form:label>
				<form:input class="form-control" path="address" type="text" placeholder="Where do I deliver the product to?" required/>
			<p class="errStyle"> <form:errors path="address"></form:errors></p>
			</div>
			
			<div class="form-group">
				<form:label path="email"></form:label>
				<form:input class="form-control" path="email" type="email" placeholder="johndoe@hotmail.com" required/>
			<p class="errStyle"> <form:errors path="email"></form:errors></p>
			</div>
			
			<div class="form-group">
				<form:label path="uname"></form:label>
				<form:input class="form-control" path="uname" type="text" placeholder="choose a cool username!" required/>
			<p class="errStyle"> <form:errors path="uname"></form:errors></p>
			</div>
			
			<div class="form-group">
				<form:label path="password"></form:label>
				<form:input class="form-control" path="password" type="password" placeholder="you need to keep it safe from Hackers!" required/>
			<p class="errStyle"> <form:errors path="password"></form:errors></p>
			</div>
			
			<div class="form-group">
				<input class="btn btn-info" type="submit"
					value="<spring:message text="Submit"/>" />
				<input class="btn btn-info" type="reset"
					value="<spring:message text="Cancel"/>" />
			</div>
 </form:form>
 </div>
 <div>
<%@ include file = "Footer.jsp"%>
</div>

</body>
</html>
