<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html >
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Welcome to Gift shop</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link  rel="stylesheet" type="text/css" href="resources\css\style.css"/>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script >
/*
* Flux 3D Carousel
* Author: Dean Coulter
* Licensed under the MIT license
* 
* Version 0.1
*/

(function($){
$.fn.carousel3d = function(args){

	var el = ({
		carousel_frame: $(this)
	});

	var size = el.carousel_frame.children().size();	
	var panelSize = el.carousel_frame.width();
	var translateZ = Math.round( ( panelSize / 2 ) / Math.tan( Math.PI / size ) );

	el.carousel_frame.css({
		"transform": "rotateY(0deg) translateZ(-"+translateZ+"px)"
	})

	var rotateY = 0;
	var rotate_int = 0;
	var ry =  360/size;
	var box = 0;

	function animate_slider(){
		rotateY = ry*rotate_int;
		$("#test").text(rotateY+", "+rotate_int+", ");
		
		for(i=0;i<size;i++){
			var z = (rotate_int*ry)+(i*ry);		
			el.carousel_frame.children("figure:eq("+i+")").css({
				"transform":"rotateY("+z+"deg ) translateZ("+translateZ+"px)"
			});
		}
		
		rotateY = 0;
		box = 0; // reset rotateY, ready for re-use
	}

	animate_slider();

	$(".next").on("click", function(){
		rotate_int -=1;
		animate_slider();
	});

	$(".prev").on("click", function(){
		rotate_int +=1;
		animate_slider();
	});

	el.carousel_frame.children().on("click", function(){
		new_int = -1*$(this).index();
		if(new_int < rotate_int+(-1*(size/2)) ){
			rotate_int = size + new_int;
		} else {
			rotate_int = new_int;
		}

		animate_slider();
	});	

}
})(jQuery);


</script>
<script type="text/javascript">
		$(document).ready(function(){
			$('#carousel').carousel3d();
		});
	</script>
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
            <li class="active"><a href="index.jsp">Home</a></li>
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
            <!-- <li><a href="signup" data-toggle="modal" data-target="#signupmodal"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>-->
           <li>Hi ${u.fname}</li>
        </ul>
      </div>
  </nav>
</div><!-- end of navbar -->
<!-- Modal 
 <div class="modal fade" id="signupmodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
 <div class="modal-dialog">
 <div class="modal-content">
 </div>
 </div>
 </div><!-- Sign in Modal  -->
<br>
<!-- carousel 
<div class="c-wrapper">
 <div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators 
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>

  <!-- Wrapper for slides 
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="resources\img\carouselimg1.jfif" alt="Chania" class="img-responsive">
    </div>

    <div class="item">
      <img src="resources\img\img2.jfif" alt="Chania" class="img-responsive">
    </div>

    <div class="item">
      <img src="resources\img\img3.jfif" alt="Flower" class="img-responsive">
    </div>

    <div class="item">
      <img src="resources\img\img4.jfif" alt="Flower" class="img-responsive">
    </div>
  </div>

  <!-- Left and right controls 
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
<!-- <div class="row">
<h2>Occasions</h2>
  <div class="col-sm-4">
  <!-- <div class="col-sm-6 col-md-4">Product picture 
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
  <!--</div> End of product picture 
  </div><!-- second  col -->
<!--   <div class="col-sm-4">
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
 </div><!-- end of second col 
  </div>
  <div class="col-sm-4"><!-- third col 
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
  </div><!-- End of third col 
  <div class="container-fluid">
  <div class="row">
  <div class="col-md-12">
  <ul class="birthday">
  <li>
  <img src="D:/NIIT/PRO/FRONT END/img/birth1.jfif">
  <h4>hii</h4>
  <p>200</p>
  </li>
  <li>
  <img src="D:/NIIT/PRO/FRONT END/img/birth1.jfif">
  <h4>hii</h4>
  <p>200</p>
  </li>
  <li>
  <img src="D:/NIIT/PRO/FRONT END/img/birth1.jfif">
  <h4>hii</h4>
  <p>200</p>
  </li>
  <li>
  <img src="D:/NIIT/PRO/FRONT END/img/birth1.jfif">
  <h4>hii</h4>
  <p>200</p>
  </li>
  <li>
  <img src="D:/NIIT/PRO/FRONT END/img/birth1.jfif">
  <h4>hii</h4>
  <p>200</p>
  </li>
  </ul>
  <div class="row">
  <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
    <div class="hovereffect">
        <img class="img-responsive" src="D:\GIFT-IT\src\main\webapp\resources\img\birth.jfif" alt="">
            <div class="overlay">
                <h2>Effect 10</h2>
                <p class="icon-links">
                    <a href="#">
                        <span class="fa fa-twitter"></span>
                    </a>
                    <a href="#">
                        <span class="fa fa-facebook"></span>
                    </a>
                    <a href="#">
                        <span class="fa fa-instagram"></span>
                    </a>
                </p>
            </div>
    </div>
</div>-->
<!-- 3d carousel -->
<center><h1 style="font-family:monotype corsiva;color:purple"> Some gifts are big others are small,But the ones that come from heart are the best of all!!</h1></center>
<div class="back1">
<div id="perspective">
  <div id="carousel">
	<figure><img src="resources\img\proposal.png" width="600px" height="300px"></figure>
    <figure><img src="resources\img\carouselimg1.jfif" width="600px"></figure>
    <figure><img src="resources\img\img2.jfif" width="600px"></figure>
    <figure><img src="resources\img\img3.jfif" width="600px"></figure>
    <figure><img src="resources\img\img4.jfif" width="600px"></figure>
     
  </div>
</div>
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<!-- Image links -->
<div class="container">
  
  <div class="row">
    <div class="col-sm-4">
      <a href="gfh"><img alt="gfh" src="resources\img\giftforher.jfif"></a>
    </div>
    <div class="col-sm-4">
      <a href="hm"><img alt="gfh" src="resources\img\hm.jfif"></a>
    </div>
     <div class="col-sm-4">
     <a href="gfhim"><img alt="gfh" src="resources\img\gfhi.jfif"></a>
    </div>
  </div>
   <div class="row">
    <div class="col-sm-4">
    <a href="#"><img alt="gfh" src="resources\img\flowers.jfif"></a>
    </div>
    <div class="col-sm-4">
      <a href="#"><img class="img-responsive" alt="gfh" src="resources\img\diwali.jfif"></a>
    </div>
     <div class="col-sm-4">
    <a href="#"><img alt="gfh" src="resources\img\choc.jfif"></a>
    </div>
  </div>
</div>


<!-- Image links end -->
<!-- footer -->
<!-- <footer>
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