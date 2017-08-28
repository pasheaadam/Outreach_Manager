<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<!-- Page pre loader Start -->
<div id="loader-wrapper">
	<div id="loader"></div>
	<div class="loader-section section-left"></div>
    <div class="loader-section section-right"></div>
</div>
<!-- Page pre loader End -->

<!-- Sign-in: Login Page Link and Contact Page Link -->
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
                    <span><a href="login"><i class="fa fa-user-circle-o" aria-hidden="true"></i> Sign In</a></span>
                </p>
                <!-- top head Sign in button End -->
            </div>
		</div>
	</div>
</div>	
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
						        <a class="dropdown-toggle" href="aboutus">About us
						        <span class="caret"></span></a>
						        <ul class="dropdown-menu">
						          <li><a href="aboutus">Our Services</a></li>
						          <li><a href="charitablehq">View Current Campaigns</a></li>
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
<!-- Slider section start -->
<div class="slider-section">	
	<div id="slider-carousal">
	    <div id="carousel-example-generic" class="carousel slide carousel-fade">
	        <!-- Slider Indicators start -->
	        <ol class="carousel-indicators">
	            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
	            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
	            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
	        </ol>
	        <!-- Slider Indicators end -->

	        <!-- Wrapper for slides start -->
	        <div class="carousel-inner" role="listbox">
	            
	            <!-- Slide Item 1 start -->
	            <div class="item active slide1">
	            	<!-- Slide image -->
	            	<img src="/img/handsindex.jpg" />
	            	
	                <div class="row">
	                	<div class="container">
		                    <div class="col-md-12">
		                    	<!-- Slide caption start -->
		                    	<div class="caption">
			                        <h1 data-animation="animated fadeIn">What does Philanthropy mean to you?</h1>
			                        <p data-animation="animated fadeIn">For many small business owners, we may think of "philanthropy" as something beyond our reach. A noble, yet exclusive pursuit, accessible only to wealthy magnates and multinational corporations.</p>
			                        <p data-animation="animated fadeIn">We want to give. We want to help others...But where do we start?</p> 
			                        <p class="campain-btn" data-animation="animated fadeIn">
			                        	<a href="#" class="btn btn-lg btn-primary">Start Your Story <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
			                        </p>          
		                        </div>
		                        <!-- Slide caption end -->
		                    </div>
	                	</div>
	                </div>
	            </div>
	            <!-- Slide Item 1 end -->

	            <!-- Slide Item 2 start -->
	            <div class="item slide2">
	            	<!-- Slide image -->
	            	<img src="/img/nurse.jpg" />
	                <div class="row">
	                	<div class="container">
		                    <div class="col-md-12">
		                    	<!-- Slide caption start -->
		                    	<div class="caption">
		                    	<div class="transbox">
			                        <h1 data-animation="animated fadeIn">Welcome to <br>first-story.  
			                        </h1>
			                        <p data-animation="animated fadeIn">Charitable corporate giving should not be left only to companies with 
			                        <br>majestic high-rise views and
			                        state-of-the-art boardrooms.</p>
			                        <p data-animation="animated fadeIn">Explore our giving campaigns to see how companies of all sizes are finding creative ways to give back to the community.</p>
			                        <p class="campain-btn" data-animation="animated fadeIn">
			                        	<a href="#" class="btn btn-lg btn-primary">View our Campaigns <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>       
		                        </div>
		                        </div>
		                        <!-- Slide caption end -->
		                    </div>
	                	</div>
	                </div>
	            </div> 
	            
	            <!-- Slide Item 2 end -->
				<div class="item slide3">
	            	<!-- Slide image -->
	            	<img src="/img/boardroom.jpg" />
	                <div class="row">
	                	<div class="container">
		                    <div class="col-md-12">
		                    	<!-- Slide caption start -->
		                    	<div class="caption">
		                    	<div class="transbox">
			                        <h1 data-animation="animated fadeIn">We love a good story.  
			                        </h1>
			                        <p data-animation="animated fadeIn">By choosing to give, we learn new things about ourselves and the world around us.</p>
			                        <p class="campain-btn" data-animation="animated fadeIn">We offer a wide-range of creative, marketing, and public relations services, which tell the story of your company's positive impact in the community</p>
			                        <p class="campain-btn" data-animation="animated fadeIn">See the need. Be the change...Share your story.<p>
			                        	<a href="#" class="btn btn-lg btn-primary">View our Services <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>        
		                        </div>
		                        </div>
		                        <!-- Slide caption end -->
		                    </div>
	                	</div>
	                </div>
	            </div> 
	        </div>
	        <!-- Wrapper for slides start -->

	        <!-- Slider pagination start -->
	        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
	            <i class="fa fa-angle-left"></i><span class="sr-only">Previous</span>
	        </a>
	        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
	            <i class="fa fa-angle-right"></i><span class="sr-only">Next</span>
	        </a>
	        <!-- Slider pagination end -->
	        
	    </div>
	</div>
