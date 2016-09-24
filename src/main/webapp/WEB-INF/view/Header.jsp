
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="<c:url value='/resource/js/angular/Pcontroller.js'/>"></script>

<style type="text/css">
.welcome
{
	background-color:#292c2f;
	font: normal 25px 'Neucha', cursive;
	color:white;
	width:100%;
	text-align:right;
}

</style>
</head>
<body>

<nav class="navbar navbar-inverse navbar-fixed-top headroom navi">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">	
	 	<p class="head">Pick-A-Book!<p>
	 </a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
	  <li><a href="/PickABook">Home</a></li>
	  <li><a href="${pageContext.request.contextPath}/Fiction">Fiction</a></li>
	  <li><a href="${pageContext.request.contextPath}/Nonfiction">Non-Fiction</a></li>
	  <li><a href="${pageContext.request.contextPath}/Comic">Comics</a></li>
	  <li><a href="${pageContext.request.contextPath}/Children">Children's</a></li>
	
      <sec:authorize access="hasRole('ROLE_USER')">
       <li><a href="${pageContext.request.contextPath}/AllProducts?id=0">View All</a></li>
      </sec:authorize>
      <sec:authorize access="hasRole('ROLE_ADMIN')">
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Products
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="${pageContext.request.contextPath}/AddProducts">Add Products</a></li>
          <li><a href="${pageContext.request.contextPath}/AllProducts?id=0">View Products</a></li>
          </ul>
      </li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Categories
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="${pageContext.request.contextPath}/AddCategory">Add category</a></li>
          <li><a href="${pageContext.request.contextPath}/AllCategory?cid=0">All categories</a></li>
          </ul>
      </li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Suppliers
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="${pageContext.request.contextPath}/AddSupplier">Add Supplier</a></li>
          <li><a href="${pageContext.request.contextPath}/AllSuppliers?id=0">All Suppliers</a></li>
          </ul>
      </li>
      </sec:authorize>
      
		<li><a href="${pageContext.request.contextPath}/Aboutus">About Us</a></li>
        				
       <sec:authorize access="isAnonymous()">		 
        <li><a href="${pageContext.request.contextPath}/Register"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="${pageContext.request.contextPath}/Login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </sec:authorize>
      <sec:authorize access="hasRole('ROLE_USER')">
       <li><a href="${pageContext.request.contextPath}/user/viewcart"><span class="glyphicon glyphicon-shopping-cart"></span> MyCart</a></li>
      </sec:authorize>
      <sec:authorize access="isAuthenticated()">
    		<li><a href='<c:url value="/logout" />'><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
	</sec:authorize>
  </ul>
    </div>
      <div class="welcome">
   Welcome to Pick-A-Book ${username}!
      </div>
  </div>
  
 
</nav>
</body>
</html>