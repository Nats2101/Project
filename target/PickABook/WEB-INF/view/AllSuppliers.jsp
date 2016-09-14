 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All supplier</title>

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

</head>
<body>

<div>
<%@ include file = "Header.jsp"%>
</div>
<div class="container text-center" role="form">
  <h2>ALL SUPPLIERS</h2>
<fieldset>
   <table class="table table-striped;">
	<tr>
	<th>Supplier name</th>
	<th>Supplier address</th>
	<th></th>
	</tr>
  <c:forEach var="supplier" items="${supplier}">
	<tr>
 	<td>${supplier.name}</td>
	<td>${supplier.address}</td>
	<td>
			<sec:authorize access="hasRole('ROLE_ADMIN')">
			<a href="EditSupplier?id=${supplier.id}" >  <button type="button" class="btn btn-warning">Edit</button></a>
			<a href="DeleteSupplier?id=${supplier.id}" >  <button type="button" class="btn btn-danger">Delete</button></a>
			</sec:authorize>
	</td>
	</tr>
	
 	</c:forEach>
	</table>
</fieldset>


</div>
<div>
<%@ include file = "Footer.jsp"%>
</div>
</body>
</html>