<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Products</title>

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
<h2>UPDATE PRODUCTS</h2>
  
  <form:form modelAttribute="product" enctype="multipart/form-data" role="form" action="EditProducts" >
<form:input style="visibility:hidden;" path="pid"/>
 <div class="form-group">
 <form:label  path="name">
<spring:message text="Product Name"/>
</form:label>
<form:input class="form-control" path="name" />
<form:errors path="name">
<p class="errStyle">
* Product Name should be atleast 3 characters
</p>
 </form:errors>
 </div>
 <div class="form-group">
 <form:label  path="qty">
				<spring:message text="Quantity Available"/>
</form:label>
<form:input class="form-control" path="qty" />
<form:errors path="qty" >
<p class="errStyle">
* should be greater than 1
</p>
 </form:errors>
 </div>
 <div class="form-group">
 <form:label  path="price">
				<spring:message text="Product Price"/>
</form:label>
<form:input class="form-control" path="price" />
<form:errors path="price" >
<p class="errStyle">
* should be greater than 1
</p>
 </form:errors>
 </div>
 <div class="form-group">
 <form:label  path="category">
				<spring:message text="Category"/>
</form:label>
<form:select class="form-control" path="category" >
<form:option value="Mobiles">Mobile</form:option>
<form:option value="Laptops">Laptop</form:option>
<form:option value="Cameras">Camera</form:option>
</form:select>

 </div>

 <div class="form-group">
 <form:label  path="description">
				<spring:message text="Description"/>
</form:label>
  <form:input class="form-control" path="description" />
  <form:errors path="name">
  
  <p class="errStyle">
* Cannot be blank
</p>
 </form:errors>
 </div>
   <div class="form-group">
 <label>Upload Image</label>
  <form:input type="file" path="file"  class="form-control" />
   <form:errors path="file" >
  <p class="errStyle">
 * Cannot be blank
 </p>
 </form:errors>
 </div>
 <div class="form-group">
 <input  class="btn btn-info"  type="submit"
					value="<spring:message text="Update Product"/>" />
 </div>

</form:form>
</div>
<div>
<%@ include file = "Footer.jsp"%>
</div>


</body>
</html>