</div>
<!-- Slider section end -->

<!-- Category carousal start -->
<section class="container-fluid sections category-section" id="causes">
	<div class="container">
		<div class="row">
			<div class="col-md-12"><!-- Category carousal heading -->
				
					<h2 align="center"><font color="white">Choose a Charitable Interest</font></h2>
					<h3 class="cat-sec-title">We have many Charitable Partners that dedicate their passion, skills and efforts to ensuring a better tomorrow.<br><br>
					Click on the group that interests you to find out more about becoming involved in charitable initiatives that are making a positive change in your community.</h3>
				
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<!-- Category carousal container start -->
				<div class="owl-carousel owl-cat-carousel owl-theme">

					<!-- Category item 01 -->
		            <div class="item">
		            	<div class="cat-item">
		            		<a href="#">
				            	<figure>
				            		<img src="/img/category/icon01.png" alt="" title="" />
				            	</figure>
				               	<h4 class="cat-title">Healthcare and Disaster Services</h4><br>
			               	</a>
			            </div>   	
		            </div>
		            <!-- Category item 02 -->
		            <div class="item">
		            	<div class="cat-item">
		            		<a href="#">
				               	<figure>
				            		<img src="/img/category/community-icon.png" alt="" title="" />
				            	</figure>
				               	<h4 class="cat-title">Social Services</h4><br>
      						</a>   	
			            </div>   	
		            </div>
		            <!-- Category item 03 -->
		            <div class="item">
		            	<div class="cat-item">
		            		<a href="#">
				               	<figure>
				            		<img src="/img/category/icon02.png" alt="" title="" />
				            	</figure>
				               	<h4 class="cat-title">Development & Housing</h4><br>
				            </a>   	
			            </div>   	
		            </div>
		            <!-- Category item 04 -->
		               <div class="item">
		            	<div class="cat-item">
		            		<a href="#">
				               	<figure>
				            		<img src="/img/category/icon04.png" alt="" title="" />
				            	</figure>
				               	<h4 class="cat-title">Education & Research</h4><br>
				            </a>   	
			            </div>   	
		            </div>
		            <!-- Category item 05 -->
		         	<div class="item">
		            	<div class="cat-item">
		            		<a href="#">
				               	<figure>
				            		<img src="/img/category/icon05.png" alt="" title="" />
				            	</figure>
				            	<h4 class="cat-title">Law & Advocacy</h4><br>
				            </a>	
			            </div>	
		            </div>
		            <!-- Category item 06 -->
		                 <div class="item">
		            	<div class="cat-item">
		            		<a href="#">
				               	<figure>
				            		<img src="/img/category/icon06.png" alt="" title="" />
				            	</figure>
				               	<h4 class="cat-title">Culture & Recreation</h4>
				            </a>   	
			            </div>   	
		            </div>	
		            <!-- Category item 07 -->
		            <div class="item">
		            	<div class="cat-item">
		            		<a href="#">
				               	<figure>
				            		<img src="/img/category/icon07.png" alt="" title="" />
				            	</figure>
				               	<h4 class="cat-title">Environmental & Animal Protection</h4>
				            </a>   	
			            </div>   	
		            </div>
		            <!-- Category item 09 -->ß
		            <div class="item">
		            	<div class="cat-item">
		            		<a href="#">
				               	<figure>
				            		<img src="/img/category/icon08.png" alt="" title="" />
				            	</figure>
				               	<h4 class="cat-title">Philanthropy & Voluntarism</h4>
				            </a>   	
			            </div>   	
		            </div>
		        <!-- Category carousal container end -->
			</div>
		</div>
	</div>
