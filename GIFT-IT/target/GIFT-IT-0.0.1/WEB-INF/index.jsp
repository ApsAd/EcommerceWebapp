<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">-->
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link  rel="stylesheet" type="text/css" href="/example/WebContent/style.css"/>
<style>
body{
 background-image: url("D:\NIIT\PRO\FRONT END\img\body.jfif");
 background-color:floralWhite;
}
.navbar-default {
    background-color:pink;
    border-color: pink;
}
.navbar-default .navbar-brand {
    color: Purple;
}
.navbar-default .navbar-brand:hover,
.navbar-default .navbar-brand:focus {
    color: MidnightBlue;
}
/* link */
.navbar-default .navbar-nav > li > a {
    color: Purple;
}
.navbar-default .navbar-nav > li > a:hover,
.navbar-default .navbar-nav > li > a:focus {
    color: Midnight Blue;
}
.navbar-default .navbar-nav > .active > a, 
.navbar-default .navbar-nav > .active > a:hover, 
.navbar-default .navbar-nav > .active > a:focus {
    color: pink;
    background-color: Purple;
}
.navbar-default .navbar-nav > .dropdown > a .caret {
    border-top-color: Purple;
    border-bottom-color: blue;
}
.navbar-default .navbar-nav > .dropdown > a:hover .caret,
.navbar-default .navbar-nav > .dropdown > a:focus .caret {
    border-top-color: Indigo;
    border-bottom-color: Purple;
}
.dropdown-menu >li > a{
color:Purple;
 background-color:pink;
}
.dropdown-menu >li > a:hover,
.dropdown-menu >li > a:focus{
color:pink;
 background-color:purple;
}
.dropdown-toggle{

}
div#mycarousel{
	position:absolute;
	left:300px;
	width:600px;
	height:300px;
	border:1px solid red;
}
div.c-wrapper{
    width: 80%; /* for example */
    margin: auto;
}

.carousel-inner > .item > img, 
.carousel-inner > .item > a > img{
width: 100%; /* use this, or not */
margin: auto;
}
.container {
    width: 800px;
    margin: 0 auto; 
}
.thumbnail{
left:10px;
width:200px;
height:200px;
}
.footer {
	background: #EDEFF1;
	height: auto;
	padding-bottom: 30px;
	position: relative;
	width: 100%;
	border-bottom: 1px solid black;
	border-top: 1px solid #DDDDDD;
}
/*.footer-bottom {
	background: #E3E3E3;
	border-top: 1px solid #DDDDDD;
	padding-top: 10px;
	padding-bottom: 10px;
}
.footer-bottom p.pull-left {
	padding-top: 6px;
}
.payments {
	font-size: 1.5em;	
}*/
</style>
</head>
<body>
<div class="container"><!-- Container -->
<div class="navbar">
		<nav class="navbar navbar-default navbar-fnt navbar-backgrnd navbar-fixed-top ">
      <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">GIFT IT</a>
        </div>
        <ul class="nav navbar-nav">
            <li class="active"><a href="#">Home</a></li>
           <li class="dropdown">
        		<a class="dropdown-toggle" data-toggle="dropdown" href="#" onclick="class:active">Occasions
        		<span class="caret"></span></a>
        		<ul class="dropdown-menu">
          			<li><a href="#">Birthday</a></li>
          			<li><a href="#">Anniversary</a></li>
          			<li><a href="#">Special gift</a></li> 
        		</ul>
      		</li>
            <li><a href="#">Personalised </a></li>
            <li><a href="#">Handmade </a></li>
        </ul>
         <form class="navbar-form navbar-left">
        		<div class="form-group">
          		<input type="text" class="form-control" placeholder="Search">
        		</div>
       			 <button type="submit" class="btn btn-default">Go</button>
      	</form>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="login.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
            <li><a href="#" data-toggle="modal" datatarget="#myModal"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
        </ul>
      </div>
  </nav>
</div><!-- end of navbar -->
<!-- Modal -->
 <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
 <div class="modal-dialog">
 <div class="modal-content">
 <div class="modal-header">
 <button type="button" class="close" datadismiss="modal"><span aria-hidden="true">&times;</span>
 <span class="sr-only">Close</span></button>
 <h2 class="modal-title" id="myModalLabel">Sign in</h2>
 </div>
 <div class="modal-body">
 <form class="form-signin" role="form">
 <h3 class="form-signin-heading">Sign in with your email
address</h3>
 <div class="form-group">
 <input type="email" class="form-control"
placeholder="Email address" required autofocus>
 </div>
 <div class="form-group">
 <input type="password" class="form-control"
placeholder="Password" required>
 </div>
 <div class="checkbox">
 <label>
 <input type="checkbox" value="remember-me"> Remember
me
 </label>
 </div>
 <button class="btn btn-lg btn-primary btn-block"
type="submit">Sign in</button>
 </form>
 </div>
 <div class="row">
 <div class="col-xs-3">
 <a href="#" class="btn btn-facebook btn-large btn-caps
btn-block">Facebook <span class="icon-facebook"></span></a>
 </div>
 <div class="col-xs-3">
 <a href="" class="btn btn-twitter btn-large btn-caps btnblock">Twitter
