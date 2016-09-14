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
<fieldset>
  <c:set var="pid" value="${param.id}"></c:set>
  
 <table class="table table-striped;">
	<tr>
	
	<th>Product name</th>
	<th>Product description</th>
	<th>Product category</th>
	<th>Product quantity</th>
	<th>Product price</th>
	<th></th>
	</tr>
  <c:if test="${pid=='0'}" >

	<tr ng-repeat="product in Data" >
	
 	<td>{{product.name}}</td>
	<td>{{product.description}}</td>
	<td>{{product.category}}</td>
	<td>{{product.quantity}}</td>
	<td>{{product.price}}</td>
	<td>
			<a href="details?id={{product.id}}" >  <button type="button" class="btn btn-primary">View</button></a>
			 <sec:authorize access="hasRole('ROLE_ADMIN')">
			<a href="EditProducts?id={{product.id}}" >  <button type="button" class="btn btn-warning">Edit</button></a>
			<a href="DeleteProducts?id={{product.id}}" >  <button type="button" class="btn btn-danger">Delete</button></a>
			</sec:authorize>
	</td>
	</tr>
	
 	</c:if>
	</table>
</fieldset>
</div>
<div>
<%@ include file = "Footer.jsp"%>
</div>


</body>
</html>