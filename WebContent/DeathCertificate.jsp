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
.brder1
{
    border-bottom: 1px solid #FF8500;
    padding-top: 10px;
    margin-top: 20px;
    border-bottom-style: dotted;
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

  <!--==========================
    Intro Section
  ============================-->
  <section id="intro" class="clearfix" style="margin-top: -150px;">
    <div class="container">
  <div class="box box1">
  <form class="modal-content animate contactForm" action="UpdateBirthCertificate.jsp" method="post">
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
					<h2 class="mb-10" style="font-family: cursive;" >Certificate Of Death </h2>
				</div>
				<br>
				
				 <div class="form-row text-center">
  				  <div class="form-group col-lg-12">
                   <font style="font-family: monospace;font-size: 14px">This is to acknowledge the death of</font>
                  </div>
                  </div>
                  <div class="form-row text-center">
  				  <div class="form-group col-lg-12">
                   <font class="brder1" style="font-style: oblique;font-size: 30px"><%=resultSet.getString("FirstName") %>&nbsp;&nbsp;<%=resultSet.getString("MiddleName") %>&nbsp;&nbsp;<%=resultSet.getString("LastName") %></font>
                  </div>
                  </div>
                   <div class="form-row text-center">
  				  <div class="form-group col-lg-12">
                   <font class="" style="font-style: oblique;font-size: 16px">ON &nbsp;&nbsp;</font>
                   </div>
                  </div>
                 <div class="form-row text-center">
  				  <div class="form-group col-lg-12">
                   <font class="brder1" style="font-style: oblique;font-size: 24px"><b><%=resultSet.getString("DeathDate") %></b></font>
                   </div>
                  </div>
                  <div class="form-row text-center brder">
            <div class="form-group col-lg-5"></div>
            <div class="form-group col-lg-6">
					<font>Signature :</font>
					</div>
					<div class="form-group col-lg-8"></div>
					<div class="form-group col-lg-4">
                   <font class="" style="font-style: oblique;font-size: 16px">Head Of Death Department</font>
                   </div>
                   <div class="form-group col-lg-8"></div>
					<div class="form-group col-lg-4">
                   <font class="" style="font-style: oblique;font-size: 16px">(Name & Signature)</font>
                   </div>
                </div>
      
                <!-- <img alt="" src="a.png" style="margin-top: -305px; margin-left: 67px;">-->
                  
            
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