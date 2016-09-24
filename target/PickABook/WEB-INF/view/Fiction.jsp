<!DOCTYPE html>
<html lang="en">
<head>
  <title>Fiction</title>
<meta charset="utf-8">
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
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="<c:url value='/resource/js/angular/Pcontroller.js'/>"></script>
<style type="text/css">

</style>
</head>
<body>

<div>
<%@ include file = "Header.jsp"%>
</div>

<div class="container text-center" ng-app="myApp" ng-controller="myCtrl">
  <h2>FICTION</h2>
  
 <div class="container">
  
  <div class="col-sm-3" ng-repeat="product in Data|filter:{category:'Fiction'}|filter:search" >
  		<!-- <div class="col"> -->
        <a href="F1B1.jsp"><img src="<c:url value='/resource/image/{{product.name}}.jpg'/>" alt="Random Name"></a>
	    <!-- <p><strong><button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo{{product.id}}">View</button></strong></p><br>
			<div id="demo{{product.id}}" class="collapse"> -->
				<p><b>{{product.name}}</b></p>
				<p><i>{{product.description}}</i></p>
				<p>Rs.{{product.price}}</p>
				<button type="button" class="btn btn-default btn-sm">
				<span class="glyphicon glyphicon-shopping-cart"></span> Add to Cart
				<!-- </button> -->
			<!-- </div> -->
		</div>
		</div>
		</div>
		</div>
	<!-- 	<div class="col-sm-3">
        <img src="resource/images/w.jpg" alt="Random Name">
	    <p><strong><button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo2">View</button>
			<div id="demo2" class="collapse"></strong></p><br>
				<p>Angels and Demons</p>
				<p>Dan Brown</p>
				<p>Rs 500</p>
				
				<button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-shopping-cart"></span> Add to Cart
        </button>
				
			</div>
		</div>
		
		<div class="col-sm-3">
        <img src="resource/images/x.jpg" alt="Random Name">
	    <p><strong><button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo3">View</button>
			<div id="demo3" class="collapse"></strong></p><br>
				<p>Angels and Demons</p>
				<p>Dan Brown</p>
				<p>Rs 500</p>
				<button type="button" class="btn btn-default btn-sm">
				<span class="glyphicon glyphicon-shopping-cart"></span> Add to Cart
				</button>
			</div>
		</div>
		
		<div class="col-sm-3">
        <img src="resource/images/z.jpg" alt="Random Name">
	    <p><strong><button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo4">View</button>
			<div id="demo4" class="collapse"></strong></p><br>
				<p>Angels and Demons</p>
				<p>Dan Brown</p>
				<p>Rs 500</p>
				<button type="button" class="btn btn-default btn-sm">
				<span class="glyphicon glyphicon-shopping-cart"></span> Add to Cart
				</button>
			</div>
		</div>
  </div>
 
  <div class="row">
  		<div class="col-sm-3">
        <img src="resource/images/v.jpg" alt="Random Name">
	    <p><strong><button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo5">View</button>
			<div id="demo5" class="collapse"></strong></p><br>
				<p>Angels and Demons</p>
				<p>Dan Brown</p>
				<p>Rs 500</p>
				<button type="button" class="btn btn-default btn-sm">
				<span class="glyphicon glyphicon-shopping-cart"></span> Add to Cart
				</button>
			</div>
		</div>
		
		<div class="col-sm-3">
        <img src="resource/images/w.jpg" alt="Random Name">
	    <p><strong><button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo6">View</button>
			<div id="demo6" class="collapse"></strong></p><br>
				<p>Angels and Demons</p>
				<p>Dan Brown</p>
				<p>Rs 500</p>
				<button type="button" class="btn btn-default btn-sm">
				<span class="glyphicon glyphicon-shopping-cart"></span> Add to Cart
				</button>
			</div>
		</div>
		
		<div class="col-sm-3">
        <img src="resource/images/x.jpg" alt="Random Name">
	    <p><strong><button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo7">View</button>
			<div id="demo7" class="collapse"></strong></p><br>
				<p>Angels and Demons</p>
				<p>Dan Brown</p>
				<p>Rs 500</p>
				<button type="button" class="btn btn-default btn-sm">
				<span class="glyphicon glyphicon-shopping-cart"></span> Add to Cart
				</button>
			</div>
		</div>
		
		<div class="col-sm-3">
        <img src="resource/images/z.jpg" alt="Random Name">
	    <p><strong><button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo8">View</button>
			<div id="demo8" class="collapse"></strong></p><br>
				<p>Angels and Demons</p>
				<p>Dan Brown</p>
				<p>Rs 500</p>
				<button type="button" class="btn btn-default btn-sm">
				<span class="glyphicon glyphicon-shopping-cart"></span> Add to Cart
				</button>
			</div>
		</div>
  </div>
  
    <div class="row">
  		<div class="col-sm-3">
        <img src="resource/images/v.jpg" alt="Random Name">
	    <p><strong><button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo9">View</button>
			<div id="demo9" class="collapse"></strong></p><br>
				<p>Angels and Demons</p>
				<p>Dan Brown</p>
				<p>Rs 500</p>
				<button type="button" class="btn btn-default btn-sm">
				<span class="glyphicon glyphicon-shopping-cart"></span> Add to Cart
				</button>
			</div>
		</div>
		
		<div class="col-sm-3">
        <img src="resource/images/w.jpg" alt="Random Name">
	    <p><strong><button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo10">View</button>
			<div id="demo10" class="collapse"></strong></p><br>
				<p>Angels and Demons</p>
				<p>Dan Brown</p>
				<p>Rs 500</p>
				<button type="button" class="btn btn-default btn-sm">
				<span class="glyphicon glyphicon-shopping-cart"></span> Add to Cart
				</button>
			</div>
		</div>
		
		<div class="col-sm-3">
        <img src="resource/images/x.jpg" alt="Random Name">
	    <p><strong><button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo11">View</button>
			<div id="demo11" class="collapse"></strong></p><br>
				<p>Angels and Demons</p>
				<p>Dan Brown</p>
				<p>Rs 500</p>
				<button type="button" class="btn btn-default btn-sm">
				<span class="glyphicon glyphicon-shopping-cart"></span> Add to Cart
				</button>
			</div>
		</div>
		
		<div class="col-sm-3">
        <img src="resource/images/z.jpg" alt="Random Name">
	    <p><strong><button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo12">View</button>
			<div id="demo12" class="collapse"></strong></p><br>
				<p>Angels and Demons</p>
				<p>Dan Brown</p>
				<p>Rs 500</p>
				<button type="button" class="btn btn-default btn-sm">
				<span class="glyphicon glyphicon-shopping-cart"></span> Add to Cart
				</button>
			</div>
		</div>
  </div>
  
    <div class="row">
  		<div class="col-sm-3">
        <img src="resource/images/v.jpg" alt="Random Name">
	    <p><strong><button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo13">View</button>
			<div id="demo13" class="collapse"></strong></p><br>
				<p>Angels and Demons</p>
				<p>Dan Brown</p>
				<p>Rs 500</p>
				<button type="button" class="btn btn-default btn-sm">
				<span class="glyphicon glyphicon-shopping-cart"></span> Add to Cart
				</button>
			</div>
		</div>
		
		<div class="col-sm-3">
        <img src="resource/images/w.jpg" alt="Random Name">
	    <p><strong><button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo14">View</button>
			<div id="demo14" class="collapse"></strong></p><br>
				<p>Angels and Demons</p>
				<p>Dan Brown</p>
				<p>Rs 500</p>
				<button type="button" class="btn btn-default btn-sm">
				<span class="glyphicon glyphicon-shopping-cart"></span> Add to Cart
				</button>
			</div>
		</div>
		
		<div class="col-sm-3">
        <img src="resource/images/x.jpg" alt="Random Name">
	    <p><strong><button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo15">View</button>
			<div id="demo15" class="collapse"></strong></p><br>
				<p>Angels and Demons</p>
				<p>Dan Brown</p>
				<p>Rs 500</p>
				<button type="button" class="btn btn-default btn-sm">
				<span class="glyphicon glyphicon-shopping-cart"></span> Add to Cart
				</button>
			</div>
		</div>
		
		<div class="col-sm-3">
        <img src="resource/images/z.jpg" alt="Random Name">
	    <p><strong><button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo16">View</button>
			<div id="#demo16" class="collapse"></strong></p><br>
				<p>Angels and Demons</p>
				<p>Dan Brown</p>
				<p>Rs 500</p>
				<button type="button" class="btn btn-default btn-sm">
				<span class="glyphicon glyphicon-shopping-cart"></span> Add to Cart
				</button>
			</div>
		</div>
  </div>
 -->


	<div>
<%@ include file = "Footer.jsp"%>
</div>

</body>
</html>