</section>
<!-- Category carousal end -->

<section class="container-fluid sections volunteer-section" id="services">
		<div class="section-heading">
			<h1>Community Engagement and Impact</h1>	
			<div class="recent-blog-cnt">
		        <div class="col-md-6 col-sm-6 col-xs-12">
		        	<!-- blog item 01 -->
					 <h4>Stewardship Management Tools Make Giving Even More Rewarding</h4>
					<div class="recent-blog-item">
                        <div class="post-image">
                            <a href="#">
                            	<img src="/img/dashboard.jpg".jpg" alt="" title="" />
                            </a>
                        </div>
                        <div class="post-content">
                        	<div class="post-cnt-panel"><br>
	                            <p>Stewardship management tools help you manage your philanthropic engagement.<br> We'll help you maximize ROI for your company, and goodwill within your community.</p>
	                            <a href="#" class="btn btn-lg btn-primary">READ MORE <i class="fa fa-long-arrow-right"></i></a>
                            </div>
                        </div>
                    </div>
		        </div>
		        <div class="col-md-6 col-sm-6 col-xs-12">
		        	<!-- blog item 02 -->
					<div class="recent-blog-item">
                        <h4>First-Story <span style="font-style:italic">eBoards</span> Let You Tell the Story.</h4>
                        <div class="post-image">
                            <a href="#">
                            	<img src="/img/volcollage.jpg" alt="" title="Charitable Giving Storyboard" />
                            </a>
                        </div>
                        <div class="post-content">
                            <div class="post-cnt-panel"><br>
	                            <p>Good news travels fast. By contributing your own giving story to First-Story's <span style="font-style:italic">eBoard</span>, you can quickly spread the good news throughout your community.</p>
	                            <a href="#" class="btn btn-lg btn-primary">READ MORE <i class="fa fa-long-arrow-right"></i></a>
                            </div>
                        </div>
                    </div>
		        </div>
		    </div>
		</div>
		    <!-- Recent blog container end -->
</section>							
<!-- Recent Blog section end -->

