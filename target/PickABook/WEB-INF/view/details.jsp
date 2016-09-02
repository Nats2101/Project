<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Products</title>

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="resource/css/style.css">
  <link rel="stylesheet" href="resource/css/footer-distributed-with-contact-form.css">
    <link rel="stylesheet" type="text/css" href="resource/fonts/font-awesome-4.2.0/css/font-awesome.min.css"/>
  <link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">


<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="<c:url value='/resource/js/angular/Pcontroller.js'/>"></script>

</head>
<body>

<div>
<%@ include file = "Header.jsp"%>
</div>
<div class="container text-center" ng-app="myApp" ng-controller="myCtrl">
  <h2>ALL PRODUCTS</h2>
<div  ng-repeat="product in Data" >
<center>
<img src="<c:url value='/resources/Images/{{product.category}}/{{product.image}}'/>" height="300px" width="300px" />
</center>
<table class="table table-striped">
<tr>
	<th>Name</th>
	<td>{{product.name}}</td>
</tr>
<tr>
	<th>Available Quantity</th>
	<td>{{product.qty}}</td>
</tr>
<tr>
	<th>Price</th>
	<td>{{product.price}}</td>
</tr>
<tr>
	<th>Details</th>
	<td>{{product.description}}</td>
</tr>
<tr>
	<th>Category</th>
	<td>{{product.category}}</td>
</tr>

</table>
</div>

<div class="row">

	<div class="col-sm-4">
	<form role="form">
	 <button type="submit" class="btn btn-default">Add to Cart</button>
	 </form>
	</div> 


	<div class="col-sm-4">
	<form role="form">
	<button type="submit" class="btn btn-default">View Cart</button>
	</form>
	</div>
	<div class="col-sm-4">
	<form role="form">
		<button type="submit" class="btn btn-default">Back to Home</button>
	</form>
	</div>
</div>
</div>
<div>
<%@ include file = "Footer.jsp"%>
</div>


</body>
</html>