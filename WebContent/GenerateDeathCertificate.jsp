<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.DbConnection"%>
<%@ page import="java.sql.*,java.util.*" %>
<%@page import="java.io.File"%>
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
<%
			  String id;
			
			  if(request.getParameter("Id")!=null){
			
			  	id=(String)request.getParameter("Id");
			
			  }
			  else{
			  id=(String)request.getAttribute("Id");
			  }
		 %>
		 
  <!--==========================
  Header
  ============================-->
  <header id="header" class="fixed-top">
    <div class="container">

      <div class="logo float-left">
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <h1 class="text-light"><a href="#header"><span>NewBiz</span></a></h1> -->
        <a href="#intro" class="scrollto"><img src="img/logo.png" alt="" class="img-fluid"></a>
      </div>

      <nav class="main-nav float-right d-none d-lg-block">
        <ul>
         <li class="active"><a href="AdminHome.jsp">Home</a></li>
          <li><a href="ViewUser.jsp">View User</a></li>
          <li><a href="ViewBirthCertificate.jsp">Birth Certificate</a></li>
         <li><a href="ViewMarriageCertificate.jsp">Marriage Certificate</a></li>
         <li><a href="ViewDeathCertificate.jsp">Death Certificate</a></li>
         <li><a href="ViewContact.jsp">ContactUS</a></li>
         <li><a href="index.jsp">Logout</a></li>
        </ul>
      </nav><!-- .main-nav -->
      
    </div>
  </header><!-- #header -->
  <!--==========================
    Intro Section
  ============================-->
  <section id="intro" class="clearfix" style="margin-top: -73px;">
    <div class="container">
  <div class="box box1">
  <form class="modal-content animate contactForm" action="DeathCertificate" method="POST">
    <div class="container">
     <%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "onlinecertificate";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from deathcertificate where id='"+id+"'";
resultSet = statement.executeQuery(sql);


while(resultSet.next()){
%>
 				<div class="title text-center brder">
					<h2 class="mb-10">Death Certificate Verification</h2>
				</div>
				<br>
  				 <div class="form-row">
  				 <div class="form-group col-lg-4">
  				 <div class="title">
					<h4 class="mb-10"><i class="fa fa-circle">&nbsp;Basic Information</h4></i>
				</div>
				</div>
				</div>
				<div class="form-row">
  				  <div class="form-group col-lg-4">
                    <input type="text" name="FirstName" class="form-control" id="FirstName" value="<%=resultSet.getString("FirstName") %>" placeholder="First Name" data-rule="minlen:4" data-msg="Please Enter Your First Name" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-lg-4">
                    <input type="text" name="MiddleName" class="form-control" id="MiddleName" value="<%=resultSet.getString("MiddleName") %>" placeholder="Middle Name" data-rule="minlen:4" data-msg="Please Enter Your Middle Name" />
                    <div class="validation"></div>
                  </div>
                <div class="form-group col-lg-4">
                    <input type="text" name="LastName" class="form-control" id="LastName" value="<%=resultSet.getString("LastName") %>" placeholder="Last Name" data-rule="minlen:4" data-msg="Please Enter Your Last Name" />
                    <div class="validation"></div>
                  </div>
                  </div>
                  <div class="form-row">
                  
                <label for="lastname">Select Gender :</label>
                   <div class="form-group col-lg-6">
                    <input type="radio" name="Gender" class="" id="Male" value="Male"  />&nbsp;&nbsp;Male
                    <input type="radio" name="Gender" class="" id="Female" value="Female" />&nbsp;&nbsp;Female
                    <input type="radio" name="Gender" class="" id="Other" value="Other" data-msg="Please Select Your Gender"  />&nbsp;&nbsp;Other
                  <div class="validation"></div>
                  </div>
                  </div>
                <div class="form-row">
  				 <div class="form-group col-lg-4">
  				 <div class="title">
					<h4 class="mb-10"><i class="fa fa-circle">&nbsp;Other Information</h4></i>
				</div>
				</div>
				</div>
				<div class="form-row">
					<h4>Birth Date :</h4>
  				  <div class="form-group col-lg-4">
                    <input type="date" name="BirthDate" class="form-control" id="BirthDate" value="<%=resultSet.getString("BirthDate") %>" placeholder="Birth Date" data-rule="minlen:4" data-msg="Please Select Birth Date" />
                    <div class="validation"></div>
                  </div>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h5>Death Date :</h5>
                  <div class="form-group col-lg-4">
                    <input type="date" name="DeathDate" class="form-control" id="DeathDate" value="<%=resultSet.getString("DeathDate") %>" placeholder="Death Date" data-rule="minlen:4" data-msg="Please Select Death Date" />
                    <div class="validation"></div>
                  </div>
                  </div>
                <div class="form-row">
  				    <div class="form-group col-lg-6">
                    <input type="text" name="BirthPlace" class="form-control" id="BirthPlace" value="<%=resultSet.getString("BirthPlace") %>" placeholder="Birth Place" data-rule="minlen:4" data-msg="Please Enter Birth Place" />
                    <div class="validation"></div>
                  </div>
                <div class="form-group col-lg-6">
                    <input type="text" name="DeathPlace" class="form-control" id="DeathPlace" value="<%=resultSet.getString("DeathPlace") %>" placeholder="Death Place" data-rule="minlen:4" data-msg="Please Enter Death Place" />
                    <div class="validation"></div>
                  </div>
                  </div>
                
                <div class="text-center">
                <button class="cancelbtn" style="background:#007bff;"><a href="DeathCertificate.jsp?Id=<%=resultSet.getString("id") %>" style="color:white;" target="blank"> Generate Certificate</a></button>
				  <button type="reset" class="cancelbtn">Cancel</button>
 				</div>
            <div class="form-row">
            <br></div>
      
    </div>
<%

}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
  </form>
  </div>
</div>

    </div>
  </section><!-- #intro -->


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