<span class="icon-twitter"></span></a>
 </div>
 <div class="col-xs-3">
Chapter 9
[ 7 ]
 <a href="" class="btn btn-lg btn-caps btn-block"><span
class="icon-dribbble"></span></a>
 </div>
 </div>
 <div class="modal-footer">
 </div>
 </div>
 </div>
 </div><!-- Sign in Modal  -->
<br>
<!-- carousel -->
<div class="c-wrapper">
 <div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="D:\NIIT\PRO\FRONT END\img\carouselimg1.jfif" alt="Chania">
    </div>

    <div class="item">
      <img src="D:\NIIT\PRO\FRONT END\img\img2.jfif" alt="Chania">
    </div>

    <div class="item">
      <img src="D:\NIIT\PRO\FRONT END\img\img3.jfif" alt="Flower">
    </div>

    <div class="item">
      <img src="D:\NIIT\PRO\FRONT END\img\img4.jfif" alt="Flower">
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
</div><!-- End of carousel -->
</div><!-- End of carousel wrapper -->
<br>
<div class="row">
  <div class="col-sm-4">
  <!-- <div class="col-sm-6 col-md-4">Product picture -->
 <div class="thumbnail">
 <img src="D:\NIIT\PRO\FRONT END\img\ph1.jfif" alt="frame">
 <div class="add-to-cart">
 <a href="#" class="glyphicon glyphicon-plus-sign"
data-toggle="tooltip" data-placement="top" title="Add to cart"></a>
 </div>
 <div class="caption">
 <h4 class="pull-right">2000</h4>
 <h4><a href="product.html">1<sup>st</sup> Product</a>
 </h4>
 <p>11 pictures photo frame </p>
 <div class="ratings">
 <p class="pull-right"><a href="product.
html#comments">15 reviews</a></p>
 <p>
 <span class="glyphicon glyphicon-star"></span>
 <span class="glyphicon glyphicon-star"></span>
 <span class="glyphicon glyphicon-star"></span>
 <span class="glyphicon glyphicon-star"></span>
 <span class="glyphicon glyphicon-star"></span>
 </p>
 </div>
 </div>
 </div>
  <!--</div> End of product picture -->
  </div><!-- second  col -->
  <div class="col-sm-4">
   <div class="thumbnail">
 <img src="D:\NIIT\PRO\FRONT END\img\p2.jfif" alt="frame">
 <div class="add-to-cart">
 <a href="#" class="glyphicon glyphicon-plus-sign"
data-toggle="tooltip" data-placement="top" title="Add to cart"></a>
 </div>
 <div class="caption">
 <h4 class="pull-right">2000</h4>
 <h4><a href="product.html">1<sup>st</sup> Product</a>
 </h4>
 <p>Happy birthday teddy bear</p>
 <div class="ratings">
 <p class="pull-right"><a href="product.
html#comments">15 reviews</a></p>
 <p>
 <span class="glyphicon glyphicon-star"></span>
 <span class="glyphicon glyphicon-star"></span>
 <span class="glyphicon glyphicon-star"></span>
 <span class="glyphicon glyphicon-star"></span>
 <span class="glyphicon glyphicon-star"></span>
 </p>
 </div>
 </div>
 </div><!-- end of second col -->
  </div>
  <div class="col-sm-4"><!-- third col -->
  <div class="thumbnail">
 <img src="D:\NIIT\PRO\FRONT END\img\p3.jfif" alt="frame">
 <div class="add-to-cart">
 <a href="#" class="glyphicon glyphicon-plus-sign"
data-toggle="tooltip" data-placement="top" title="Add to cart"></a>
 </div>
 <div class="caption">
 <h4 class="pull-right">2000</h4>
 <h4><a href="product.html">1<sup>st</sup> Product</a>
 </h4>
 <p>Wedding anniversary gifts</p>
 <div class="ratings">
 <p class="pull-right"><a href="product.
html#comments">15 reviews</a></p>
 <p>
 <span class="glyphicon glyphicon-star"></span>
 <span class="glyphicon glyphicon-star"></span>
 <span class="glyphicon glyphicon-star"></span>
 <span class="glyphicon glyphicon-star"></span>
 <span class="glyphicon glyphicon-star"></span>
 </p>
 </div>
 </div>
  </div><!-- End of third col -->
</div>
<br>
<!-- footer -->
<footer>
<div class="navbar">
		<nav class="navbar navbar-default">
      <div class="container-fluid">
        <div class="navbar-header"> Copyright © Footer E-commerce Plugin 2014. All right reserved. </p>
            <div class="pull-right">
                <ul class="nav nav-pills payments">
                	<li><i class="fa fa-cc-visa"></i></li>
                    <li><i class="fa fa-cc-mastercard"></i></li>
                    <li><i class="fa fa-cc-amex"></i></li>
                    <li><i class="fa fa-cc-paypal"></i></li>
                </ul> 
            </div>
        </div>
    </div>
    </nav>
 </div> 
</footer>
</div><!-- end of container -->
</body>
</html>