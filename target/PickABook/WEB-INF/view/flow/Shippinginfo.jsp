<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ShippingInfo</title>
</head>
<body>
 <div>
<%@ include file = "/WEB-INF/view/Header.jsp"%>
</div>
<div class="container text-center">
<h3>Shipping Information!<span class="glyphicon glyphicon-pencil"></span></h3>

<form:form action="##" modelAttribute="##" role="form" method="GET">
			<div class="form-group">
				<form:label path="fname"></form:label>
				<form:input class="form-control" path="fname" type="text"/>
				<p class="errStyle"> <form:errors path="fname"></form:errors></p>
			</div>
			
			<div class="form-group">
				<form:label path="lname"></form:label>
				<form:input class="form-control" path="lname" type="text"/>
			<p class="errStyle"> <form:errors path="lname"></form:errors></p>
			</div>

			<div class="form-group">
				<form:label path="address"></form:label>
				<form:input class="form-control" path="address" type="textarea"/>
			<p class="errStyle"> <form:errors path="address"></form:errors></p>
			</div>
			
					<div class="form-group">
				<form:label path="contact"></form:label>
				<form:input class="form-control" path="contact" type="number" />
				<p class="errStyle"> <form:errors path="contact"></form:errors></p>
			</div>
			
			<div class="form-group">
				<input class="btn btn-info" type="submit"
					value="<spring:message text="Submit"/>" />
				<input class="btn btn-info" type="reset"
					value="<spring:message text="Cancel checkout"/>" />
			</div>
 </form:form>
 </div>
 <div>
<%@ include file = "/WEB-INF/view/Footer.jsp"%>
</div>

</body>
</html>