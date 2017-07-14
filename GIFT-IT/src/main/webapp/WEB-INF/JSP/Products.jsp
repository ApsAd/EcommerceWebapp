<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Welcome to Gift shop</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
<link  rel="stylesheet" type="text/css" href="resources\css\p.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.23/angular.min.js"></script>
<title>Insert title here</title>
<script>
var c='${cat}';
console.log(c);
var app = angular.module('myApp', []);
app.filter('startFrom', function() {
    return function(input, start) {
        if(input) {
            start = +start; //parse to int
            return input.slice(start);
        }
        return [];
    }
});

function MyController($scope, $http) {

	
	  
        
        $scope.getProduct = function() {
            $http({
                    method : 'GET',
                    url : 'Product?cid='+c
            }).success(function(data, status, headers, config) {
                    $scope.products = data; alert(data); 
            }).error(function(data, status, headers, config) {
                    // called asynchronously if an error occurs
                    // or server returns response with an error status.
            });
    };
};



</script>

</head>
<body>


<div class="container" ><!-- Container -->

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
            <li><a href="signup"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
            <li><a href="toLogin"><span   class="glyphicon glyphicon-user"></span> Signup</a></li>
        </ul>
      </div>
  </nav>
</div><!-- end of navbar -->



<!-- Product Slider - START -->

hello ${cat}<%=request.getParameter("cat") %>
<div class="container" ng-app="myApp" ng-controller="MyController">

  <div ng-init="getProduct()">
  <p><input type="text" ng-model="test"></p>
  
</div>

    <div class="row">
        <div class="row">
            <div class="col-md-9">
                <h3>Flowers</h3>
            </div>
            <div class="col-md-3">
                <!-- Controls -->
                <div class="controls pull-right hidden-xs">
                    <a class="left fa fa-chevron-left btn btn" href="#carousel-example"
                        data-slide="prev"></a><a class="right fa fa-chevron-right btn" href="#carousel-example"
                            data-slide="next"></a>
                </div>
            </div>
        </div>
        <div id="carousel-example1" class="carousel slide hidden-xs" data-ride="carousel">
            <!-- Wrapper for slides -->
            <div class="carousel-inner">
            <a  href="#carousel-example1"  data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" ></span>
     </a>
     <a class="rc" href="#carousel-example1" role="button" data-slide="next"  style="position: absolute;">
      <span class="glyphicon glyphicon-chevron-right" ></span>
      </a>
       <div ng-init="getBook()">
  <p><input type="text" ng-model="test"></p></div>
                <div class="item active">
                    <div class="row" >
                        <div class="col-sm-3" ng-repeat="prod in products | filter:test|limitTo:4 ">
                            <div class="col-item">
                                <div class="info">
                                    <div class="row">
                                        <div class="price col-md-6">
                                        <div >
                                            <h5 >{{prod.pname}}</h5>
                                            <h5 class="price-text-color">&#x20B9; {{prod.unitprice}}</h5>
                                        </div>
                                        </div>
                                        <div class="rating hidden-sm col-md-6">
                                            <i class="price-text-color fa fa-star"></i>
                                            <i class="price-text-color fa fa-star"></i>
                                        </div>
                                    </div>
                                </div>

                                <div class="photo">
                                    <img src="resources\img\{{prod.image}}.jpg" class="img-responsive" alt="a" />
                                </div>
                                <div class="info">
                                    <div class="separator clear-left">
                                        <p class="btn-add">
                                            <i class="fa fa-shopping-cart"></i><a href="#" class="hidden-sm">Add to cart</a>
                                        </p>
                                        <p class="btn-details">
                                            <i class="fa fa-list"></i><a href="#" class="hidden-sm">More details</a>
                                        </p>
                                    </div>
                                    <div class="clearfix">
                                     </div>
                                </div>
                            </div>
                        </div>
</div>
</div>


<div class="item">
                    <div class="row">
                        <div class="col-sm-3" ng-repeat="prod in products  | filter:test |startFrom:4">
                            <div class="col-item">
                                <div class="info">
                                    <div class="row">
                                        <div class="price col-md-6">
                                            <h5>{{prod.pname}}</h5>
                                            <h5 class="price-text-color">&#x20B9; {{prod.unitprice}}</h5>
                                        </div>
                                        <div class="rating hidden-sm col-md-6">
                                            <i class="price-text-color fa fa-star"></i>
                                            <i class="price-text-color fa fa-star"></i>
                                            <i class="price-text-color fa fa-star"></i>
                                        </div>
                                    </div>
                                </div>

                                <div class="photo">
                                    <img src="resources\img\{{prod.image}}.jpg" class="img-responsive" alt="a" />
                                </div>
                                <div class="info">
                                    <div class="separator clear-left">
                                        <p class="btn-add">
                                            <i class="fa fa-shopping-cart"></i><a href="#" class="hidden-sm">Add to cart</a>
                                        </p>
                                        <p class="btn-details">
                                            <i class="fa fa-list"></i><a href="#" class="hidden-sm">More details</a>
                                        </p>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </div>
                        </div>


</div>
</div>
</div>
</div>
</div>
</div>








</div>
</div>



  

</div>

</body>
</html>