<!-- Home featured causes section start -->
<section class="container-fluid sections causes-section" id="initiatives">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<!-- Home causes heading start -->
				<div class="section-heading">
					<div id="causes">
					<h1 class="below-line">Charitable Initiatives</h1>
					</div>
				</div>
				<!-- Home causes heading end -->
			</div>
		</div>
		<div class="row">
			<!-- Home causes listing container start -->
			<div class="causes-listing">
				
				<!-- Cause item 01 -->
				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="causes-list">
						<h2 class="cause-title">Perkins Child and Family Services</h2>
						<figure>
							<img class="img-responsive" src="/img/kidsschool.jpg" alt="" title="" />
						</fgure>
						<div class="cause-info"><!-- causes details -->
							<div class="raised-amount">
								<span class="amount">
									80%
								</span>			
							</div>
							<div class="fund-rase-info"><!-- causes fund information -->
							<h4>Youth Connection Program</h4>
								<div class="fr-amount-row fr-left">
									<span class="fr-label">Raised</span>
									<span class="fr-amount">$81,924</span>
								</div>
								<div class="fr-amount-row fr-right">
									<span class="fr-label">Goal</span>
									<span class="fr-amount">$100,924</span>
								</div>
							</div>
							<div class="fs-amount-bar"><!-- causes progress bar -->
								<div class="progress">
								  <div class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar"
								  aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:80%">
								    $81,924
								  </div>
								</div>
							</div>
							<!-- causes short description -->
							<p>Forward Youth provides violence prevention and character education programs in the areas of conflict resolution, violence prevention, cultural diversity, healthy relationships, decision making skills, self-esteem building and many more.</p>
							<div class="clearfix"></div>
							<!-- causes Donate button -->
							<a class="btn btn-lg btn-primary btn-gradient-green" href="#">MAKE A GIFT</a>
						</div>
					</div>
				</div>

				<!-- Cause item 02 -->
				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="causes-list">	
						<h2 class="cause-title">Saint Micheals Center</h2>
						<figure>
							<img class="img-responsive" src="/img/mentalhealth.jpg" alt="" title="" />
						</figure>
						<div class="cause-info"><!-- causes details -->
							<div class="raised-amount">
								<span class="amount">
									35%
								</span>			
							</div>
							<div class="fund-rase-info"><!-- causes fund information -->
								<h4>Assertive Community Treatment</h4>
								<div class="fr-amount-row fr-left">
									<span class="fr-label">Raised</span>
									<span class="fr-amount">$45,731</span>
								</div>
								<div class="fr-amount-row fr-right">
									<span class="fr-label">Goal</span>
									<span class="fr-amount">$123,924</span>
								</div>
							</div>
							<div class="fs-amount-bar"><!-- causes progress bar -->
								<div class="progress">
								  <div class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar"
								  aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:40%">
								    $45,731
								  </div>
								</div>
							</div>
							<!-- causes short description -->
							<p>ACT strives to lessen or eliminate the debilitating symptoms of mental illness each individual client experiences and to minimize or prevent recurrent acute episodes of the illness, to meet basic needs and enhance quality of life, to improve functioning in adult social and employment roles, to enhance an individual's ability to live independently in his or her own community, and to lessen the family's burden of providing care.</p>
							<div class="clearfix"></div>
							<!-- causes Donate button -->
							<a class="btn btn-lg btn-primary btn-gradient-green" href="#">MAKE A GIFT</a>
						</div>
					</div>
				</div>

				<!-- Cause item 03 -->
				<div class="col-md-4 col-sm-6 col-xs-12">
					<div class="causes-list">	
						<h2 class="cause-title">Bright Futures</h2>
						<figure>
							<img class="img-responsive" src="/img/kidsuniform.jpg" alt="" title="" />
						</figure>
						<div class="cause-info">
						<h4>Youth Internships</h4>
							<div class="raised-amount">
								<span class="amount">
									85%
								</span>			
							</div>
							<div class="fund-rase-info"><!-- causes fund information -->
								<div class="fr-amount-row fr-left">
									<span class="fr-label">Raised</span>
									<span class="fr-amount">$32,418</span>
								</div>
								<div class="fr-amount-row fr-right">
									<span class="fr-label">Goal</span>
									<span class="fr-amount">$45,000</span>
								</div>
							</div>
							<div class="fs-amount-bar"><!-- causes progress bar -->
								<div class="progress">
								  <div class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar"
								  aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width:70%">
								    $32,418
								  </div>
								</div>
							</div>
							<!-- causes short description -->
							<p>Our Dedicated Internship Program is to provide internships in public and nonprofit organizations that have work for student interns but cannot afford to hire them. Students learn about significant fields of endeavor such as the arts, healthcare, law enforcement, and legal services.<br>
							
							Students have the opportunity to give back to their communities, which helps them become more responsible citizens.</p>
							<div class="clearfix"></div>
							<!-- causes Donate button -->
							<a class="btn btn-lg btn-primary btn-gradient-green" href="#">MAKE A GIFT</a>
						</div>
					</div>
				</div>

				<div class="clearfix"></div>
				

				<div class="col-md-12 text-center ptb-25">
					<!-- causes more campaign button -->
					<a href="charitable-hq.html" class="btn btn-lg btn-primary btn-rounded">Charitable Initiative Headquarters <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
				</div>

			</div>
			<!-- Home causes listing container end -->
		</div>
	</div>
