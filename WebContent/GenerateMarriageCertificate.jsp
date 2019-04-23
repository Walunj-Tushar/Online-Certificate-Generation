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
  <form class="modal-content animate contactForm" action="MarriageCertificate" method="POST">
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
String sql ="select * from marriagecertificate where id='"+id+"'";
resultSet = statement.executeQuery(sql);


while(resultSet.next()){
%>
 				<div class="title text-center brder">
					<h2 class="mb-10"><i class="fa fa-edit">&nbsp;Marriage Certificate Form</h2></i>
				</div>
				<br>
  				 <div class="form-row">
  				 <div class="form-group col-lg-4">
  				 <div class="title">
					<h4 class="mb-10"><i class="fa fa-circle">&nbsp;Husband Information</h4></i>
				</div>
				</div>
				</div>
				<div class="form-row">
				<div class="form-group col-lg-3">
                    <input type="text" name="HusbandSalutation" class="form-control" id="HusbandSalutation" value="<%=resultSet.getString("HusbandSalutation") %>"  placeholder="Salutation" data-rule="minlen:1" data-msg="Please Enter Your Salutation" />
                    <div class="validation"></div>
                  </div>
  				  <div class="form-group col-lg-3">
                    <input type="text" name="HusbandFirstName" class="form-control" id="HusbandFirstName" value="<%=resultSet.getString("HusbandFirstName") %>"  placeholder="First Name"   data-msg="Please Enter Your First Name" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-lg-3">
                    <input type="text" name="HusbandMiddleName" class="form-control" id="HusbandMiddleName"  value="<%=resultSet.getString("HusbandMiddleName") %>"  placeholder="Middle Name"   data-msg="Please Enter Your Middle Name" />
                    <div class="validation"></div>
                  </div>
                <div class="form-group col-lg-3">
                    <input type="text" name="HusbandLastName" class="form-control" id="HusbandLastName" value="<%=resultSet.getString("HusbandLastName") %>"  placeholder="Last Name"   data-msg="Please Enter Your Last Name" />
                    <div class="validation"></div>
                  </div>
                  </div>
                  <div class="form-row">
                  
               		<h5> Gender :</h5>
                   <div class="form-group col-lg-4">
                    <input type="radio" name="HusbandGender" class="" id="Male" value="Male"  />&nbsp;&nbsp;Male
                    <input type="radio" name="HusbandGender" class="" id="Female" value="Female" />&nbsp;&nbsp;Female
                    <input type="radio" name="HusbandGender" class="" id="Other" value="Other" data-msg="Please Select Your Gender"  />&nbsp;&nbsp;Other
                  <div class="validation"></div>
                  </div>
                  </div>
                  
				 <div class="form-row">
				 Birth Date : 
  				  <div class="form-group col-lg-4">
                    <input type="date" name="HusbandBirthDate" class="form-control" id="HusbandBirthDate" value="<%=resultSet.getString("HusbandBirthDate") %>"  placeholder="Birth Date"    data-msg="Please Select Your Birth Date" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-lg-4">
                    <input type="text" name="HusbandOccupation" class="form-control" id="HusbandOccupation" value="<%=resultSet.getString("HusbandOccupation") %>"  placeholder="Occupation"   data-msg="Please Enter Occupation" />
                    <div class="validation"></div>
                  </div>
                   </div>
                <div class="form-row">
  				  <div class="form-group col-lg-4">
                    <input type="email" name="HusbandEmail" class="form-control" id="HusbandEmail" value="<%=resultSet.getString("HusbandEmail") %>"  placeholder="Email ID"   data-msg="Please Enter Email" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-lg-4">
                    <input type="text" name="Husbandcontact" class="form-control" id="Husbandcontact" value="<%=resultSet.getString("Husbandcontact") %>"  placeholder="Contact Number" data-rule="minlen:10" data-msg="Please Enter Contact Number" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-lg-4">
                    <input type="text" name="HusbandReligion" class="form-control" id="HusbandReligion" value="<%=resultSet.getString("HusbandReligion") %>"  placeholder="Religion"   data-msg="Please Enter Religion" />
                    <div class="validation"></div>
                  </div>
                  </div>
                <div class="form-row">
  				  <div class="form-group col-lg-4">
                    <input type="text" name="HusbandHouseName" class="form-control" id="HusbandHouseName" value="<%=resultSet.getString("HusbandHouseName") %>"  placeholder="House Name"   data-msg="Please Enter House Name" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-lg-4">
                    <input type="text" name="HusbandHouseNo" class="form-control" id="HusbandHouseNo"  value="<%=resultSet.getString("HusbandHouseNo") %>"  placeholder="House Number"   data-msg="Please Enter House No" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-lg-4">
                    <input type="text" name="HusbandHouseArea" class="form-control" id="HusbandHouseArea"  value="<%=resultSet.getString("HusbandHouseArea") %>"  placeholder="House Area"   data-msg="Please Enter House Area Name" />
                    <div class="validation"></div>
                  </div>
                  </div>
                <div class="form-row">
  				  <div class="form-group col-lg-4">
                    <input type="text" name="HusbandCountry" class="form-control" id="HusbandCountry"  value="<%=resultSet.getString("HusbandCountry") %>"  placeholder="Country Name"   data-msg="Please Enter Country Name" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-lg-4">
                    <input type="text" name="HusbandState" class="form-control" id="HusbandState"  value="<%=resultSet.getString("HusbandState") %>"  placeholder="State Name"   data-msg="Please Enter State Name" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-lg-4">
                    <input type="text" name="HusbandCity" class="form-control" id="HusbandCity"  value="<%=resultSet.getString("HusbandCity") %>"  placeholder="City Name"   data-msg="Please Enter City Name" />
                    <div class="validation"></div>
                  </div>
                  </div>
				<div class="form-row">
  				 <div class="form-group col-lg-4">
  				 <div class="title">
					<h4 class="mb-10"><i class="fa fa-circle">&nbsp;Wife Information</h4></i>
				</div>
				</div>
				</div>
				<div class="form-row">
				<div class="form-group col-lg-3">
                    <input type="text" name="WifeSalutation" class="form-control" id="WifeSalutation"  value="<%=resultSet.getString("WifeSalutation") %>"  placeholder="Salutation" data-rule="minlen:1" data-msg="Please Enter Your Salutation" />
                    <div class="validation"></div>
                  </div>
  				  <div class="form-group col-lg-3">
                    <input type="text" name="WifeFirstName" class="form-control" id="WifeFirstName"  value="<%=resultSet.getString("WifeFirstName") %>"  placeholder="First Name"   data-msg="Please Enter Your First Name" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-lg-3">
                    <input type="text" name="WifeMiddleName" class="form-control" id="WifeMiddleName"  value="<%=resultSet.getString("WifeMiddleName") %>"  placeholder="Middle Name"   data-msg="Please Enter Your Middle Name" />
                    <div class="validation"></div>
                  </div>
                <div class="form-group col-lg-3">
                    <input type="text" name="WifeLastName" class="form-control" id="WifeLastName"  value="<%=resultSet.getString("WifeLastName") %>"  placeholder="Last Name"   data-msg="Please Enter Your Last Name" />
                    <div class="validation"></div>
                  </div>
                  </div>
                  <div class="form-row">
                  
               		<h5> Gender :</h5>
                   <div class="form-group col-lg-4">
                    <input type="radio" name="WifeGender" class="" id="Male" value="Male"  />&nbsp;&nbsp;Male
                    <input type="radio" name="WifeGender" class="" id="Female" value="Female" />&nbsp;&nbsp;Female
                    <input type="radio" name="WifeGender" class="" id="Other" value="Other" data-msg="Please Select Your Gender"  />&nbsp;&nbsp;Other
                  <div class="validation"></div>
                  </div>
                  </div>
                  
				 <div class="form-row">
				 Birth Date : 
  				  <div class="form-group col-lg-4">
                    <input type="date" name="WifeBirthDate" class="form-control" id="WifeBirthDate"  value="<%=resultSet.getString("WifeBirthDate") %>"  placeholder="Birth Date"    data-msg="Please Select Your Birth Date" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-lg-4">
                    <input type="text" name="WifeOccupation" class="form-control" id="WifeOccupation"  value="<%=resultSet.getString("WifeOccupation") %>"  placeholder="Occupation"   data-msg="Please Enter Occupation" />
                    <div class="validation"></div>
                  </div>
                   </div>
                <div class="form-row">
  				  <div class="form-group col-lg-4">
                    <input type="email" name="WifeEmail" class="form-control" id="WifeEmail"  value="<%=resultSet.getString("WifeEmail") %>"  placeholder="Email ID"   data-msg="Please Enter Email" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-lg-4">
                    <input type="text" name="Wifecontact" class="form-control" id="Wifecontact"  value="<%=resultSet.getString("Wifecontact") %>"  placeholder="Contact Number" data-rule="minlen:10" data-msg="Please Enter Contact Number" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-lg-4">
                    <input type="text" name="WifeReligion" class="form-control" id="WifeReligion"  value="<%=resultSet.getString("WifeReligion") %>"  placeholder="Religion"   data-msg="Please Enter Religion" />
                    <div class="validation"></div>
                  </div>
                  </div>
                <div class="form-row">
  				  <div class="form-group col-lg-4">
                    <input type="text" name="WifeHouseName" class="form-control" id="WifeHouseName"  value="<%=resultSet.getString("WifeHouseName") %>"  placeholder="House Name"   data-msg="Please Enter House Name" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-lg-4">
                    <input type="text" name="WifeHouseNo" class="form-control" id="WifeHouseNo"  value="<%=resultSet.getString("WifeHouseNo") %>"  placeholder="House Number"   data-msg="Please Enter House No" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-lg-4">
                    <input type="text" name="WifeHouseArea" class="form-control" id="WifeHouseArea"  value="<%=resultSet.getString("WifeHouseArea") %>"  placeholder="House Area"   data-msg="Please Enter House Area Name" />
                    <div class="validation"></div>
                  </div>
                  </div>
                <div class="form-row">
  				  <div class="form-group col-lg-4">
                    <input type="text" name="WifeCountry" class="form-control" id="WifeCountry"  value="<%=resultSet.getString("WifeCountry") %>"  placeholder="Country Name"   data-msg="Please Enter Country Name" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-lg-4">
                    <input type="text" name="WifeState" class="form-control" id="WifeState"  value="<%=resultSet.getString("WifeState") %>"  placeholder="State Name"   data-msg="Please Enter State Name" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-lg-4">
                    <input type="text" name="WifeCity" class="form-control" id="WifeCity"  value="<%=resultSet.getString("WifeCity") %>"  placeholder="City Name"   data-msg="Please Enter City Name" />
                    <div class="validation"></div>
                  </div>
                  </div>
<div class="form-row">
  				 <div class="form-group col-lg-4">
  				 <div class="title">
					<h4 class="mb-10"><i class="fa fa-circle">&nbsp;Witness1 Information</h4></i>
				</div>
				</div>
				</div>
				<div class="form-row">
				<div class="form-group col-lg-3">
                    <input type="text" name="Witness1Salutation" class="form-control" id="Witness1Salutation"  value="<%=resultSet.getString("Witness1Salutation") %>"  placeholder="Salutation" data-rule="minlen:1" data-msg="Please Enter Your Salutation" />
                    <div class="validation"></div>
                  </div>
  				  <div class="form-group col-lg-3">
                    <input type="text" name="Witness1FirstName" class="form-control" id="Witness1FirstName"  value="<%=resultSet.getString("Witness1FirstName") %>"  placeholder="First Name"   data-msg="Please Enter Your First Name" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-lg-3">
                    <input type="text" name="Witness1MiddleName" class="form-control" id="Witness1MiddleName"  value="<%=resultSet.getString("Witness1MiddleName") %>"  placeholder="Middle Name"   data-msg="Please Enter Your Middle Name" />
                    <div class="validation"></div>
                  </div>
                <div class="form-group col-lg-3">
                    <input type="text" name="Witness1LastName" class="form-control" id="Witness1LastName"  value="<%=resultSet.getString("Witness1LastName") %>"  placeholder="Last Name"   data-msg="Please Enter Your Last Name" />
                    <div class="validation"></div>
                  </div>
                  </div>
                  <div class="form-row">
                  
               		<h5> Gender :</h5>
                   <div class="form-group col-lg-4">
                    <input type="radio" name="Witness1Gender" class="" id="Male" value="Male"  />&nbsp;&nbsp;Male
                    <input type="radio" name="Witness1Gender" class="" id="Female" value="Female" />&nbsp;&nbsp;Female
                    <input type="radio" name="Witness1Gender" class="" id="Other" value="Other" data-msg="Please Select Your Gender"  />&nbsp;&nbsp;Other
                  <div class="validation"></div>
                  </div>
                  </div>
                  
				 <div class="form-row">
				 Birth Date : 
  				  <div class="form-group col-lg-4">
                    <input type="date" name="Witness1BirthDate" class="form-control" id="Witness1BirthDate"  value="<%=resultSet.getString("Witness1BirthDate") %>"  placeholder="Birth Date"    data-msg="Please Select Your Birth Date" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-lg-4">
                    <input type="text" name="Witness1Occupation" class="form-control" id="Witness1Occupation"  value="<%=resultSet.getString("Witness1Occupation") %>"  placeholder="Occupation"   data-msg="Please Enter Occupation" />
                    <div class="validation"></div>
                  </div>
                   </div>
                <div class="form-row">
  				  <div class="form-group col-lg-4">
                    <input type="email" name="Witness1Email" class="form-control" id="Witness1Email"  value="<%=resultSet.getString("Witness1Email") %>"  placeholder="Email ID"   data-msg="Please Enter Email" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-lg-4">
                    <input type="text" name="Witness1contact" class="form-control" id="Witness1contact"  value="<%=resultSet.getString("Witness1contact") %>"  placeholder="Contact Number" data-rule="minlen:10" data-msg="Please Enter Contact Number" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-lg-4">
                    <input type="text" name="Witness1Religion" class="form-control" id="Witness1Religion"  value="<%=resultSet.getString("Witness1Religion") %>"  placeholder="Religion"   data-msg="Please Enter Religion" />
                    <div class="validation"></div>
                  </div>
                  </div>
                <div class="form-row">
  				  <div class="form-group col-lg-4">
                    <input type="text" name="Witness1HouseName" class="form-control" id="Witness1HouseName"  value="<%=resultSet.getString("Witness1HouseName") %>"  placeholder="House Name"   data-msg="Please Enter House Name" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-lg-4">
                    <input type="text" name="Witness1HouseNo" class="form-control" id="Witness1HouseNo"  value="<%=resultSet.getString("Witness1HouseNo") %>"  placeholder="House Number"   data-msg="Please Enter House No" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-lg-4">
                    <input type="text" name="Witness1HouseArea" class="form-control" id="Witness1HouseArea"  value="<%=resultSet.getString("Witness1HouseArea") %>"  placeholder="House Area"   data-msg="Please Enter House Area Name" />
                    <div class="validation"></div>
                  </div>
                  </div>
                <div class="form-row">
  				  <div class="form-group col-lg-4">
                    <input type="text" name="Witness1Country" class="form-control" id="Witness1Country"  value="<%=resultSet.getString("Witness1Country") %>"  placeholder="Country Name"   data-msg="Please Enter Country Name" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-lg-4">
                    <input type="text" name="Witness1State" class="form-control" id="Witness1State"  value="<%=resultSet.getString("Witness1State") %>"  placeholder="State Name"   data-msg="Please Enter State Name" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-lg-4">
                    <input type="text" name="Witness1City" class="form-control" id="Witness1City"  value="<%=resultSet.getString("Witness1City") %>"  placeholder="City Name"   data-msg="Please Enter City Name" />
                    <div class="validation"></div>
                  </div>
                  </div>
<div class="form-row">
  				 <div class="form-group col-lg-4">
  				 <div class="title">
					<h4 class="mb-10"><i class="fa fa-circle">&nbsp;Witness2 Information</h4></i>
				</div>
				</div>
				</div>
				<div class="form-row">
				<div class="form-group col-lg-3">
                    <input type="text" name="Witness2Salutation" class="form-control" id="Witness2Salutation"  value="<%=resultSet.getString("Witness2Salutation") %>"  placeholder="Salutation" data-rule="minlen:1" data-msg="Please Enter Your Salutation" />
                    <div class="validation"></div>
                  </div>
  				  <div class="form-group col-lg-3">
                    <input type="text" name="Witness2FirstName" class="form-control" id="Witness2FirstName"  value="<%=resultSet.getString("Witness2FirstName") %>"  placeholder="First Name"   data-msg="Please Enter Your First Name" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-lg-3">
                    <input type="text" name="Witness2MiddleName" class="form-control" id="Witness2MiddleName"  value="<%=resultSet.getString("Witness2MiddleName") %>"  placeholder="Middle Name"   data-msg="Please Enter Your Middle Name" />
                    <div class="validation"></div>
                  </div>
                <div class="form-group col-lg-3">
                    <input type="text" name="Witness2LastName" class="form-control" id="Witness2LastName"  value="<%=resultSet.getString("Witness2LastName") %>"  placeholder="Last Name"   data-msg="Please Enter Your Last Name" />
                    <div class="validation"></div>
                  </div>
                  </div>
                  <div class="form-row">
                  
               		<h5> Gender :</h5>
                   <div class="form-group col-lg-4">
                    <input type="radio" name="Witness2Gender" class="" id="Male" value="Male"  />&nbsp;&nbsp;Male
                    <input type="radio" name="Witness2Gender" class="" id="Female" value="Female" />&nbsp;&nbsp;Female
                    <input type="radio" name="Witness2Gender" class="" id="Other" value="Other" data-msg="Please Select Your Gender"  />&nbsp;&nbsp;Other
                  <div class="validation"></div>
                  </div>
                  </div>
                  
				 <div class="form-row">
				 Birth Date : 
  				  <div class="form-group col-lg-4">
                    <input type="date" name="Witness2BirthDate" class="form-control" id="Witness2BirthDate"  value="<%=resultSet.getString("Witness2BirthDate") %>"  placeholder="Birth Date"    data-msg="Please Select Your Birth Date" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-lg-4">
                    <input type="text" name="Witness2Occupation" class="form-control" id="Witness2Occupation"  value="<%=resultSet.getString("Witness2Occupation") %>"  placeholder="Occupation"   data-msg="Please Enter Occupation" />
                    <div class="validation"></div>
                  </div>
                   </div>
                <div class="form-row">
  				  <div class="form-group col-lg-4">
                    <input type="email" name="Witness2Email" class="form-control" id="Witness2Email"  value="<%=resultSet.getString("Witness2Email") %>"  placeholder="Email ID"   data-msg="Please Enter Email" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-lg-4">
                    <input type="text" name="Witness2contact" class="form-control" id="Witness2contact"  value="<%=resultSet.getString("Witness2contact") %>"  placeholder="Contact Number" data-rule="minlen:10" data-rule="minlen:10" data-msg="Please Enter Contact Number" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-lg-4">
                    <input type="text" name="Witness2Religion" class="form-control" id="Witness2Religion"  value="<%=resultSet.getString("Witness2Religion") %>"  placeholder="Religion"   data-msg="Please Enter Religion" />
                    <div class="validation"></div>
                  </div>
                  </div>
                <div class="form-row">
  				  <div class="form-group col-lg-4">
                    <input type="text" name="Witness2HouseName" class="form-control" id="Witness2HouseName"  value="<%=resultSet.getString("Witness2HouseName") %>"  placeholder="House Name"   data-msg="Please Enter House Name" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-lg-4">
                    <input type="text" name="Witness2HouseNo" class="form-control" id="Witness2HouseNo"  value="<%=resultSet.getString("Witness2HouseNo") %>"  placeholder="House Number"   data-msg="Please Enter House No" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-lg-4">
                    <input type="text" name="Witness2HouseArea" class="form-control" id="Witness2HouseArea"  value="<%=resultSet.getString("Witness2HouseArea") %>"  placeholder="House Area"   data-msg="Please Enter House Area Name" />
                    <div class="validation"></div>
                  </div>
                  </div>
                <div class="form-row">
  				  <div class="form-group col-lg-4">
                    <input type="text" name="Witness2Country" class="form-control" id="Witness2Country"  value="<%=resultSet.getString("Witness2Country") %>"  placeholder="Country Name"   data-msg="Please Enter Country Name" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-lg-4">
                    <input type="text" name="Witness2State" class="form-control" id="Witness2State"  value="<%=resultSet.getString("Witness2State") %>"  placeholder="State Name"   data-msg="Please Enter State Name" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-lg-4">
                    <input type="text" name="Witness2City" class="form-control" id="Witness2City"  value="<%=resultSet.getString("Witness2City") %>"  placeholder="City Name"   data-msg="Please Enter City Name" />
                    <div class="validation"></div>
                  </div>
                  </div>
<div class="form-row">
  				 <div class="form-group col-lg-4">
  				 <div class="title">
					<h4 class="mb-10"><i class="fa fa-circle">&nbsp;Witness3 Information</h4></i>
				</div>
				</div>
				</div>
				<div class="form-row">
				<div class="form-group col-lg-3">
                    <input type="text" name="Witness3Salutation" class="form-control" id="Witness3Salutation"  value="<%=resultSet.getString("Witness3Salutation") %>"  placeholder="Salutation"   data-msg="Please Enter Your Salutation" />
                    <div class="validation"></div>
                  </div>
  				  <div class="form-group col-lg-3">
                    <input type="text" name="Witness3FirstName" class="form-control" id="Witness3FirstName"  value="<%=resultSet.getString("Witness3FirstName") %>"  placeholder="First Name"   data-msg="Please Enter Your First Name" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-lg-3">
                    <input type="text" name="Witness3MiddleName" class="form-control" id="Witness3MiddleName"  value="<%=resultSet.getString("Witness3MiddleName") %>"  placeholder="Middle Name"   data-msg="Please Enter Your Middle Name" />
                    <div class="validation"></div>
                  </div>
                <div class="form-group col-lg-3">
                    <input type="text" name="Witness3LastName" class="form-control" id="Witness3LastName"  value="<%=resultSet.getString("Witness3LastName") %>"  placeholder="Last Name"   data-msg="Please Enter Your Last Name" />
                    <div class="validation"></div>
                  </div>
                  </div>
                  <div class="form-row">
                  
               		<h5> Gender :</h5>
                   <div class="form-group col-lg-4">
                    <input type="radio" name="Witness3Gender" class="" id="Male" value="Male"  />&nbsp;&nbsp;Male
                    <input type="radio" name="Witness3Gender" class="" id="Female" value="Female" />&nbsp;&nbsp;Female
                    <input type="radio" name="Witness3Gender" class="" id="Other" value="Other" data-msg="Please Select Your Gender"  />&nbsp;&nbsp;Other
                  <div class="validation"></div>
                  </div>
                  </div>
                  
				 <div class="form-row">
				 Birth Date : 
  				  <div class="form-group col-lg-4">
                    <input type="date" name="Witness3BirthDate" class="form-control" id="Witness3BirthDate"  value="<%=resultSet.getString("Witness3BirthDate") %>"  placeholder="Birth Date"    data-msg="Please Select Your Birth Date" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-lg-4">
                    <input type="text" name="Witness3Occupation" class="form-control" id="Witness3Occupation"  value="<%=resultSet.getString("Witness3Occupation") %>"  placeholder="Occupation"   data-msg="Please Enter Occupation" />
                    <div class="validation"></div>
                  </div>
                   </div>
                <div class="form-row">
  				  <div class="form-group col-lg-4">
                    <input type="email" name="Witness3Email" class="form-control" id="Witness3Email"  value="<%=resultSet.getString("Witness3Email") %>"  placeholder="Email ID"   data-msg="Please Enter Email" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-lg-4">
                    <input type="text" name="Witness3contact" class="form-control" id="Witness3contact"  value="<%=resultSet.getString("Witness3contact") %>"  placeholder="Contact Number" data-rule="minlen:10"  data-msg="Please Enter Contact Number" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-lg-4">
                    <input type="text" name="Witness3Religion" class="form-control" id="Witness3Religion"  value="<%=resultSet.getString("Witness3Religion") %>"  placeholder="Religion"   data-msg="Please Enter Religion" />
                    <div class="validation"></div>
                  </div>
                  </div>
                <div class="form-row">
  				  <div class="form-group col-lg-4">
                    <input type="text" name="Witness3HouseName" class="form-control" id="Witness3HouseName"  value="<%=resultSet.getString("Witness3HouseName") %>"  placeholder="House Name"   data-msg="Please Enter House Name" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-lg-4">
                    <input type="text" name="Witness3HouseNo" class="form-control" id="Witness3HouseNo"  value="<%=resultSet.getString("Witness3HouseNo") %>"  placeholder="House Number"   data-msg="Please Enter House No" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-lg-4">
                    <input type="text" name="Witness3HouseArea" class="form-control" id="Witness3HouseArea"  value="<%=resultSet.getString("Witness3HouseArea") %>"  placeholder="House Area"   data-msg="Please Enter House Area Name" />
                    <div class="validation"></div>
                  </div>
                  </div>
                <div class="form-row">
  				  <div class="form-group col-lg-4">
                    <input type="text" name="Witness3Country" class="form-control" id="Witness3Country"  value="<%=resultSet.getString("Witness3Country") %>"  placeholder="Country Name"   data-msg="Please Enter Country Name" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-lg-4">
                    <input type="text" name="Witness3State" class="form-control" id="Witness3State"  value="<%=resultSet.getString("Witness3State") %>"  placeholder="State Name"   data-msg="Please Enter State Name" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-lg-4">
                    <input type="text" name="Witness3City" class="form-control" id="Witness3City"  value="<%=resultSet.getString("Witness3City") %>"  placeholder="City Name"   data-msg="Please Enter City Name" />
                    <div class="validation"></div>
                  </div>
                  </div>
                
                <div class="text-center">
                <button class="cancelbtn" style="background:#007bff;"><a href="MarraigeCertificate.jsp?Id=<%=resultSet.getString("id") %>" style="color:white;" target="blank"> Generate Certificate</a></button>
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