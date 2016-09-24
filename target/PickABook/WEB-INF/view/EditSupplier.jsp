<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Products</title>

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
       <link href="http://fonts.googleapis.com/css?family=Neucha" rel="stylesheet" type="text/css">
       
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

<style type="text/css">
.errStyle {
	color: orange;
	font: normal 20px 'Neucha';
	text-shadow: white;
}
</style>

</head>
<body>

<div >
<%@ include file = "Header.jsp"%>
</div>
<div class="container text-center">

<h2>UPDATE SUPPLIER</h2>

		<form:form modelAttribute="supplier" role="form" action="EditSupplier">
			<form:input style="visibility:hidden;" path="id" />
			<div class="form-group">
				<form:label path="name">
					<spring:message text="Supplier Name" />
				</form:label>
				<form:input class="form-control" path="name" />
				<p class="errStyle"> <form:errors path="name"></form:errors></p>
				
			</div>
			<div class="form-group">
				<form:label path="address">
					<spring:message text="Address" />
				</form:label>
				<form:input class="form-control" path="address" />
				<p class="errStyle"> <form:errors path="address"></form:errors></p>
			</div>

			<div class="form-group">
				<input class="btn btn-info" type="submit"
					value="<spring:message text="Update supplier"/>" />
			</div>

		</form:form>
	</div>
<div>
<%@ include file = "Footer.jsp"%>
</div>


</body>
</html>