</section>	
<!-- Home featured causes section end -->
<!-- Donators section start -->
<section class="container-fluid sections donators-section" id="bulletin">
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<!-- Section heading start -->
				<div class="section-head">
					<h1 class="below-line">Community Action Network</h1>
					<p></p>
				</div>
				<!-- Section heading end -->
			</div>
		</div>
		<div class="row">
			<!-- Donators listing container start -->
			<div class="donators-cnt">
		        <div class="col-sm-6 col-md-3">
		        	<!-- Donators item 01 -->
					<div class="donators-item">
						<!-- Donators pic -->
						<div class="donators-item-image">
							<a href="bulletinboard.html"><img src="/img/fund-campaign.jpg" alt=""><a/>
						</div>
						<!-- Donators details -->
						<div class="donators-item-descr">
						  	<div class="donators-item-name">Fundraising Campaigns</div>
						</div>
					</div>
		        </div>
		        <div class="col-sm-6 col-md-3">
		        	<!-- Donators item 02 -->
					<div class="donators-item">
						<!-- Donators pic -->
						<div class="donators-item-image">
							<a href="bulletinboard.html"><img src="/img/event-icon.jpg" alt=""></a>
						</div>
						<!-- Donators details -->
						<div class="donators-item-descr">
						  	<div class="donators-item-name">Charitable Events</div>
						</div>
					</div>
		        </div>
		        <div class="col-sm-6 col-md-3">
		        	<!-- Donators item 03 -->
					<div class="donators-item">
						<!-- Donators pic -->
						<div class="donators-item-image">
							<a href="bulletinboard.html"><img src="/img/money-icon.jpg" alt=""></a>
						</div>
						<!-- Donators details -->
						<div class="donators-item-descr">
						  	<div class="donators-item-name">Gifts Offered</div>
						</div>
					</div>
		        </div>
		        <div class="col-sm-6 col-md-3">
		        	<!-- Donators item 04 -->
					<div class="donators-item">
						<!-- Donators pic -->
						<div class="donators-item-image">
							<a href="bulletinboard.html"><img src="/img/volunteer-icon.jpg" alt=""></a>
						</div>
						<!-- Donators details -->
						<div class="donators-item-descr">
						  	<div class="donators-item-name">Volunteer Services Offered</div>
						</div>
					</div>
		        </div>
		    </div>
		    <!-- Donators listing container end -->
		    <a href="" class="btn btn-lg btn-primary btn-rounded">Community Action Network <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
		</div>
	</div>
</section>
<!-- Donators section end -->
<!-- Newsletter section start -->
<section class="container-fluid newletter-section">
	<div class="container">
		<!-- Newsletter form start -->
		<div class="newletter-subscribe">
			<div id="boxes-normal" class="newletter-container">
				<div class="newsletter-dialog">
					<div class="box">
						<!-- Newsletter heading text start -->
						<div class="newletter-title">
							<h3>Sign-up for Our Newsletter</h3>
							<br>
							<label>Receive our Company Spotlight Series<br> 
							to learn about philanthropy at work in your community.</label>
						</div>
						<!-- Newsletter heading text end -->

						<!-- Newsletter form fields start -->
						<div class="newleter-content">
							<form name="" id="subscribe-normal">
								<input type="text" value="" name="" id="subscribe_email-normal" placeholder="Enter your email address">
								<input type="hidden" value="" name="" id="subscribe_name-normal">
								<a class="btn">Subscribe</a>    
							</form>
						</div>
						<!-- Newsletter form fields end -->
					</div>
				</div>	
			</div>
		</div>
		<!-- Newsletter form end -->
	</div>
