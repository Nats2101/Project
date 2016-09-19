<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Details</title>

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
       <link href="http://fonts.googleapis.com/css?family=Neucha" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<!--     <link rel="stylesheet" href="resource/css/style.css"> -->
  <link rel="stylesheet" href="resource/css/footer-distributed-with-contact-form.css">
    <link rel="stylesheet" type="text/css" href="resource/fonts/font-awesome-4.2.0/css/font-awesome.min.css"/>
  <link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">


<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="<c:url value='/resource/js/angular/Pcontroller.js'/>"></script>
<style type="text/css">
 .col-lg-5, .col-lg-7
{
	padding-top: 200PX;
} 
img
{
	height:380px;
	width:300px;
	border-radius:30px;
box-shadow: 10px 10px 10px #ccc; 
}
  h2{
  margin-top:160px;
  margin-bottom:15px;
  font: bold;
  font-size:50px;
  font-family:Bradley Hand ITC;
        src: url(fonts/Bradley Hand ITC.ttf);
  }
 p.head
{
font-size:50px;
padding-left: 0px;
z-index: 100;
color:white;
}

.navbar-brand
{
height:50px;
font: normal 35px 'Cookie', cursive;
color:white;
border-radius:20px;
}	  
#myNavbar
{
padding-top:80px;
background-color:#292c2f;
border:none;
}
/* 
  img
  {
  padding:5px;
  margin-bottom:5px;
  width:200px ;
height:280px ; 
border-radius:30px;
box-shadow: 10px 10px 10px #ccc; 
}
 */
.col-sm-3
{
	background-color: white;
	border:2px solid #f1f1f1;
	padding: 10px;
}
li
{
	font: normal 20px 'Neucha', cursive;
}
</style>
</head>
<body>

<div>
<%@ include file = "Header.jsp"%>
</div>
<div class="container text-center" ng-app="myApp" ng-controller="myCtrl">

<div ng-repeat="product in Data | filter: { id: '${param.id}'}" >
<div class=col-lg-5>
<center>
<img src="<c:url value='/resource/image/{{product.name}}.jpg'/>" />
</center>
</div>
<div class=col-lg-7>
<table class="table table-striped">
<tr>
	<!-- <th>Name</th>
	<td>{{product.name}}</td> -->
	<h1>{{product.name}}</h1>
</tr>

<tr>
	<th>Description</th>
	<td>{{product.description}}</td>
</tr>
<tr>
	<th>Category</th>
	<td>{{product.category}}</td>
</tr>
<tr>
	<th>Price</th>
	<td>Rs.{{product.price}}</td>
</tr>

</table>
</div>
		 <sec:authorize access="hasRole('ROLE_USER')">
<a href="flow/Cart" >  
<button type="button" class="btn btn-info btn-lg">
<span class="glyphicon glyphicon-shopping-cart"></span> 
ADD to CART
</button>
</a>
			</sec:authorize>
       <sec:authorize access="isAnonymous()">	
      <h5> You have to 
      <button type="button" class="btn btn-info btn-md">
      <a href="${pageContext.request.contextPath}/Login"><span class="glyphicon glyphicon-log-in"></span> Login</a>
      </button>or
      <button type="button" class="btn btn-info btn-md">
     <a href="${pageContext.request.contextPath}/Register"><span class="glyphicon glyphicon-user"></span> Sign Up</a>
      </button>
      to add to your cart 
     </h5> 
</sec:authorize>
</div>
</div>

<div>
<%@ include file = "Footer.jsp"%>
</div>


</body>
</html>