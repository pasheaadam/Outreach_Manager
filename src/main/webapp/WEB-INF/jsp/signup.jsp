<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>First-Story</title>
	<!-- Meta names -->
	<meta name="keywords" content="" />
    <meta name="description" content="" />
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="initial-scale=1">
    <link rel="shortcut icon" href="favicon.ico" >
    
    <!-- CSS STYLE START -->      
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900" rel="stylesheet">  
    <link rel="stylesheet" href="/css/font-awesome.min.css">
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/animate.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> <!-- Lamar's -->
	
	<!-- Owl Stylesheets -->
    <link rel="stylesheet" href="/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/css/owl.theme.default.min.css">
	
	<!-- Page Loader Stylesheet -->
    <link rel="stylesheet" href="/css/loader.css">
	
	<!-- Main stylesheet -->
    <link rel="stylesheet" href="/css/style.css">
    <link rel="stylesheet" href="/css/portfolio.css">
    <link rel="stylesheet" href="/css/responsive.css">
	<!-- CSS STYLE END -->
	
</head>

<body>
<div class="container-fluid header-top">
	<div class="container">
		<div class="row">
			<div class="col-md-6 col-sm-6 col-xs-8 call-us">
				<!-- top head left Start -->
                <p>
                    <span><i class="fa fa-user"><a href="contact"></i>Contact Us</a></span>
                </p>
                <!-- top head left End -->
            </div>
			<div class="col-md-6 col-sm-6 col-xs-4">
				<!-- top head Sign in button Start -->
                <p class="signin-col">
                    <span><a href="/"><i class="fa fa-home" aria-hidden="true"></i> Home</a></span>
                </p>
                <!-- top head Sign in button End -->
            </div>
		</div>
	</div>
</div>		
<!-- Begin
<!-- Beginning of Page -->
<header class="container-fluid site-haeader">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				
				<!-- Logo Start -->
				<div class="site-logo">
					<a href="/"><img src="/img/logo.png" alt="" title="" /></a>
				</div>
				<!-- Logo End -->

				<!-- Main Navigation Start -->
				<div class="site-navigation">
					
					<!-- Start donate button Start -->
					<div class="head-col">
						<a href="signup" class="btn btn-lg btn-primary btn-gradient-green btn-rounded">
							<i class="fa fa-heart" aria-hidden="true"></i> Register Now
						</a>
					</div>
					<!-- Start donate button End -->
					
					<!-- Menu Start -->
					<div class="navbar">
						<div class="navbar-header">
						  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
						    <span class="icon-bar"></span>
						    <span class="icon-bar"></span>
						    <span class="icon-bar"></span>
						  </button>
						</div>
						<div class="collapse navbar-collapse">
						  	<ul class="nav navbar-nav">
						      <li class="dropdown">
						        <a class="dropdown-toggle" href="aboutus.html">About us
						        <span class="caret"></span></a>
						        <ul class="dropdown-menu">
						          <li><a href="aboutus">Our Services</a></li>
						          <li><a href="storyboard">View Current Campaigns</a></li>
						          <li><a href="">Our Charitable Partners</a></li>
						          <li><a href="">Current Corporate Members</a></li>
						        </ul>
						      </li>
						      <li class="dropdown">
						        <a class="dropdown-toggle" href="#initiatives">Charitable Initiatives
						        <span class="caret"></span></a>
						        <ul class="dropdown-menu">
						          <li><a href="charitable-hq.html">Charitable Initiatives</a></li>
						          <li><a href="">Charitable Categories</a></li>
						          <li><a href="">Make a Gift</a></li>
						          <li><a href="">Volunteer</a></li>
						          <li><a href="">Philanthropy and Giving</a></li>
						        </ul>
						      <li class="dropdown">
						        <a class="dropdown-toggle" href="#bulletin">Community Bulletin Board
						        <span class="caret"></span></a>
						        <ul class="dropdown-menu">
						          <li><a href="">Community Calendar</a></li>
						          <li><a href="">Fundraising Campaigns</a></li>
						          <li><a href="">Charitable Events</a></li>
						          <li><a href="">Gift and Volunteer Offerings</a></li>
						          <li><a href="">Community Storyboard</a></li>
						        </ul>
						      </li>
						    </ul>
						</div>
					</div>
					<!-- Menu End -->
				</div>
				<!-- Main Navigation End -->

			</div>	
		</div>
	</div>
</header>
<!-- Site header End -->
		
