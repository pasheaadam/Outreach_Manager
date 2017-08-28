<%@page import="java.util.Enumeration"%>
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
			<h3><a class="icon-bar" href="outreach">Member Account: <i>Impact Manager</i></a></h3>
            </div>           
			<div class="col-md-9" id="myNavbar">
				<div class="icon-bar">
					<a href="home"><i class="fa fa-home fa-3x" aria-hidden="true"></i></a>
  					<a href="impact"><i class="fa fa-briefcase fa-3x" aria-hidden="true"></i></a>  
  					<a href="resources"><i class="fa fa-money fa-3x" aria-hidden="true"></i></a>
  					<a href="eboard"><i class="fa fa-users fa-3x" aria-hidden="true"></i></a>
  										
  				</div>
  				<div class="icon-bar">
					<a>Account Home</a>
  					<a>Impact</a> 
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
                    <li class="active"><a href="#home">MANAGE IMPACT</a></li>
                    <li><a href="teams">Manage Outreach</a></li>
                    <li><a href="tasks">Manage Roster</a></li>
                    <li><a href="#">Manage Teams</a></li>
                    
                </ul>
				</div>
	        </div>
        <div class="col-md-8">			
			<div id="sidebar" class="well sidebar-nav">
				<div id="div-header">
					<h4>Impact Manager</h4>
				</div>					
					<div class="row">
						<div class="col-md-13">
							<div class="container">
							<h3><c:out value="${loggedInUser.companyId.companyName}" /></h3></div>
							<div class="tab">
								<button class="tablinks" onclick="openCity(event, 'London')">Tasks</button>
								<button class="tablinks" onclick="openCity(event, 'Paris')">Roster</button>
								<button class="tablinks" onclick="openCity(event, 'Tokyo')">Teams</button>
							</div>
	
							<div id="London" class="tabcontent">
									<h3>Active Outreach Programs</h3>
									<table class="table table-striped">
								<thead class="dark-grey-bg">
									<tr>
										<td>Program</td>
										<td>Faundraising Organization</td>	
										<td>Donation Type</td>
										<td>Donation Category</td>
										<td>Task Description</td>										
									</tr>
								</thead>
								<tbody>
								<c:forEach var="task" items="${tasks}" >
									<tr>
										<td>${task.donorTask}</td>
										<td>${task.fundraiser }</td>
										<td>${task.donorType }</td>
										<td>${task.donorCategory}</td>
										<td>${task.taskDescription }</td>								
									</tr>
									</c:forEach>
								</tbody>
							</table>						
						</div>
							<div id="Paris" class="tabcontent">
								<h3>Roster</h3>
								<table class="table table-striped">
										<thead class="dark-grey-bg">
									<tr>
										<td>First Name</td>
										<td>Last Name</td>	
										<td>Email</td>
										<td>Phone</td>
										<td>Donor Task</td>		
										<td>Donor Status</td>
										<td>Donor Type</td>
										<td>Donor Available</td>										
									</tr>
										<tbody>
										<c:forEach var="member" items="${members}" >
											<tr>
												<td>${member.firstName}</td>
												<td>${member.lastName}</td>
												<td>${member.memberEmail }</td>
												<td>${member.memberPhone}</td>
												<td>${member.donorTask}</td>
												<td>${member.donorStatus}</td>
												<td>${member.donor_Type}</td>
												<td>${member.donor_available}</td>
											</tr>
											<!-- <tr><td colspan="2" align="center"><input type="submit" class="btn btn-primary"></td></tr> -->
											</c:forEach>
										</tbody>
										
										
										</form>
									</table>
							</div>
							<div id="Tokyo" class="tabcontent">
								<h3>Outreach Teams</h3>
								<table class="table table-striped">
										<thead class="dark-grey-bg">
											<tr>
												<th>Company Name</th>
												<th>Donor Task</th>
												<th>Donor Category</th>
												<th>Fundraiser</th>
											</tr>
										</thead>
										<tbody>
										<c:forEach var="team" items="${teams}" >
											<tr>
												<td>${team.companyName}</td>
											
												<td>${team.donorTask}</td>
												<td>${team.donorType}</td>
												<td>${team.fundraiser}</td>										
											</tr>
											</c:forEach>
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
                                       <li class="active"><a data-toggle="pill" href="#home">Add Task</a></li>
                                        <li><a data-toggle="pill" href="#tasks">Add New Member</a></li>
                                         <li><a data-toggle="pill" href="#roster">Add/Edit Teams</a></li>								
                                    </ul>
                            <div class="tab-content">
                                  <div id="home" class="tab-pane fade in active">    
                                    <h3>Add Outreach Initiative</h3>
                                    <form:form class="form sign-in" method="POST" modelAttribute="activetask" action="tasksubmit">	
                                        <label for="donorTasks">Outreach Action</label>						
                                        <form:select path="donorTask">
    <!-- Make this a user   -->			<form:option value="Assertive Community Treatments"> Assertive Community Treatment </form:option>
    <!--task table lookup-->			<form:option value="Fall Summer Internships"> Fall Summer Internship </form:option>
    <!-- Link company table --> 		<form:option value="Walk for the Cure"> Walk for the Cure </form:option>
    <!-- by task_id -->   				<form:option value="Youth Connection Programs"> Youth Connection Programs </form:option>	
                                        <br></form:select><br><br>  
                                        <label for="fundraiser">Fundraiser:</label>
                                        <form:input path="fundraiser" style="display: block;" type="text" class="form-control" placeholder="Fundraiser Name" required="true"></form:input>
                                        <label for="donortype">Donor Type:</label>
                                        <form:input path="donorType" style="display: block;" type="text" class="form-control" placeholder="Donor Type" required="true"></form:input>
                                        <label for="donorCategory">Donor Catagory</label>
                                        <form:input path="donorCategory" style="display: block;" type="text" class="form-control" placeholder="Donor Category" required="true"></form:input>
                                        <label for="donorCategory">Task Description</label>
                                        <form:input path="taskDescription" style="display: block;" type="text" class="form-control" placeholder="Task Description" required="true"></form:input>
                                        <label for="companyPartner">Company Partner</label>
                                        <form:input path="companyPartner" style="display: block;" type="text" class="form-control" placeholder="Company Partner" required="true"></form:input>	<button class="btn btn-primary" type="submit">Register</button> 										
                                    </form:form>
                                </div>  
                                <div id="tasks" class="tab-pane fade">
                                        <h3>Add New Member</h3>
                                    <form:form class="form sign-in" method="POST" modelAttribute="addMember" action="addmember">	
                                     
                                        <label for="FirstName">First Name:</label>
                                        <form:input path="firstName" style="display: block;" type="text" class="form-control" placeholder="First Name" required="true"></form:input>
                                        <label for="lastName">Last Name:</label>
                                        <form:input path="lastName" style="display: block;" type="text" class="form-control" placeholder="Last Name" required="true"></form:input>
                                      	<label for="memberPhone">Member Phone</label>
                                        <form:input path="memberPhone" style="display: block;" type="text" class="form-control" placeholder="Member Phone" required="true"></form:input>
                                        
                                      	<label for="memberEmail">Member Email</label>
                                        <form:input path="memberEmail" style="display: block;" type="text" class="form-control" placeholder="Member Email" required="true"></form:input>
                                        <label for=donorTask>Donor Task</label>
                                        <form:input path="donorTask" style="display: block;" type="text" class="form-control" placeholder="Donor Task" required="true"></form:input>	 										
                                    	 <label for="donorStatus">Donor Status</label>
                                        <form:input path="donorStatus" style="display: block;" type="text" class="form-control" placeholder="Donor Status" required="true"></form:input> 										
                                    	 <label for="donor_Type">Donor Type</label>
                                        <form:input path="donor_Type" style="display: block;" type="text" class="form-control" placeholder="Donor Type" required="true"></form:input>	 										
                                    	 <label for="donor_available">Donor Available</label>
                                        <form:input path="donor_available" style="display: block;" type="text" class="form-control" placeholder="Donor Available" required="true"></form:input>	
                                     	<br>
                                     	<button class="btn btn-primary" type="submit">Register</button>  
                                    </form:form>
        </div>
                               <div id="roster" class="tab-pane fade">                                                
                                         <h3>Add/Edit Teams</h3>
                                         <h3>${addmsg}</h3>
                                         <table class="table table-striped">
										<thead class="dark-grey-bg">
											<tr>
												<th>Select</th>
												<th>Member FirstName</th>
												<th>Member LastName</th>
												<th>Donor Type</th>
												<th>Donor Task</th>
												
											</tr>
										</thead>
										<tbody>
										<form action="addmembertoteam" id="form" method="post">
										<c:forEach var="member" items="${members}" >
										
											<tr>
											<td><input type="checkbox" name="members" value="${member.memberId}" readonly/>
											<td>${member.firstName}</td> 
												<td>${member.lastName}</td>	
												<td>${member.donor_Type}</td>
												<td>${member.donorTask}</td>
												</tr>
												</c:forEach>
											<tr><td colspan="3">Select Task</td></tr>
											<tr>
											<td colspan="3">
											<select name="task">
											<c:forEach items="${tasks}" var="task">
											<option value="${task.taskId}">${task.donorTask}</option>
											</c:forEach>
											</select><td>
											
											<td><input class="btn btn-primary" type="submit" value="Add team"/></td></tr>
											</form>
										</tbody>
									</table>
                                     </div>
                                    </div>
							
						</div>
					</div>
				</div>
			</div>				
			<div id="sidebar" class="well sidebar-nav">		
					<div class="row">
						<div class="col-md-12">
							<div class="divcenter">				
							<a name="tasks"></a>
							<h4 id="blue">Outreach Roster</h4>
							<p><c:out value="${loggedInUser.companyId.companyName}" /></p>							
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
							<font color="red">${deleteMsg }</font>
							<a name="roster"></a>
							<table class="table table-striped">
								<thead class="dark-grey-bg">
									<tr>
										<td>Select</td>
										<td>Member</td>
										<td>Email</td>
										<td>Phone</td>
										<td>Department</td>
										<td>Outreach Team</td>
										
									</tr>
								</thead>
								<tbody>
								<form action="delete"  method="post">
									<c:forEach var="member" items="${members}" >
		
											<tr>
											<td><input type="checkbox" name="members" value="${member.memberId}" readonly="readonly" /></td> 
												<td>${member.firstName }</td>
												<td>${member.memberEmail}</td>	
												<td>${member.memberPhone}</td>
												<td>${member.person.companyId.department}</td>
												</tr>
												</c:forEach>
												<tr><td colspan="6"><input class="btn btn-primary" type="submit" value="Delete Members"/></td></tr>
												</form>
											
											
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
										<td>Select</td>	
										<td>Task Type</td>
										<td>Charitable Fundraiser</td>
										<td>Timeline</td>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="task" items="${tasks}" >
									<tr>
										<td><input type="checkbox" name="tasks" value="${task.taskId}"></td>
										<td>${task.donorType }</td>
										<td>${task.fundraiser }</td>
										<td>${task.taskDescription }</td>								
									</tr>
									</c:forEach>
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

function func(el) {
	var fo=document.getElementById("form");
	console.log(fo);
	fo.action=el.value;
	el.type="submit";
}
</script>

</body>
</html>

