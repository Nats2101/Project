<!DOCTYPE html>
<html>
<head>
<title>Homepage</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 <link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
     <link href="http://fonts.googleapis.com/css?family=Neucha" rel="stylesheet" type="text/css">
     <link href="http://fonts.googleapis.com/css?family=Satisfy" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  
  <link rel="stylesheet" href="resource/css/footer-distributed-with-contact-form.css">
    <link rel="stylesheet" type="text/css" href="resource/fonts/font-awesome-4.2.0/css/font-awesome.min.css"/>
  <link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
    	  		   width: 50%;
      margin: auto;
      padding: auto;
	  position:relative;
	  }
	  
 p.head
{
font-size:52px;
z-index: 100;
color:white;
}

.navbar-brand
{
height:52px;
font: normal 35px 'Cookie', cursive;
color:white;
border-radius:0px;

}	  
#myNavbar
{
padding-top:80px;
background-color:#292c2f;
width:100%;
}
a
{
	font: normal 20px 'Neucha', cursive;
}
.welcome
{
	background-color:#292c2f;
	font: normal 25px 'Neucha', cursive;
	color:white;
	width:100%;
	padding-top:150px;
	height:180px;
	float:center;
}

  </style>
</head>
<body>
<div>
<%@ include file = "Header.jsp"%>
</div>

  <div class="welcome">
   Welcome to Pick-A-Book, ${Role} ${username}!
      </div>
<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
	   <li data-target="#myCarousel" data-slide-to="4"></li>
      <li data-target="#myCarousel" data-slide-to="5"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="resource/images/a.jpg" alt="img" width="460" height="345">
      </div>

      <div class="item">
        <img src="resource/images/b.png" alt="img" width="460" height="345">
      </div>
    
      <div class="item">
        <img src="resource/images/c.jpg" alt="img" width="460" height="345">
      </div>

      <div class="item">
        <img src="resource/images/d.png" alt="img" width="460" height="345">
      </div>
	  
	   <div class="item">
        <img src="resource/images/5.jpg" alt="img" width="460" height="345">
      </div>
	   <div class="item">
        <img src="resource/images/6.jpg" alt="img" width="460" height="345">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>


<div>
<%@ include file = "category.jsp"%>
</div>

<div>
<%@ include file = "Footer.jsp"%>
</div>

</body>
</html>