<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div>
<%@ include file = "/WEB-INF/view/Header.jsp"%>
</div>

<div class="container text-center" ng-app="myApp" ng-controller="myCtrl">
 <h2>CONFIRM ORDER</h2>
 <br>
 <h3>Do you want to confirm this order and proceed to payment?</h3>
<div class="row">

<div class="col-sm-6">
<form action="###" method="post" role="form">
<input type="text" name="id" value="${param.id}" style="visibility:hidden;">
<input type="submit" value="Confirm" class="btn btn-danger" />
 </form>
 </div>
 
<div class="col-sm-6">
<form action="##" method="get" role="form">
<input type="submit" value="Cancel" class="btn btn-warning" />
</form>
 </div>
 </div>
<%@ include file="/WEB-INF/view/Footer.jsp" %>
</div>
</body>
</html>