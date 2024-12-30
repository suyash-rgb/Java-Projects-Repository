	<%@ page contentType="text/html; charset=ISO-8859-1" pageEncoding="UTF-8" isELIgnored="false"%>
	<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>



<!DOCTYPE html>
<html lang="zxx" class="no-js">
<head>
    <!-- Mobile Specific Meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/fav.png">
    <!-- Author Meta -->
    <meta name="author" content="simran">
    <!-- Meta Description -->
    <meta name="description" content="">
    <!-- Meta Keyword -->
    <meta name="keywords" content="">
    <!-- meta character set -->
    <meta charset="UTF-8">
    <!-- Site Title -->
    <title>Institute HomePage</title>

    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        
			<!--
			CSS
			============================================= -->
			
			<link rel="stylesheet" href="<c:url value="/resources/css/linearicons.css"/>">
			<link rel="stylesheet" href="<c:url value="/resources/css/font-awesome.min.css"/>">
			<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.css" /> ">
			<link rel="stylesheet" href="<c:url value="/resources/css/magnific-popup.css" /> ">
			<link rel="stylesheet" href="<c:url value="/resources/css/nice-select.css" /> ">							
			<link rel="stylesheet" href="<c:url value="/resources/css/animate.min.css" /> ">
			<link rel="stylesheet" href="<c:url value="/resources/css/owl.carousel.css" /> ">			
			<link rel="stylesheet" href="<c:url value="/resources/css/jquery-ui.css" /> ">			
			<link rel="stylesheet" href="<c:url value="/resources/css/main.css" /> ">
			    
   </head>
    <body>	
      <header id="header" id="home">
          <div class="header-top">
              <div class="container">
                  <div class="row">
                      <div class="col-lg-6 col-sm-6 col-8 header-top-left no-padding">
                          <ul>
                            <li><a href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="https://www.twitter.com/"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="https://www.dribble.com/"><i class="fa fa-dribbble"></i></a></li>
                            <li><a href="https://www.behance.com/"><i class="fa fa-behance"></i></a></li>
                          </ul>			
                      </div>
                      <div class="col-lg-6 col-sm-6 col-4 header-top-right no-padding">
                          <a href="tel:+91 012 3654 896"><span class="lnr lnr-phone-handset"></span> <span class="text">+91 012 3654 896</span></a>
                          <a href="mailto:support@javagroup2.com"><span class="lnr lnr-envelope"></span> <span class="text">support@javagroup2.com</span></a>			
                      </div>
                  </div>			  					
              </div>
        </div>
        <div class="container main-menu">
            <div class="row align-items-center justify-content-between d-flex">
              <div id="logo">
                <a href="index.html"><img src="img/logo.png" alt="" title="" /></a>
              </div>
              <nav id="nav-menu-container">
                <ul class="nav-menu">
                  <!-- <li class="menu-has-children"><a href="">Activity</a>
                    <ul>
                      <li><a href="request.html">View Requests</a></li>
                      <li><a href="response-table.html">Approve Request</a></li>
                    </ul>
                </li> -->
                  <li><a href="viewstudentrequests/${INSTOBJ.instituteID}">Enrollment Requests</a></li>

                  <li><a href="viewInststudents/${INSTOBJ.instituteID}">Students</a></li>  
                  <li class="menu-has-children"><a href="">Faculty</a>
                    <ul>
                      <li><a href="registerFacultyForm">Add Faculty</a></li>
                      <li><a href="delFacultyForm">Delete Faculty</a></li>
                    </ul>
                  </li>
               
                  <li><a href="addCourseForm">Add Course</a></li>
               
                  
                  <li><a href="viewInstfeedbacks/${INSTOBJ.instituteID}">Feedbacks</a></li>
                  <li class="menu-has-children"><a href="">Profile</a>
                    <ul>
                      <li><a href="updateInstituteForm">Edit Profile</a></li>
                      <li><a href="index.jsp">Logout</a></li>
                    </ul>
                  </li>	
                  
                </ul>
              </nav>	    		
            </div>
        </div>
      </header>

        <!-- start banner Area -->
        <section class="banner-area relative" id="home">
            <div class="overlay overlay-bg"></div>	
            <div class="container">
                <div class="row fullscreen d-flex align-items-center justify-content-between">
                    <div class="banner-content col-lg-9 col-md-12" style="margin-top: 100px;">
                        <h1 class="text-uppercase">
                            Welcome to the
                            Institute Portal			
                        </h1>
                        <br><br>
                        <p class="pt-12 pb-12">
                            Training institutes help the employee to increase job security and job satisfaction. The more satisfied the employee is, the greater are their morale and the more they will contribute to a company’s success.
                        </p>
                    </div>										
                </div>
            </div>					
        </section>
        <!-- End banner Area -->        
        
                    
        <!-- start footer Area -->		
        <footer class="footer-area section-gap">
            <div class="container">
                <div class="row">
                    <div class="col-lg-2 col-md-6 col-sm-6">
                        <div class="single-footer-widget">
                            <h4>Top Institutes</h4>
                            <ul>
                                <li><a href="#">Jodo Institute</a></li>
                                <li><a href="#"></a>Sibyl Solution</li>
                                <li><a href="#"></a>IhinkLABS</li>
                                <li><a href="#"></a>IP Net Solution</li>
                                <li><a href="#"></a>ICE Technology Lab</li>
                                <li><a href="#"></a>Classpro</li>
                            </ul>								
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-6 col-sm-6">
                        <div class="single-footer-widget">
                            <h4>Quick links</h4>
                            <ul>
                                <li><a href="admin-login.jsp">Admin</a></li>
                                <li><a href="student-login.jsp">Student</a></li>
                                <li><a href="institute-login.jsp">Institute</a></li>
                                <li><a href="add-course.jsp">Course</a></li>
                            </ul>								
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-6 col-sm-6">
                        <div class="single-footer-widget">
                            <h4>Benefits</h4>
                            <ul>
                                <li><a href="#">Jobs</a></li>
                                <li><a href="#">No. 1 Institutes</a></li>
                                <li><a href="#">Improved Skills</a></li>
                                <li><a href="#">Potential Trainers</a></li>
                            </ul>								
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-6 col-sm-6">
                        <div class="single-footer-widget">
                            <h4>Technologies</h4>
                            <ul>
                                <li><a href="#">HTML5</a></li>
                                <li><a href="#">Bootstrap</a></li>
                                <li><a href="#">CSS</a></li>
                                <li><a href="#">JavaScript</a></li>
                                <li><a href="#">JAVA</a></li>
                            </ul>								
                        </div>
                    </div>
                    
                    <div class="col-lg-4  col-md-6 col-sm-6">
                        <div class="single-footer-widget">
                            <h4>Team Members</h4>
                            <ul>
                                <li><a href="#">Kumari Simran</a></li>
                                <li><a href="#">Sourabh Kumar Rajak</a></li>
                                <li><a href="#">Pawan Singh</a></li>
                                <li><a href="#">Neeraj Kumar</a></li>
                                <li><a href="#">Anirudra Dabas</a></li>
                                <li><a href="#">Smriti Gupta</a></li>
                                <li><a href="#">Samarth Agarwal</a></li>
                                <li><a href="#">Avneesh Singh</a></li>
                            </ul>								
                        </div>
                    </div>

                <div class="footer-bottom row align-items-center justify-content-between">
                    <p class="footer-text m-0 col-lg-6 col-md-12">
                        Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | Made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://javagroup2.com" target="_blank">Java Group 2</a>
                    </p>
                    <div class="col-lg-6 col-sm-12 footer-social">
                        <a href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a>
                        <a href="https://www.twitter.com/"><i class="fa fa-twitter"></i></a>
                        <a href="https://www.dribble.com/"><i class="fa fa-dribbble"></i></a>
                        <a href="https://www.behance.com/"><i class="fa fa-behance"></i></a>
                    </div>
                </div>						
            </div>
            </div>
        </footer>	
        <!-- End footer Area -->	


            <script src="<c:url value="/resources/js/vendor/jquery-2.2.4.min.js" /> "></script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
			<script src="<c:url value="/resources/js/vendor/bootstrap.min.js" /> " ></script>			
			<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
  			<script src="<c:url value="/resources/js/easing.min.js" /> "></script>			
			<script src="<c:url value="/resources/js/hoverIntent.js" />"></script>
			<script src="<c:url value="/resources/js/superfish.min.js" /> "></script>	
			<script src="<c:url value="/resources/js/jquery.ajaxchimp.min.js" />"></script>
			<script src="<c:url value="/resources/js/jquery.magnific-popup.min.js" />"></script>	
    		<script src="<c:url value="/resources/js/jquery.tabs.min.js" />"></script>						
			<script src="<c:url value="/resources/js/jquery.nice-select.min.js" />"></script>	
			<script src="<c:url value="/resources/js/owl.carousel.min.js" /> "></script>									
			<script src="<c:url value="/resources/js/mail-script.js" />"></script>	
			<script src="<c:url value="/resources/js/main.js" />"></script>	
			
			
    </body>
</html>