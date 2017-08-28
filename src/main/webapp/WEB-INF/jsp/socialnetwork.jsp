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
<link rel="shortcut icon" href="favicon.ico">

<!-- CSS STYLE START -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900"
	rel="stylesheet">
<link rel="stylesheet" href="/css/font-awesome.min.css">
<link rel="stylesheet" href="/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/animate.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- Lamar's -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

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

<title>Account Home</title>
</head>
<!-- Sign-in: Login Page Link and Contact Page Link -->
<div class="container" id="padding-top">
	<div class="col-md-12">
		<div class="col-md-1">
			<img src="/img/logo_sm.png">
		</div>
		<div class="col-md-6"></div>
		<div class="col-md-5">
			<div class="navbar">
				<div class="collapse navbar-collapse">
					<ul class="nav navbar-nav">
						<li><a href="">Hi <c:out
									value="${loggedInUser.firstName}" /><span class="caret"></span></a></li>
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
				<h4>
					<a class="icon-bar" href="home"><i>eBoard</i> Social Network</a>
				</h4>
			</div>
			<div class="col-md-9" id="myNavbar">
				<div class="icon-bar">
					<a href="home"><i class="fa fa-home fa-3x" aria-hidden="true"></i></a>
					<a href="resources"><i class="fa fa-money fa-3x"
						aria-hidden="true"></i></a> <a href="eboard"><i
						class="fa fa-users fa-3x" aria-hidden="true"></i></a> <a href="impact"><i
						class="fa fa-briefcase fa-3x" aria-hidden="true"></i></a>
				</div>
				<div class="icon-bar">
					<a>Account Home</a> <a>Charitable Portfolio</a> <a>eBoard</a> <a>Impact</a>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- Beginning of Dashboard -->
<div class="container-fluid sections blog-sidebar-posts">
	<div class="container">
		<div class="row">
			<div class=col-md-3>
				<div id="sidebar" class="well sidebar-nav">
					<h5>
						<i class="glyphicon glyphicon-user"></i> <small><b><c:out
									value="${loggedInUser.firstName}" /></b></small>
					</h5>
					<ul class="nav nav-pills nav-stacked">
						<li class="active"><a href="#">eBOARD</a></li>
						<li><a href="socialnetwork">Social Network</a></li>
						<li><a href="#">Bulletin Board</a></li>
						<li><a href="#">Event Calendar</a></li>
						<li><a href="#">Fundraising and Campaigns</a></li>
					</ul>
				</div>
			</div>
			<div class="col-sm-2 well">
				<div class="well">
					<p>
						<c:out value="${loggedInUser.firstName}" />
						's Profile
					</p>
					<%-- <img src="${loggedInUser.profilePic}" class="img-circle"
				height="65" width="85" alt="Avatar">--%>
					<div class="image_container">
						<img src="${loggedInUser.profilePic}" alt="Avatar"
							class="img-circle" height="125" width="115">
						<div class="image_middle">
							<div class="image_text">Click here</div>
						</div>
					</div>
					<form method="POST" action="upload"  enctype="multipart/form-data">
					<input type="file" name="file" />
					<br> <input type="submit" value="Submit" />
					</form>

				</div>
				<div class="well">
					<p>
						<a href="#">Charitable Interest Groups</a>
					</p>
				</div>
			</div>
			<div class="col-md-6">
				<div class="panel panel-default text-left">
					<div class="panel-body">
						<form:form method="POST" modelAttribute="post" action="userPost"
							enctype="multipart/form-data">
							<form:input type="text" class="form-control" path="message"
								placeholder="Status: What's on your mind?"></form:input>
							<form:input type="hidden" class="form-control" path="email"
								value="${loggedInUser.email}"></form:input>
							<br>
							<span class="btn btn-default btn-file">
							<span class='uploadEvent'>Choose Image</span> 
								<form:input id="uploadImage" type="file" path="picture" /> </span>
							<button type="submit" class="btn btn-default btn-sm">
								<span class="glyphicon"></span> Post
							</button>
							<span class='image_select'> Image Selected </span>
						</form:form>
					</div>
				</div>
				<c:forEach var="post" items="${posts}">
					<div class="row">

						<div class="well">
							<div class='profileData'>
								<img src="${post.person.profilePic}" class="img-circle"
									height="55" width="55">
								<h4>
									<c:out value="${post.person.firstName}" />
								</h4>
								<h4>
									<c:out value="${post.person.lastName}" />
								</h4>
							</div>
							<div class='postData'>
								<p>
									<c:out value="${post.message}" />
								</p>

								<c:if test="${post.picture ne null}">
									<img src="${post.picture}" class="img-square"
										height="350px" width="550px">
								</c:if>
							</div>
						</div>
						<button type="button" class="btn btn-default btn-sm">
							<span class="glyphicon glyphicon-thumbs-up"></span> Like
						</button>

					</div>
				</c:forEach>
			</div>
		</div>
	</div>
</div>

<!-- Footer copyright section start -->
<footer class="container-fluid sections copyright-section">
<div class="container">
	<div class="row">
		<!-- copyright text start -->
		<div class="col-md-6 col-sm-6 col-xs-12 copy-left">
			Copyright &copy; 2017 - EynoFund. <a href="#">Terms</a> <a href="#">Privacy</a>
			<a href="#">Legal</a>
		</div>
		<!-- copyright text end -->
		<div class="col-md-6 col-sm-6 col-xs-12">
			<!-- footer social start -->
			<div class="social-col footer-social">
				<ul class="list-unstyled list-inline social">
					<li><a href="#"><i class="fa fa-facebook"
							aria-hidden="true"></i></a></li>
					<li><a href="#"><i class="fa fa-twitter"
							aria-hidden="true"></i></a></li>
					<li><a href="#"><i class="fa fa-instagram"
							aria-hidden="true"></i></a></li>
					<li><a href="#"><i class="fa fa-linkedin"
							aria-hidden="true"></i></a></li>
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