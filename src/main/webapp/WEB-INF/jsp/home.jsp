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
    <link rel="stylesheet" href="/css/font-awesome.min.css">
    <link rel="stylesheet" href="/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/animate.min.css">
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

<title>Account Home</title>
</head>
<!-- Sign-in: Login Page Link and Contact Page Link -->
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
  					<a href="outreach"><i class="fa fa-briefcase fa-3x" aria-hidden="true"></i></a> 
  					<a href="resources"><i class="fa fa-money fa-3x" aria-hidden="true"></i></a>
  					<a href="eboard"><i class="fa fa-users fa-3x" aria-hidden="true"></i></a>			 					
  				</div>
  				<div class="icon-bar">
					<a>Member Account Home</a>
  					<a>Manage Impact</a> 
  					<a>Charitable Portfolio</a>
  					<a>Community eLink</a> 					 					
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
                <h5><i class="glyphicon glyphicon-user"></i>
                    <small><b><c:out value="${loggedInUser.firstName}" /></b></small>
                </h5>
                <ul class="nav nav-pills nav-stacked">
                    <li class="active"><a href="home">Account Home</a></li>
                    <li><a href="editcompany">Add/Edit Company</a></li>
                    <li><a href="corpmembers">Add/Edit Contacts</a></li>
                    
                </ul>
                <h5><i class="glyphicon glyphicon-briefcase"></i>
                    <small><b><c:out value="${loggedInUser.companyId.companyName}" /></b></small></h5>
                <ul class="nav nav-pills nav-stacked">
                    <li class="active"><a href="outreach">MANAGE IMPACT</a></li>
                    <li><a href="outreach">Manage Outreach</a></li>
                    <li><a href="outreach">Manage Roster</a></li>
                    <li><a href="outreach">Manage Teams</a></li>
                    
                </ul>
                <ul class="nav nav-pills nav-stacked">
                    <li class="active"><a href="#">CHARITABLE PORTFOLIO</a></li>
                    <li><a href="#">Donations and Gifts</a></li>
                    <li><a href="#">Voluntarism and Services</a></li>
                    <li><a href="#">Foundations and Philanthropy</a></li>
                </ul>
                <ul class="nav nav-pills nav-stacked">
                    <li class="active"><a href="Community eLink">Community eLink</a></li>
                    <li><a href="socialnetwork">Social Network</a></li>
                    <li><a href="#">Bulletin Board</a></li>
                    <li><a href="#">Event Calendar</a></li>
                    <li><a href="#">Fundraising and Campaigns</a></li>
                </ul>
            </div>
        </div>
        
        <div class="col-md-8">			
			<div id="sidebar" class="well sidebar-nav">
				<div id="div-header">
					<h4>Account Home</h4>
				</div>					
					<div class="row">
						<div class="col-md-10">
							<div class="container">
							<h3><c:out value="${loggedInUser.companyId.companyName}" /></h3>
							</div>
							<div class="tab">
								<button class="tablinks" onclick="openCity(event, 'London')">Company</button>
								<button class="tablinks" onclick="openCity(event, 'Paris')">Main Office</button>
								<button class="tablinks" onclick="openCity(event, 'Tokyo')">Executive Contact</button>
							</div>
	
							<div id="London" class="tabcontent">
									<h3>Company Headquarters</h3>
									<table class="table table-striped">
										<thead>
											<tr>
												<th>Street Address</th>
												<th>City</th>
												<th>State</th>
												<th>Zip</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td><c:out value="${loggedInUser.companyId.address}"/></td>
												<td><c:out value="${loggedInUser.companyId.city}" />, </td>
												<td><c:out value="${loggedInUser.companyId.state}" /> </td>
												<td><c:out value="${loggedInUser.companyId.zip}" /></td> 
											</tr>
										</tbody>
										
										<thead>
											<tr>
											<th></th>
											</tr>
											<tr>
												<th>Company Size</th>
												<th>Industry</th>
												<th>Outreach Community </th>
												<th></th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td><c:out value="${loggedInUser.companyId.companySize}" />
								      			<td><c:out value="${loggedInUser.companyId.industry}"/></td>
								      			<td><c:out value="${loggedInUser.companyId.locationEmployees}" /></td>  
								      			
											</tr>
										</tbody>																				
									</table>
								</div>
							<div id="Paris" class="tabcontent">
								<h3><c:out value="${loggedInUser.companyId.city}" />, <c:out value="${loggedInUser.companyId.state}" /></h3>
								<table class="table table-striped">
										<thead>
											<tr>
												<th>Office Phone</th>
												<th>Office Email</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td><c:out value="${loggedInUser.companyId.phone}" /></td>
												<td><c:out value="${loggedInUser.companyId.companyEmail}" /></td>
											</tr>
										</tbody>
									</table>
							</div>
							<div id="Tokyo" class="tabcontent">
								<table class="table table-striped">
										<thead>
											<tr>
												<th>Primary Contact</th>
												<th>Executive Email</th>
												<th>Executive Phone</th>
												<th>Department</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td><c:out value="${loggedInUser.lastName}" />, <c:out value="${loggedInUser.firstName}" /></td>
												<td><c:out value="${loggedInUser.email}"/></td>
												<td>Need a Phone#</td>								
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					
				<div id="sidebar" class="well sidebar-nav">		
					<div class="row">
						<div class="col-md-12">
							<div class="divcenter">
								<div id="div-header">
									<a name="home"></a>
									<h4>Impact Manager</h4>
								</div>	
								<ul class="nav nav-pills">
									<li class="active"><a href="#">Home</a></li>
									<li><a href="#tasks">Tasks</a></li>
									<li><a href="#roster">Roster</a></li>
									<li><a href="#teams">Teams</a></li>
								</ul>
								<hr>
							<table class="table table-striped">
								<thead class="dark-grey-bg">
									<tr>
										<td>Outreach Teams</td>
										<td>Roster Members</td>	
										<td>Outreach Task</td>
										<td>Donor Type</td>
										<td>Status</td>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>HeartWalk</td>
										<td>5</td>
										<td>Fight Heart Disease</td>
										<td>Donate & Volunteer</td>
										<td>Active</td>								
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>				
			<div id="sidebar" class="well sidebar-nav">		
					<div class="row">
						<div class="col-md-12">
							<div class="divcenter">				
							<a name="tasks"></a>
							<h4 id="blue">Outreach Tasks</h4>							
							<table class="table table-striped">
								<thead>
									<tr>
										<th>Category:</th>
										<th>Donor</th>
									</tr>
								</thead>
								<thead  class="dark-grey-bg">	
									<tr>	
										<td>Task Name</td>
										<td>Task Description</td>
										<td>Charitable Fundraiser</td>	
										<td>Timeline / EventDate</td>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td></td>
										<td>Some text</td>
										<td>American Medical Association</td>
										<td>Some Date</td> 
									</tr>
								</tbody>
								<thead>	
									<tr>
										<th>Task Roster</th>
									</tr>
								</thead>
								<tbody>
									<tr>	
										<td>John Perkins</td>
										<td>john@somecompany.com</td>
										<td>Phone Number</td>
										<td>Department</td>
									</tr>
									<tr>	
										<td>Tim Smith</td>
										<td>tim@somecompany.com</td>
										<td>Phone Number</td>
										<td>Department</td>
									</tr>
								</tbody>
							</table>
							</div>
						</div>
					</div>
				</div>
				<div id="sidebar" class="well sidebar-nav">		
					<div class="row">
						<div class="col-md-12">
							<div class="divcenter">				
							<h4 id="blue">Member Roster</h4>
							<a name="roster"></a>
							<table class="table table-striped">
								<thead class="dark-grey-bg">
									<tr>
										<td>Member</td>
										<td>Email</td>
										<td>Phone</td>
										<td>Department</td>
										<td>Outreach Team</td>
										<td>Bench/Active</td>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>John Q</td>
										<td>some text</td>
										<td>Need a Phone#</td>
										<td>Accounting</td>
										<td>Food Drive</td>
										<td>Active</td>								
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
				<div id="sidebar" class="well sidebar-nav">		
					<div class="row">
						<div class="col-md-12">
							<div class="divcenter">	
							<h4 id="blue">Outreach Teams</h4>
							<a name="teams"></a>
							<table class="table table-striped">
								<thead>
									<tr>
										<th>Task:</th>
										<th>Food Drive</th>
									</tr>
								</thead>
								<thead  class="dark-grey-bg">	
									<tr>	
										<td>Task Type</td>
										<td>Charitable Fundraiser</td>
										<td>Timeline</td>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>Donation</td>
										<td>United Way</td>
										<td>Some Date</td> 
									</tr>
								</tbody>
								<thead>	
									<tr>
										<th>Task Roster</th>
									</tr>
								</thead>
								<tbody>
									<tr>	
										<td>John Perkins</td>
										<td>john@somecompany.com</td>
										<td>Phone Number</td>
										<td>Department</td>
									</tr>
								</tbody>
							</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>						
	</div>
</div>														

				
			<!-- Stewardship Grid view left column start -->
			
		
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
</div>
<!-- Footer navigation section end -->

<!-- JavaScripts -->   
<script src="/js/jquery-1.11.1.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/owl.carousel.js"></script>

<!-- Portfolio Grid Scripts -->
<script type="text/javascript" src="/js/portfolio.min.js"></script>	

<!-- Custom Scripts -->
<script src="/js/custom.js"></script>	

<script>
function openCity(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}
</script>

</body>
</html>

