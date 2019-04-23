<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.sql.*,java.util.*" %>
<%@page import="com.DbConnection.*" %>
<%@page import ="java.sql.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Certificates</title>
<style type="text/css">
.box1
{
    padding-top: 0px;
    padding-left: 0px;
    margin-left: 0px;
   
}
.validation
{
	color:red;
}
 button[type="submit"]{
    background: #007bff;
    border: 0;
    border-radius: 20px;
    padding: 8px 30px;
    color: #fff;
    transition: 0.3s;
}   
 .cancelbtn {
    background: red;
    border: 0;
    border-radius: 20px;
    padding: 8px 30px;
    color: #fff;
    transition: 0.3s;
} 
.brder
{
    border-top: 1px solid #FF8500;
    border-bottom: 1px solid #FF8500;
    padding-top: 10px;
    margin-top: 20px;
}     
    </style>
</head>
<body>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Online Certificates</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="" name="keywords">
  <meta content="" name="description">

  <!-- Favicons -->
  <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Montserrat:300,400,500,700" rel="stylesheet">

  <!-- Bootstrap CSS File -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Libraries CSS Files -->
  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="lib/animate/animate.min.css" rel="stylesheet">
  <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
  <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">

  <!-- Main Stylesheet File -->
  <link href="css/style.css" rel="stylesheet">

  <!-- =======================================================
    Theme Name: NewBiz
    Theme URL: https://bootstrapmade.com/newbiz-bootstrap-business-template/
    Author: BootstrapMade.com
    License: https://bootstrapmade.com/license/
  ======================================================= -->
</head>

<body>

  <!--==========================
  Header
  ============================-->
  <header id="header" class="fixed-top">
    <div class="container">

      <div class="logo float-left">
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <h1 class="text-light"><a href="#header"><span>NewBiz</span></a></h1> -->
        
      <font style="font-size: 40px;color: #FF8500;font-style: oblique;"><i class="ion-ios-paper-outline" style="color: Green;"></i>Certificates</font>
      </div>

      <nav class="main-nav float-right d-none d-lg-block">
        <ul>
          <li class="active"><a href="AdminHome.jsp">Home</a></li>
          <li><a href="ViewUser.jsp">View User</a></li>
          <li><a href="ViewBirthCertificate.jsp">Birth Certificate</a></li>
         <li><a href="ViewMarriageCertificate.jsp">Marriage Certificate</a></li>
         <li><a href="ViewDeathCertificate.jsp">Death Certificate</a></li>
         <li><a href="index.jsp">Logout</a></li>
         
          
        </ul>
      </nav><!-- .main-nav -->
      
    </div>
  </header><!-- #header -->
  
  <main id="main">

  <!--==========================
    intro Section
  ============================-->
<section id="intro" class="section-bg" style="margin-top: -20px;">
      <div class="container" style="background-color: white;padding-top: 10px;">

        <div class="title text-center brder" style="margin-bottom: 10px;">
					<h1 class="mb-10"><i class="fa fa-user">&nbsp;USERS DETAILS</h1></i>
				</div>
        <div class="row">

          <div class="col-md-12 col-lg-12 wow bounceInUp" data-wow-duration="1.4s" >
            <div class="box">
             <form role="form">
                          <sql:setDataSource
        					var="dbsource" 
        					driver="com.mysql.jdbc.Driver"
        					url="jdbc:mysql://localhost:3306/worldrecipes"
        					user="root"
        					password="" />
        
        <sql:query dataSource="${dbsource}" var="result">
        		Select * from usersregistration
        </sql:query>
                <table class="table table-hover table-bordered" id="sampleTable" style="width: 1040px !important;margin-top: 10px;">
                  <thead>
                    <tr>
        <th>ID</th>
                               <th>First Name</th>
                               <th>Middle Name</th>
                               <th>Last Name</th>
                               <th>Address</th>
                               <th>Gender</th>
                               <th>Email</th>
                               <th>Contact</th>
                                                        
                              									
                          </tr>
                  </thead>
                   <c:forEach var="rows" items="${result.rows}">
        	<tr  style="color: black">
        		<td><c:out value="${rows.id}" /></td>
        		<td><c:out value="${rows.FirstName}" /></td>
        		<td><c:out value="${rows.MiddleName}" /></td>
        		<td><c:out value="${rows.LastName}" /></td>
        		<td><c:out value="${rows.Address}" /></td>
        		<td><c:out value="${rows.Gender}" /></td>
        		<td><c:out value="${rows.Email}" /></td>
        		<td><c:out value="${rows.Contact}" /></td>	
 				
        	</tr>     
        </c:forEach>                             
                  <tbody>
                  
                  </tbody>
                </table>
       </div>
          </div>

        </div>

      </div>
    </section><!-- #services -->


  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
  <!-- Uncomment below i you want to use a preloader -->
  <!-- <div id="preloader"></div> -->

  <!-- JavaScript Libraries -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/jquery/jquery-migrate.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="lib/easing/easing.min.js"></script>
  <script src="lib/mobile-nav/mobile-nav.js"></script>
  <script src="lib/wow/wow.min.js"></script>
  <script src="lib/waypoints/waypoints.min.js"></script>
  <script src="lib/counterup/counterup.min.js"></script>
  <script src="lib/owlcarousel/owl.carousel.min.js"></script>
  <script src="lib/isotope/isotope.pkgd.min.js"></script>
  <script src="lib/lightbox/js/lightbox.min.js"></script>
  <!-- Contact Form JavaScript File -->
  <script src="contactform/contactform.js"></script>

  <!-- Template Main Javascript File -->
  <script src="js/main.js"></script>
   <!-- Javascripts-->
    <script src="Table/js/jquery-2.1.4.min.js"></script>
    <script src="Table/js/bootstrap.min.js"></script>
    <script src="Table/js/plugins/pace.min.js"></script>
    <script src="Table/js/main.js"></script>
    <!-- Data table plugin-->
    <script type="text/javascript" src="Table/js/plugins/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="Table/js/plugins/dataTables.bootstrap.min.js"></script>
    <script type="text/javascript">$('#sampleTable').DataTable();</script>
  
<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
</body>
</html>

</body>
</html>