</section>
<!-- Newsletter section end -->

<!-- Support section start -->
<section class="container-fluid sections support-section">
	<div class="container">
		<div class="row">
			<!-- Support widget column 01 start -->
			<div class="col-md-4">
				<div class="support-col platform-col">
					<h4 class="support-title">Fundraising Management</h4>
					<p>We offer a wide range of fundraising and volunteer management tools that not only help you manage your company's resources, but also help measure goodwill return from your donated resources.</p>
					<p><a href="#">How It Works <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a></p>
				</div>
			</div>
			<!-- Support widget column 01 end -->

			<!-- Support widget column 02 start -->
			<div class="col-md-4">
				<div class="support-col guarantee-col">
					<h4 class="support-title">First-Story Services</h4>
					<p>We offer a wide-range of creative, marketing, and public relations services, which tell the story of your company's positive impact in your community.</p>
					<p><a href="#">Learn More <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a></p>
				</div>
			</div>
			<!-- Support widget column 02 end -->

			<!-- Support widget column 03 start -->
			<div class="col-md-4">
				<div class="support-col full-support-col">
					<h4 class="support-title">Sharing How You Care</h4>
					<p>Good news travels fast. Contribute your own giving story to First Story's Charitable Giving Storyboard to quickly spread the good news.</p>
					<p><a href="#">How It Works <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a></p>
				</div>
			</div>
			<!-- Support widget column 03 end -->
		</div>
	</div>
</section>			
<!-- Support section end -->

<!-- Footer navigation section start -->
<div class="footer-fixed">
	
	<!-- Footer navigation start -->
	<section class="container-fluid sections footer-section">
		<div class="container">
			<!-- footer nav widget row start -->
			<div class="row">
				
				<!-- footer nav widget 01 start -->
				<div class="col-md-3 col-sm-6">
					<div class="footer-widget">
						<h3 class="ft-title">Get Started</h3>
						<ul>
							<li><a href="#">How It Works</a></li>
							<li><a href="#">Sign Up as a Donor</a></li>
							<li><a href="#">Become a Charitable Partner</a></li>
						</ul>
					</div>
				</div>
				<!-- footer nav widget 01 end -->

				<!-- footer nav widget 02 start -->
				<div class="col-md-3 col-sm-6">
					<div class="footer-widget">
						<h3 class="ft-title">Top Categories</h3>
						<ul>
							<li><a href="#">Education Fundraising</a></li>
							<li><a href="#">Healthcare Fundraising</a></li>
							<li><a href="#">Community Volunteer</a></li>
						</ul>
					</div>
				</div>
				<!-- footer nav widget 02 end -->

				<!-- footer nav widget 03 start -->
				<div class="col-md-3 col-sm-6">
					<div class="footer-widget">
						<h3 class="ft-title">Learn More</h3>
						<ul>
							<li><a href="#">Our Services</a></li>
							<li><a href="#">Fundraising Dashboard</a></li>
							<li><a href="#">Success Stories</a></li>
							<li><a href="#">Charitable Partners</a></li>
							<li><a href="#">Active Corporate Donors</a></li>
						</ul>
					</div>
				</div>
				<!-- footer nav widget 03 end -->

				<!-- footer nav widget 04 start -->
				<div class="col-md-3 col-sm-6">
					<div class="footer-widget last">
						<h3 class="ft-title">Community Bulletin Board</h3>
						<ul>
							<li><a href="#">Community Calendar</a></li>
							<li><a href="#">Active Fundraising Campaigns</a></li>
							<li><a href="#">Charitable Events</a></li>
							<li><a href="#">Gift and Volunteer Offerings</a></li>
						</ul>
					</div>
				</div>
				<!-- footer nav widget 04 end -->

			</div>
			<!-- footer nav widget row end -->

			<!-- Disclaimer content end -->
		</div>
	</section>
	<!-- Footer navigation end -->
	
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
</body>
</html>

