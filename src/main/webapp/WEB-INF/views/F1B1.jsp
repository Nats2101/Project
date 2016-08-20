<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="assets/fonts/font-awesome-4.2.0/css/font-awesome.min.css"/>

    <style>
	img:hover
	{
	image src:images/B2F2b.jpg;
	height:400px;
	width:300px;
	}
	div.stars {
  width: 270px;
  display: inline-block;
}

input.star { display: none; }

label.star {  float: right;
  padding: 10px;
  font-size: 36px;
  color: #444;
  transition: all .2s;
}
input.star:checked ~ label.star:before {
  content: '\f005';
  color: #FD4;
  transition: all .25s;
}
input.star-5:checked ~ label.star:before {
  color: #FE7;
  text-shadow: 0 0 20px #952;
}

input.star-1:checked ~ label.star:before { color: #F62; }

label.star:hover { transform: rotate(-15deg) scale(1.3); }
 
label.star:before {
  content: '\f006';
  font-family: FontAwesome;
}
.add-to-cart .btn-qty {
  width: 52px;
  height: 46px;
}

.add-to-cart .btn { border-radius: 0; }

.monospaced { font-family: 'Ubuntu Mono', monospaced ; }

	</style>
</head>

<body>

<div class="container" id="product-section">
 
 <div class="row">
   <div class="col-md-6">
 <img src="images/B2F2a-.jpg" alt="TokillaMockingbird" padding="30px" height="400" width="300" class="image-responsive"/>
   </div>
   
   
   <div class="col-md-6">
   
   <div class="row">
  <div class="col-md-12">
   <h1>half girlfriend</h1>
 </div>
    </div>
 
<div class="row">
 <div class="col-md-12">
  <span class="label label-primary">drama/romance</span>

  <span class="monospaced">No. 1960140180</span>
 </div>
</div>
 
  <div class="row">
 <div class="col-md-12">
  <p class="description">
   Classic film camera. Uses 620 roll film.
   Has a 2&frac14; x 3&frac14; inch image size.
  </p>
 </div>
</div>

<div class="row">
 <div class="col-md-3">
  <div class="stars">
  <form action="">
  <span class="sr-only">Four out of Five Stars</span>
  <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
  <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
  <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
  <span class="glyphicon glyphicon-star" aria-hidden="true"></span>
  <span class="glyphicon glyphicon-star-empty" aria-hidden="true"></span>
  <span class="label label-success">61</span>
 </div>

  
  
    <input class="star star-5" id="star-5" type="radio" name="star"/>
    <label class="star star-5" for="star-5"></label>
    <input class="star star-4" id="star-4" type="radio" name="star"/>
    <label class="star star-4" for="star-4"></label>
    <input class="star star-3" id="star-3" type="radio" name="star"/>
    <label class="star star-3" for="star-3"></label>
    <input class="star star-2" id="star-2" type="radio" name="star"/>
    <label class="star star-2" for="star-2"></label>
    <input class="star star-1" id="star-1" type="radio" name="star"/>
    <label class="star star-1" for="star-1"></label>
  </form>
</div>
 </div>
 <div class="col-md-3">
  <span class="monospaced">Write a Review</span>
 </div>
</div><!-- end row -->

<div class="row">
 <div class="col-md-12 bottom-rule">
  <h2 class="product-price">$129.00</h2>
 </div>
</div><!-- end row -->

<div class="row add-to-cart">
 <div class="col-md-5 product-qty">
  <span class="btn btn-default btn-lg btn-qty">
   <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
  </span>
  <input class="btn btn-default btn-lg btn-qty" value="1" />
  <span class="btn btn-default btn-lg btn-qty">
   <span class="glyphicon glyphicon-minus" aria-hidden="true"></span>
  </span>
 </div>
 <div class="col-md-4">
  <button class="btn btn-lg btn-brand btn-full-width">
   Add to Cart
  </button>
 </div>
</div><!-- end row -->

<div class="row">
 <div class="col-md-4 text-center">
  <span class="monospaced">In Stock</span>
 </div>
 <div class="col-md-4 col-md-offset-1 text-center">
  <a class="monospaced" href="#">Add to Shopping List</a>
 </div>
</div><!-- end row -->
<div class="row">
 <div class="col-md-12 bottom-rule top-10"></div>
</div><!-- end row -->

<div class="row">
 <div class="col-md-12 top-10">
  <p>To order by telephone, <a href="tel:18005551212">please call 1-800-555-1212</a></p>
 </div>
</div><!-- end row -->


 
  </div><!-- end row -->
 </div><!-- end container -->
 
 </div>
 </body>
 </html>