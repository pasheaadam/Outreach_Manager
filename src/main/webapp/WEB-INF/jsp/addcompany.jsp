<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>First-Story</title>
	<!-- Meta names -->
	<meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta name="viewport" content="initial-scale=1">
    <link rel="shortcut icon" href="favicon.ico" >
    
    <!-- CSS STYLE START -->      
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900" rel="stylesheet">  
    <link rel="stylesheet" href="/assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="/assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="/assets/css/animate.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> <!-- Lamar's -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
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
<title>Company Registration</title>
<!-- Sign-in: Login Page Link and Contact Page Link -->

<body>

<div class="container" id="padding-top">
	<div class="col-md-12">
		<div class="col-md-1">				
			<img src="/img/logo_sm.png">					
		</div>
			<div class="col-md-6">			
			</div>
			<div class="col-md-5">								
				<div class="navbar">
					<div class="collapse navbar-collapse">
						<ul class="nav navbar-nav">
							<li><a href="">Hi <c:out value="${loggedInUser.firstName}" /><span class="caret"></span></a></li>
							<li><a href="/">Messages</a></li>
							<li><a href="#initiatives">Need Help?</a></li>
							<li><a href="/">LogOut</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
			
<!-- End top Navigation -->
 
<div class="container-fluid header-top" id="myNavbar">	
	<div class="container">
		<div class="row">
			<div class="col-md-3">
			<h3><a class="icon-bar" href="home">Member Account</a></h3>
            </div>           
			<div class="col-md-9" id="myNavbar">
				<div class="icon-bar">
					<a href="home"><i class="fa fa-home fa-3x" aria-hidden="true"></i></a>
  					<a href="resources"><i class="fa fa-money fa-3x" aria-hidden="true"></i></a>
  					<a href="eboard"><i class="fa fa-users fa-3x" aria-hidden="true"></i></a>
  					<a href="impact"><i class="fa fa-briefcase fa-3x" aria-hidden="true"></i></a>  					
  				</div>
  				<div class="icon-bar">
					<a>Account Home</a>
  					<a>Charitable Portfolio</a>
  					<a>eBoard</a>
  					<a>Impact</a>  					
  				</div>
  			</div>		
		</div>
	</div>	
</div>	

<!-- Beginning of Sidebar Nav -->

<div class="container-fluid sections blog-sidebar-posts">
	<div class="container">
		<div class="row">
			<div class=col-md-3>	
				<div id="sidebar" class="well sidebar-nav">
                <h5><i class="glyphicon glyphicon-user"></i>
                    <small><b><c:out value="${loggedInUser.firstName}" /></b></small>
                </h5>
                <ul class="nav nav-pills nav-stacked">
                    <li class="active"><a href="home">Account Home</a></li>
                    <li><a href="addcompany">Company and Profile</a></li>
                    <li><a href="#">Members</a></li>
                    <li><a href="#">Teams</a></li>
                    <li><a href="#">Tasks</a></li>
                </ul>
                </div>
            </div>                
	
 <!-- Content Here -->
 
  			<div class="col-md-8">
  				<div id="div-header">
	      			<h2 class="form-signin-heading">Enter Company Information:</h2>
	      		</div>	
					<h4>Company Name: ${loggedInUser.companyName}</h4>
					<form:form class="form sign-in" method="POST" modelAttribute="membercompany" action="companysubmit">	
						<label for="companyName"> Add Company Name:</label>
						<form:input path="companyName" type="text" class="form-control" placeholder="${loggedInUser.companyName}" required="true"></form:input>
						<label for="companyEmail">Company Email:</label>
						<form:input path="companyEmail" type="text" class="form-control" placeholder="Company Email" required="true"></form:input>
						<label for="adddress">Address:</label>
						<form:input path="address" type="text" class="form-control" placeholder="Address" required="true"></form:input>
						<label for="city">City:</label>
						<form:input path="city" type="text" class="form-control" placeholder="City" required="true"></form:input>
						<label for="state">State:</label>
						<form:input path="state" type="text" class="form-control" placeholder="State" required="true"></form:input>
						<label for="zip">Zip Code:</label>
						<form:input path="zip" type="text" class="form-control" placeholder="Zip Code" required="true"></form:input>
						<label for="phone">Phone:</label>
						<form:input path="phone" type="text" class="form-control" placeholder="Phone" required="true"></form:input>
  						
  						<label for="locationEmployees">Location(s)</label>						
						<form:select path="locationEmployees">
   							<form:option value="local"> Local Community Location(s) </form:option>
   							<form:option value="state"> Multiple Locations throughout State </form:option>
   							<form:option value="national"> Multiple National locations </form:option>
   							<form:option value="national"> International locations </form:option>
  						</form:select>
  						<label for="companySize">Company Size</label>
  						<form:select path="companySize">
  							<form:option value="state"> Small - Employees (5-99) </form:option>
   							<form:option value="national"> Medium - Employees (100 - 999) </form:option>
   							<form:option value="national"> Large - Employees (More than 1000) </form:option>
  						</form:select>	
 					   <label for="contributionBudget">Estimated Annual Contribution Budget:</label>
 					   <form:input path="contributionBudget" type="text" class="form-control" placeholder="Annual Budget ($)" required="true"></form:input> 
 	 				   <br>
 	 				   <button class="btn btn-lg btn-blue btn-block" type="submit">Register Company</button>
 	 				   </form:form>	 
        	</div>
		</div>
	</div>
</div>		
</body>
</html>