<!-- Registration Forms  -->
<div class="container">
	<div class="row">
			<div class="col-md-10">
				<h3>${message}</h3>
				<h2 class="form-signin-heading">Personal Contact Information:</h2>
					<form:form class="form-sign-in" method="POST" modelAttribute="user" action="signup">	
					<label for="firstName">Name:</label>
					<form:input path="firstName" style="display: block;" type="text" class="form-control" placeholder="First Name" required="true"></form:input>
					<form:input path="lastName" style="display: block;" type="text" class="form-control" placeholder="Last Name" required="true"></form:input>
					<label for="email">Choose Email and Password:</label>
					<form:input path="email" style="display: block;" type="email" class="form-control" placeholder="Email address" required="true"></form:input>
					<form:errors path="email"/>
					<form:input path="password" style="display: block;" type="password" class="form-control" placeholder="Password" required="true"></form:input>					
<!-- Company Information -->
					<h2 class="form-signin-heading"> Add Company Information</h2>					
					<label for="companyName"> Add Company Name:</label>
						<form:input path="companyName" style="display: block;" type="text" class="form-control" placeholder="Company Name" required="true"></form:input>
						<label for="companyEmail">Company Email:</label>
						<form:input path="companyEmail" style="display: block;" type="email" class="form-control" placeholder="Company Email" required="true"></form:input>
						<form:errors path="companyEmail"/>
						<label for="adddress">Address:</label>
						<form:input path="address" style="display: block;" type="text" class="form-control" placeholder="Address" required="true"></form:input>
						<label for="city">City:</label>
						<form:input path="city" style="display: block;" type="text" class="form-control" placeholder="City" required="true"></form:input>
						<label for="state">State:</label>
						<form:input path="state" style="display: block;" type="text" class="form-control" placeholder="State" required="true"></form:input>
						<label for="zip">Zip Code:</label>
						<form:input path="zip" style="display: block;" type="text" class="form-control" placeholder="Zip Code" required="true"></form:input>
						<label for="phone">Phone:</label>
						<form:input path="phone" style="display: block;" type="text" class="form-control" placeholder="Phone" required="true"></form:input>					
  						<label for="locationEmployees">Location(s)</label>						
						<form:select path="locationEmployees" style="display: block;">
   							<form:option value="local"> Local Community Location(s) </form:option>
   							<form:option value="state"> Multiple Locations throughout State </form:option>
   							<form:option value="national"> Multiple National locations </form:option>
   							<form:option value="national"> International locations </form:option>
  						</form:select>
  						<label for="companySize">Company Size</label>
  						<form:select path="companySize" style="display: block;">
  							<form:option value="state"> Small - Employees (5-99) </form:option>
   							<form:option value="national"> Medium - Employees (100 - 999) </form:option>
   							<form:option value="national"> Large - Employees (More than 1000) </form:option>
  						</form:select>	
 					   <label for="contributionBudget">Estimated Annual Contribution Budget:</label>
 					   <form:input path="contributionBudget" style="display: block;" type="number" class="form-control" placeholder="Annual Budget ($)" required="true"></form:input> 
 	 				   <br>
 	 				   <button class="btn btn-lg btn-blue btn-block" type="submit">Register</button> 	 				   
 	 				   </form:form>
 	 				   <br>	
	      			
						
			
			
						
		</div>	
	</div>
</div>	
	<!--- /.container -->
	
	<!-- Footer copyright section start -->
	<footer class="container-fluid sections copyright-section">
		<div class="container">
			<div class="row">
				<!-- copyright text start -->
				<div class="col-md-6 col-sm-6 col-xs-12 copy-left">
					Copyright &copy; 2017 -  EynoFund.     <a href="#">Terms</a>     <a href="#">Privacy</a>     <a href="#">Legal</a>
				</div>
				<!-- copyright text end -->
				<div class="col-md-6 col-sm-6 col-xs-12">
					<!-- footer social start -->
					<div class="social-col footer-social">
						<ul class="list-unstyled list-inline social">
							<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
							<li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
							<li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
							<li><a href="#"><i class="fa fa-rss" aria-hidden="true"></i></a></li>
						</ul>
					</div>
					<!-- footer social end -->
				</div>
			</div>
		</div>
	</footer>
	<!-- Footer copyright section end -->

<!-- Footer navigation section end -->

<!-- Login Modal form end -->	

<!-- JavaScripts -->   
<script src="/js/jquery-1.11.1.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/owl.carousel.js"></script>

<!-- Portfolio Grid Scripts -->
<script type="text/javascript" src="/js/portfolio.min.js"></script>	

<!-- Custom Scripts -->
<script src="/js/custom.js"></script>	
</body>
</html>