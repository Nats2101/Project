<!DOCTYPE html>
<html lang="en">
<head>
  <title>About Us</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <link rel="stylesheet" href="resource/css/footer-distributed-with-contact-form.css">
     <link rel="stylesheet" type="text/css" href="resource/fonts/font-awesome-4.2.0/css/font-awesome.min.css"/>
  <link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
    
</head>

  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
    	  z-index:-1;
		   width: 50%;
      margin: auto;
	  position:relative;
	  margin-top:100px;
	  }
	  
 p.speech {
  position: relative;
  width: 200px;
  height: 97px;
  text-align: center;
  line-height: 14px;
  background-color: #fff;
  border: 8px solid #666;
  -webkit-border-radius: 60px;
  -moz-border-radius: 60px;
  border-radius: 30px;
  -webkit-box-shadow: 2px 2px 4px #888;
  -moz-box-shadow: 2px 2px 4px #888;
  box-shadow: 2px 2px 4px #888;
  color:#292c2f;
 font: normal 20px 'Cookie', cursive;
 z-index:1;
}
p.speech:before {
  content: ' ';
  position: absolute;
  width: 0;
  height: 0;
  left: 30px;
  top: 81px;
  border: 25px solid;
  border-color: #666 transparent transparent #666;
}
p.speech:after {
  content: ' ';
  position: absolute;
  width: 0;
  height: 0;
  left: 38px;
  top: 81px;
  border: 15px solid;
  border-color: #fff transparent transparent #fff;
}
	  
p.head
{
font-size:40px;
}
.navbar-brand
{
height:50px;
font: normal 35px 'Cookie', cursive;
color:white;
border-radius:20px;
}	  
#myNavbar
{
padding-top:80px;
background-color:#292c2f;
}

  </style>


<body>

<div>
<%@ include file = "Header.jsp"%>
</div>

  <div class="row">

    <div class="col-sm-2" style="background-color:white">

		<marquee class="mov" behavior="scroll" direction="up" height="1000px">
<p class="speech">Get your facts first then you can distort them as you please<br>-Mark Twain</p><br><br>
<p class="speech">The book to read is not the one that thinks for you but the one which makes you think<br>-Harper Lee</p><br><br>
<p class="speech">Happiness is when what you think, what you say, and what you do are in harmony<br>Mahatma Gandhi</p><br><br>
<p class="speech">If you want to shine like a sun, first burn like a sun<br>A. P. J. Abdul Kalam</p><br><br>
<p class="speech">Walking with a friend in the dark is better than walking alone in the light<br>-Helen Keller</p><br><br>
		</marquee>	
	
	</div>

    <div class="col-sm-9" style="background-color:white;">.<br><br><Br><br><br><Br>
	  
      <hr>
      <h2>Pick-A-Bookians</h2>
      <h5><span class="glyphicon glyphicon-time"></span> Post by Natasha, Jan 21, 2015.</h5>
      <h5><span class="label label-success">Books</span></h5><br>
      <p>Pick-A-Book has a humongous collection of different genres of books. We , Pick-A-Bookians try to provide all the book lovers out there with all their favourite book anytime!Whether it’s for research or relaxation, for you or your whole book club, collectible or contemporary, this is a bookstore that can keep you reading – at home and on the road. <br>So Pick-A-Book now! </p>
      <hr>

      <h4>Leave a Comment:</h4>
      <form role="form">
        <div class="form-group">
          <textarea class="form-control" rows="3" required></textarea>
        </div>
        <button type="submit" class="btn btn-success">Submit</button>
      </form>
      <br><br>
      
      <p><span class="badge">2</span> Comments:</p><br>
      
      <div class="row">
        <div class="col-sm-2 text-center">
          <img src="resource/images/A3.jpg" height="75" width="65" alt="Avatar">
        </div>
        <div class="col-sm-10">
          <h4>Stephenie Meyer <small>Sep 29, 2015, 9:12 PM</small></h4>
          <p>Keep up the GREAT work! I am cheering for you!! Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
          <br>
        </div>
        <div class="col-sm-2 text-center">
          <img src="resource/images/A5.jpg"  height="75" width="65" alt="Avatar">
        </div>
        <div class="col-sm-10">
          <h4>Jeffery Archer<small>Sep 25, 2015, 8:25 PM</small></h4>
          <p>I am so happy for you man! Finally. I am looking forward to read about your trendy life. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
          <br>
          <p><span class="badge">1</span> Comment:</p><br>
          <div class="row">
            <div class="col-sm-2 text-center">
              <img src="resource/images/A1.jpg" height="75" width="65" alt="Avatar">
            </div>
            <div class="col-xs-10">
              <h4>J.K. Rowling<small>Sep 25, 2015, 8:28 PM</small></h4>
              <p>Me too! WOW!</p>
              <br>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

<div>
<%@ include file = "Footer.jsp"%>
</div>

</body>
</html>

