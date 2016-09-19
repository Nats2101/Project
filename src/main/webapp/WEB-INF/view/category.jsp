<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
        <link href="http://fonts.googleapis.com/css?family=Neucha" rel="stylesheet" type="text/css">
<title>Welcome</title>
<style>
.under
{
position:absolute;
left:0px;
top:40px;
z-index:-10;
}
.img-responsive
{
  width:150px ;
height:210px ; 
  border-radius:10px;
box-shadow: 10px 10px 10px #333; 
opacity:0.9;

perspective: 1000px;
transition: 2s;
}
.img-responsive:hover
{
transform: rotateY(80deg);
}
@import "compass/css3";
.row
{
	padding-left:50px;
}
p
{
	text-align:left;
	font: normal 35px 'Cookie', cursive;
	padding-left:30px;
	color:#292c2f;
}
</style>

</head>
<body>
<div>
<img class="under" class="img-responsive" src="resource/images/wood1.jpg" width="100%" height="1140px">
 <div class="container">
 <div class="row">
 <p>Check out list of products in each category...</p>
  		<div class="col-sm-3">
  		  <a href="AllProducts?id=1"><img class="img-responsive" src="resource/images/v.jpg" alt="Random Name"></a>	
		<p>Fiction<p>
		</div>
		
		<div class="col-sm-3">
		<a href="AllProducts?id=2"><img class="img-responsive" src="resource/images/nf2.jpg" alt="Random Name"></a>	
	   	<p>Non Fiction<p>
	   	</div>
		
		<div class="col-sm-3">
         <a href="AllProducts?id=3"><img class="img-responsive" src="resource/images/c1.jpg" alt="Random Name"></a>	
		<p>Comics<p>
		</div>
		
		<div class="col-sm-3">
         <a href="AllProducts?id=4"><img class="img-responsive" src="resource/images/ch1.jpg" alt="Random Name"></a>	
		<p>Childrens<p>
		</div>
  </div>
</div>
</body>
</html>