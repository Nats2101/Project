<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="http://fonts.googleapis.com/css?family=Cookie"
	rel="stylesheet" type="text/css">
<link href="http://fonts.googleapis.com/css?family=Neucha"
	rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resource/css/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resource/css/footer-distributed-with-contact-form.css">
<link rel="stylesheet" type="text/css"
	href="resource/fonts/font-awesome-4.2.0/css/font-awesome.min.css" />
<link href="http://fonts.googleapis.com/css?family=Cookie"
	rel="stylesheet" type="text/css">


<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script
	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="<c:url value='/resource/js/angular/Pcontroller.js'/>"></script>
<style type="text/css">
.container {
	padding-top: 200px;
}
</style>
</head>
<body>

	<div>
		<%@ include file="/WEB-INF/view/Header.jsp"%>
	</div>
	<div class="container text-center">
		<table id="cart" class="table table-striped">
			<thead>
				<tr>
					<th style="width: 50%">Product name</th>
					<th style="width: 10%">Price</th>
					<th style="width: 8%">Quantity</th>
					<th style="width: 22%" class="text-center">Subtotal</th>
					<th style="width: 10%"></th>
				</tr>
			</thead>

			<tbody>
				<c:forEach var="cart" items="${cartList}">

					<tr>
						<td data-th="Product name">
							<div class="row">
								<div class="col-sm-2 hidden-xs">
									<img
										src="<c:url value='${pageContext.request.contextPath}/resource/image/${cart.product.name}.jpg'/>"
										alt="..." class="img-responsive" />
								</div>
								<div class="col-sm-10">
									<h4 class="nomargin">${cart.product.name}</h4>
									<%-- <p>${cart.description}</p> --%>
								</div>
							</div>
						</td>
						<td data-th="Price">${cart.product.price}</td>
						<td data-th="Quantity">
							<!-- <input type="number" class="form-control text-center" value="1"> -->${cart.quantity}</td>
						<td data-th="Subtotal" class="text-center">total</td>

						<td class="actions" data-th=""><a
							href="<!-- EditCart?id={{product.id}} -->"><button
									class="btn btn-info btn-md">
									<i class="fa fa-refresh"></i>
								</button></a> <a href="<!-- DeleteCart?id={{product.id}} -->"><button
									class="btn btn-danger btn-md">
									<i class="fa fa-trash-o"></i>
								</button></a></td>
					</tr>
					</c:forEach>
			</tbody>
			
		</table>
	<div class="btn btn-info">
		<a href="${pageContext.request.contextPath}/AllProducts">
			<i class="fa fa-angle-left"></i> Continue Shopping	
		</a>
		</div>
		<form:form
			action="${pageContext.request.contextPath}/collectbillinginfo?cartId=35">
			<input class="btn btn-success" type="submit" value="Checkout" />
			</form:form>



	</div>
	<div>
		<%@ include file="/WEB-INF/view/Footer.jsp"%>
	</div>
</body>
</html>