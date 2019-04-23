<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
.Message
{
   position: fixed;
 right: 100%px;
 margin-top: 44px;
  /* display: block; */
  font-size: 11px;
  color: #ff0000; }
 
	
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
	<meta name="author" content="colorlib.com">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
     <!-- Font Icon -->
    <link rel="stylesheet" href="Wizard/fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="Wizard/css/style.css">
    
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
	<link rel="stylesheet" type="text/css" href="Wizard/css/roboto-font.css">
	<link rel="stylesheet" type="text/css" href="Wizard/fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">
	<!-- datepicker -->
	<link rel="stylesheet" type="text/css" href="Wizard/css/jquery-ui.min.css">
	<!-- Main Style Css -->
    <link rel="stylesheet" href="Wizard/css/style.css"/>
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
        <a href="#intro" class="scrollto"><img src="img/logo.png" alt="" class="img-fluid"></a>
      </div>

    <nav class="main-nav float-right d-none d-lg-block">
        <ul>
          <li class="active"><a href="#intro">Home</a></li>
          <li><a href="#services">Services</a></li>
          <li><a href="#portfolio">Gallery</a></li>
         <li><a href="#contact">Contact Us</a></li>
         <li><a href="#about">About Us</a></li>
          <li><a href="index.jsp">Logout</a></li>
        </ul>
      </nav><!-- .main-nav -->
        
    </div>
  </header><!-- #header -->
  <!--==========================
    Intro Section
  ============================-->
  <section id="intro" class="clearfix" style="margin-top: -73px;">
    <div class="container" style="width: 100%;">
    <form method="POST" action="MarriageCertificate" id="signup-form" class="signup-form">
                <h3>
                    <span class="title_text">Husband Infomation</span>
                </h3>
                <fieldset style="padding-top: 25px;">
                    <div class="fieldset-content" style="height: 435px;">
                        <div class="form-group">
                        	<select name="HusbandSalutation" id="HusbandSalutation" style="width:70px;padding-left: 0px;padding-right: 0px;">
                                <option value="">Ms/Mrs</option>
                                <option value="MS">Ms</option>
                                <option value="MRS">Mrs</option>
                            </select>
                            <input type="text" name="HusbandFirstName" id="HusbandFirstName" placeholder="Enter First Name" />
                        	<input type="text" name="HusbandMiddleName" id="HusbandMiddleName" placeholder="Enter Middle Name" />
                        	<input type="text" name="HusbandLastName" id="HusbandLastName" placeholder="Enter Last Name" />
                        	</div>
                       <div class="form-group">
                            <div class="form-radio" style=" margin-bottom: 0px;margin-left: -105px;">
                            <label for="gender" class="form-label">Gender</label>
                            <div class="form-radio-item">
                                <input type="radio" name="HusbandGender" value="male" id="male" checked="checked" required />
                                <label for="male">Male</label>
    
                                <input type="radio" name="HusbandGender" value="female" id="female" />
                                <label for="female">Female</label>
                            </div>
                        </div>
     					 <label for="gender" class="form-label" style="margin-left:-21px;margin-right: px;">Birth Date</label>
                            <input type="date" name="HusbandBirthDate" id="HusbandBirthDate" placeholder="Select Birth Date" style="padding: 15px 20px;" />
                        	 <input type="text" name="HusbandOccupation" id="HusbandOccupation" placeholder="Enter Occupation" />
                        	</div>
                       <div class="form-group">
                        	<input type="text" name="HusbandEmail" id="HusbandEmail" placeholder=" Enter Your Email" style=""/>
                        	<input type="text" name="Husbandcontact" id="Husbandcontact" placeholder="Enter Contact Number" style="padding: 15px 20px;"/>
                        	<input type="text" name="HusbandReligion" id="HusbandReligion" placeholder="Enter Religion" style="padding: 15px 20px;"/>
                        </div>
                        <label style="color:blue;font-size:15px"><b>Residential Address</b></label>
                        <div class="form-group">
                            <input type="text" name="HusbandHouseName" id="HusbandHouseName" placeholder="Enter House Name" />
                        	<input type="text" name="HusbandHouseNo" id="HusbandHouseNo" placeholder="Enter House Number" />
                        	<input type="text" name="HusbandHouseArea" id="HusbandHouseArea" placeholder="Enter Area" />
                        </div>
                        <div class="form-group">
                            <input type="text" name="HusbandCountry" id="HusbandCountry" placeholder="Enter Country " />
                        	<input type="text" name="HusbandState" id="HusbandState" placeholder="Enter State " />
                        	<input type="text" name="HusbandCity" id="HusbandCity" placeholder="Enter City" />
                        </div>
                        
                    </div>
                    <div class="fieldset-footer">
                        <span>Step 1 of 5</span>
                    </div>
                </fieldset>

                <h3>
                    <span class="title_text">Wife Information</span>
                </h3>
				            <fieldset style="padding-top: 25px;">
                    <div class="fieldset-content" style="height: 435px;">
                            <div class="form-group">
                        	<select name="WifeSalutation" id="WifeSalutation" style="width:70px;padding-left: 0px;padding-right: 0px;">
                                <option value="">Ms/Mrs</option>
                                <option value="MS">Ms</option>
                                <option value="MRS">Mrs</option>
                            </select>
                            <input type="text" name="WifeFirstName" id="WifeFirstName" placeholder="Enter First Name" />
                        	<input type="text" name="WifeMiddleName" id="WifeMiddleName" placeholder="Enter Middle Name" />
                        	<input type="text" name="WifeLastName" id="WifeLastName" placeholder="Enter Last Name" />
                        	</div>
                       <div class="form-group">
                            <div class="form-radio" style=" margin-bottom: 0px;margin-left: -105px;">
                            <label for="gender" class="form-label">Gender</label>
                            <div class="form-radio-item">
                                <input type="radio" name="WifeGender" value="male" id="male"  />
                                <label for="male">Male</label>
    
                                <input type="radio" name="WifeGender" value="female" id="female" checked="checked" required />
                                <label for="female">Female</label>
                            </div>
                        </div>
     					 <label for="gender" class="form-label" style="margin-left:-25px;margin-right: px;">Birth Date</label>
                            <input type="date" name="WifeBirthDate" id="WifeBirthDate" placeholder="Select Birth Date" style="padding: 15px 20px;" />
                        	 <input type="text" name="WifeOccupation" id="WifeOccupation" placeholder="Enter Occupation" />
                        	</div>
                       <div class="form-group">
                        	<input type="text" name="WifeEmail" id="WifeEmail" placeholder=" Enter Your Email" style=""/>
                        	<input type="text" name="Wifecontact" id="Wifecontact" placeholder="Enter Contact Number" style="padding: 15px 20px;"/>
                        	<input type="text" name="WifeReligion" id="WifeReligion" placeholder="Enter Religion" style="padding: 15px 20px;"/>
                        </div>
                        <label style="color:blue;font-size:16px"><b>Residential Address</b></label>
                        <div class="form-group">
                            <input type="text" name="WifeHouseName" id="WifeHouseName" placeholder="Enter House Name" />
                        	<input type="text" name="WifeHouseNo" id="WifeHouseNo" placeholder="Enter House Number" />
                        	<input type="text" name="WifeHouseArea" id="WifeHouseArea" placeholder="Enter Area" />
                        </div>
                        <div class="form-group">
                            <input type="text" name="WifeCountry" id="WifeCountry" placeholder="Enter Country " />
                        	<input type="text" name="WifeState" id="WifeState" placeholder="Enter State " />
                        	<input type="text" name="WifeCity" id="WifeCity" placeholder="Enter City" />
                        </div>
                        
                    </div>
                    <div class="fieldset-footer">
                        <span>Step 2 of 5</span>
                    </div>
                </fieldset>
				<h3>
                    <span class="title_text">Witness1 Information</span>
                </h3>
				            <fieldset style="padding-top: 25px;">
                    <div class="fieldset-content" style="height: 435px;">
                        <div class="form-group">
                        	<select name="Witness1Salutation" id="Witness1Salutation" style="width:70px;padding-left: 0px;padding-right: 0px;">
                                <option value="">Ms/Mrs</option>
                                <option value="MS">Ms</option>
                                <option value="MRS">Mrs</option>
                            </select>
                            <input type="text" name="Witness1FirstName" id="Witness1FirstName" placeholder="Enter First Name" />
                        	<input type="text" name="Witness1MiddleName" id="Witness1MiddleName" placeholder="Enter Middle Name" />
                        	<input type="text" name="Witness1LastName" id="Witness1LastName" placeholder="Enter Last Name" />
                        	</div>
                       <div class="form-group">
                            <div class="form-radio" style=" margin-bottom: 0px;margin-left: -105px;">
                            <label for="gender" class="form-label">Gender</label>
                            <div class="form-radio-item">
                                <input type="radio" name="Witness1Gender" value="male" id="male" checked="checked" required />
                                <label for="male">Male</label>
    
                                <input type="radio" name="Witness1Gender" value="female" id="female" />
                                <label for="female">Female</label>
                            </div>
                        </div>
     					 <label for="gender" class="form-label" style="margin-left:-21px;margin-right: px;">Birth Date</label>
                            <input type="date" name="Witness1BirthDate" id="Witness1BirthDate" placeholder="Select Birth Date" style="padding: 15px 20px;" />
                        	 <input type="text" name="Witness1Occupation" id="Witness1Occupation" placeholder="Enter Occupation" />
                        	</div>
                       <div class="form-group">
                        	<input type="text" name="Witness1Email" id="Witness1Email" placeholder=" Enter Your Email" style=""/>
                        	<input type="text" name="Witness1contact" id="Witness1contact" placeholder="Enter Contact Number" style="padding: 15px 20px;"/>
                        	<input type="text" name="Witness1Religion" id="Witness1Religion" placeholder="Enter Religion" style="padding: 15px 20px;"/>
                        </div>
                        <label style="color:blue;font-size:16px"><b>Residential Address</b></label>
                        <div class="form-group">
                            <input type="text" name="Witness1HouseName" id="Witness1HouseName" placeholder="Enter House Name" />
                        	<input type="text" name="Witness1HouseNo" id="Witness1HouseNo" placeholder="Enter House Number" />
                        	<input type="text" name="Witness1HouseArea" id="Witness1HouseArea" placeholder="Enter Area" />
                        </div>
                        <div class="form-group">
                            <input type="text" name="Witness1Country" id="Witness1Country" placeholder="Enter Country " />
                        	<input type="text" name="Witness1State" id="Witness1State" placeholder="Enter State " />
                        	<input type="text" name="Witness1City" id="Witness1City" placeholder="Enter City" />
                        </div>
                        
                    </div>
                    <div class="fieldset-footer">
                        <span>Step 3 of 5</span>
                    </div>
                </fieldset>
                <h3>
                    <span class="title_text">Witness2 Details</span>
                </h3>
				<fieldset style="padding-top: 25px;">
                    <div class="fieldset-content" style="height: 370px;">
                        <div class="form-group">
                        	<select name="Witness2Salutation" id="Witness2Salutation" style="width:70px;padding-left: 0px;padding-right: 0px;">
                                <option value="">Ms/Mrs</option>
                                <option value="MS">Ms</option>
                                <option value="MRS">Mrs</option>
                            </select>
                            <input type="text" name="Witness2FirstName" id="Witness2FirstName" placeholder="Enter First Name" />
                        	<input type="text" name="Witness2MiddleName" id="Witness2MiddleName" placeholder="Enter Middle Name" />
                        	<input type="text" name="Witness2LastName" id="Witness2LastName" placeholder="Enter Last Name" />
                        	</div>
                       <div class="form-group">
                            <div class="form-radio" style=" margin-bottom: 0px;margin-left: -105px;">
                            <label for="gender" class="form-label">Gender</label>
                            <div class="form-radio-item">
                                <input type="radio" name="Witness2Gender" value="male" id="male" checked="checked" required />
                                <label for="male">Male</label>
    
                                <input type="radio" name="Witness2Gender" value="female" id="female" />
                                <label for="female">Female</label>
                            </div>
                        </div>
     					 <label for="gender" class="form-label" style="margin-left:-21px;margin-right: px;">Birth Date</label>
                            <input type="date" name="Witness2BirthDate" id="Witness2BirthDate" placeholder="Select Birth Date" style="padding: 15px 20px;" />
                        	 <input type="text" name="Witness2Occupation" id="Witness2Occupation" placeholder="Enter Occupation" />
                        	</div>
                       <div class="form-group">
                        	<input type="text" name="Witness2Email" id="Witness2Email" placeholder=" Enter Your Email" style=""/>
                        	<input type="text" name="Witness2contact" id="Witness2contact" placeholder="Enter Contact Number" style="padding: 15px 20px;"/>
                        	<input type="text" name="Witness2Religion" id="Witness2Religion" placeholder="Enter Religion" style="padding: 15px 20px;"/>
                        </div>
                        <label style="color:blue;font-size:16px"><b>Residential Address</b></label>
                        <div class="form-group">
                            <input type="text" name="Witness2HouseName" id="Witness2HouseName" placeholder="Enter House Name" />
                        	<input type="text" name="Witness2HouseNo" id="Witness2HouseNo" placeholder="Enter House Number" />
                        	<input type="text" name="Witness2HouseArea" id="Witness2HouseArea" placeholder="Enter Area" />
                        </div>
                        <div class="form-group">
                            <input type="text" name="Witness2Country" id="Witness2Country" placeholder="Enter Country " />
                        	<input type="text" name="Witness2State" id="Witness2State" placeholder="Enter State " />
                        	<input type="text" name="Witness2City" id="Witness2City" placeholder="Enter City" />
                        </div>
                        
                    </div>
                    <div class="fieldset-footer">
                        <span>Step 4 of 5</span>
                    </div>
                 </fieldset>
                <h3>
                    <span class="title_text">Witness3 Details</span>
                </h3>
              
                           <fieldset style="padding-top: 25px;">
                    <div class="fieldset-content" style="height: 435px;">
                        <div class="form-group">
                        	<select name="Witness3Salutation" id="Witness3Salutation" style="width:70px;padding-left: 0px;padding-right: 0px;">
                                <option value="">Ms/Mrs</option>
                                <option value="MS">Ms</option>
                                <option value="MRS">Mrs</option>
                            </select>
                            <input type="text" name="Witness3FirstName" id="Witness3FirstName" placeholder="Enter First Name" />
                        	<input type="text" name="Witness3MiddleName" id="Witness3MiddleName" placeholder="Enter Middle Name" />
                        	<input type="text" name="Witness3LastName" id="Witness3LastName" placeholder="Enter Last Name" />
                        	</div>
                       <div class="form-group">
                            <div class="form-radio" style=" margin-bottom: 0px;margin-left: -105px;">
                            <label for="gender" class="form-label">Gender</label>
                            <div class="form-radio-item">
                                <input type="radio" name="Witness3Gender" value="male" id="male" checked="checked" required />
                                <label for="male">Male</label>
    
                                <input type="radio" name="Witness3Gender" value="female" id="female" />
                                <label for="female">Female</label>
                            </div>
                        </div>
     					 <label for="gender" class="form-label" style="margin-left:-21px;margin-right: px;">Birth Date</label>
                            <input type="date" name="Witness3BirthDate" id="Witness3BirthDate" placeholder="Select Birth Date" style="padding: 15px 20px;" />
                        	 <input type="text" name="Witness3Occupation" id="Witness3Occupation" placeholder="Enter Occupation" />
                        	</div>
                       <div class="form-group">
                        	<input type="text" name="Witness3Email" id="Witness3Email" placeholder=" Enter Your Email" style=""/>
                        	<input type="text" name="Witness3contact" id="Witness3contact" placeholder="Enter Contact Number" style="padding: 15px 20px;"/>
                        	<input type="text" name="Witness3Religion" id="Witness3Religion" placeholder="Enter Religion" style="padding: 15px 20px;"/>
                        </div>
                        <label style="color:blue;font-size:16px"><b>Residential Address</b></label>
                        <div class="form-group">
                            <input type="text" name="Witness3HouseName" id="Witness3HouseName" placeholder="Enter House Name" />
                        	<input type="text" name="Witness3HouseNo" id="Witness3HouseNo" placeholder="Enter House Number" />
                        	<input type="text" name="Witness3HouseArea" id="Witness3HouseArea" placeholder="Enter Area" />
                        </div>
                        <div class="form-group">
                            <input type="text" name="Witness3Country" id="Witness3Country" placeholder="Enter Country " />
                        	<input type="text" name="Witness3State" id="Witness3State" placeholder="Enter State " />
                        	<input type="text" name="Witness3City" id="Witness3City" placeholder="Enter City" />
                        </div>
                        
                    </div>
                    <div class="fieldset-footer">
                        <span>Step 5 of 5</span>
                    </div>
                </fieldset>
            </form>
    
 </div>

    </div>
  </section><!-- #intro -->

  <main id="main">

    <!--==========================
      About Us Section
    ============================-->
    <section id="about">
      <div class="container" style="width: 1200px;">

        <header class="section-header">
          <h3>About Us</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
        </header>

        <div class="row about-container">

          <div class="col-lg-6 content order-lg-1 order-2">
            <p>
              Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
            </p>

            <div class="icon-box wow fadeInUp">
              <div class="icon"><i class="fa fa-shopping-bag"></i></div>
              <h4 class="title"><a href="">Eiusmod Tempor</a></h4>
              <p class="description">Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi</p>
            </div>

            <div class="icon-box wow fadeInUp" data-wow-delay="0.2s">
              <div class="icon"><i class="fa fa-photo"></i></div>
              <h4 class="title"><a href="">Magni Dolores</a></h4>
              <p class="description">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>
            </div>

            <div class="icon-box wow fadeInUp" data-wow-delay="0.4s">
              <div class="icon"><i class="fa fa-bar-chart"></i></div>
              <h4 class="title"><a href="">Dolor Sitema</a></h4>
              <p class="description">Minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat tarad limino ata</p>
            </div>

          </div>

          <div class="col-lg-6 background order-lg-2 order-1 wow fadeInUp">
            <img src="img/about-img.svg" class="img-fluid" alt="">
          </div>
        </div>

        <div class="row about-extra">
          <div class="col-lg-6 wow fadeInUp">
            <img src="img/about-extra-1.svg" class="img-fluid" alt="">
          </div>
          <div class="col-lg-6 wow fadeInUp pt-5 pt-lg-0">
            <h4>Voluptatem dignissimos provident quasi corporis voluptates sit assumenda.</h4>
            <p>
              Ipsum in aspernatur ut possimus sint. Quia omnis est occaecati possimus ea. Quas molestiae perspiciatis occaecati qui rerum. Deleniti quod porro sed quisquam saepe. Numquam mollitia recusandae non ad at et a.
            </p>
            <p>
              Ad vitae recusandae odit possimus. Quaerat cum ipsum corrupti. Odit qui asperiores ea corporis deserunt veritatis quidem expedita perferendis. Qui rerum eligendi ex doloribus quia sit. Porro rerum eum eum.
            </p>
          </div>
        </div>

        <div class="row about-extra">
          <div class="col-lg-6 wow fadeInUp order-1 order-lg-2">
            <img src="img/about-extra-2.svg" class="img-fluid" alt="">
          </div>

          <div class="col-lg-6 wow fadeInUp pt-4 pt-lg-0 order-2 order-lg-1">
            <h4>Neque saepe temporibus repellat ea ipsum et. Id vel et quia tempora facere reprehenderit.</h4>
            <p>
             Delectus alias ut incidunt delectus nam placeat in consequatur. Sed cupiditate quia ea quis. Voluptas nemo qui aut distinctio. Cumque fugit earum est quam officiis numquam. Ducimus corporis autem at blanditiis beatae incidunt sunt. 
            </p>
            <p>
              Voluptas saepe natus quidem blanditiis. Non sunt impedit voluptas mollitia beatae. Qui esse molestias. Laudantium libero nisi vitae debitis. Dolorem cupiditate est perferendis iusto.
            </p>
            <p>
              Eum quia in. Magni quas ipsum a. Quis ex voluptatem inventore sint quia modi. Numquam est aut fuga mollitia exercitationem nam accusantium provident quia.
            </p>
          </div>
          
        </div>

      </div>
    </section><!-- #about -->

   <!--==========================
      Services Section
    ============================-->
    <section id="services" class="section-bg">
      <div class="container" style="width:1200px;background:#ecf5ff;">

        <header class="section-header">
          <h3>Services</h3>
          
        </header>

        <div class="row">
 <div class="col-md-6 col-lg-5 offset-lg-1 wow bounceInUp" data-wow-duration="1.4s">
            <div class="box">
              <div class="icon"><i class="ion-ios-analytics-outline" style="color: #ff689b;"></i></div>
              <h4 class="title"><a href="BirthCertificateForm.jsp">Birth Certificate<h6 style="color:blue;">Apply Here</h6></a></h4>
              <p class="description">A birth certificate is a vital record that documents the birth of a child. </p>
            </div>
          </div>
          <div class="col-md-6 col-lg-5 wow bounceInUp" data-wow-duration="1.4s">
            <div class="box">
              <div class="icon"><i class="ion-ios-bookmarks-outline" style="color: #e9bf06;"></i></div>
              <h4 class="title"><a href="MarriageCertificateForm.jsp">Marriage Certificate<h6 style="color:blue;">Apply Here</h6></a></h4>
              <p class="description">Minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat tarad limino ata</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-5 offset-lg-1 wow bounceInUp" data-wow-delay="0.1s" data-wow-duration="1.4s">
            <div class="box">
              <div class="icon"><i class="ion-ios-paper-outline" style="color: #3fcdc7;"></i></div>
              <h4 class="title"><a href="DeathCertificateForm.jsp">Death Certificate<h6 style="color:blue;">Apply Here</h6></a></h4>
              <p class="description">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur</p>
            </div>
          </div>
          <div class="col-md-6 col-lg-5 wow bounceInUp" data-wow-delay="0.1s" data-wow-duration="1.4s">
            <div class="box">
              <div class="icon"><i class="ion-ios-paper-outline" style="color:#41cf2e;"></i></div>
              <h4 class="title"><a href=""></a></h4>
              <p class="description"></p>
            </div>
          </div>
        </div>

      </div>
    </section><!-- #services -->

   
    <!--==========================
      Portfolio Section
    ============================-->
    <section id="portfolio" class="clearfix">
      <div class="container" style="width:1200px;">

        <header class="section-header">
          <h3 class="section-title">GALLERY</h3>
        </header>

        <div class="row">
          <div class="col-lg-12">
            <ul id="portfolio-flters">
              <li data-filter="*" class="filter-active">All</li>
              <li data-filter=".filter-app">App</li>
              <li data-filter=".filter-card">Card</li>
              <li data-filter=".filter-web">Web</li>
            </ul>
          </div>
        </div>

        <div class="row portfolio-container">

          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <div class="portfolio-wrap">
              <img src="img/portfolio/app1.jpg" class="img-fluid" alt="">
              <div class="portfolio-info">
                <h4><a href="#">App 1</a></h4>
                <p>App</p>
                <div>
                  <a href="img/portfolio/app1.jpg" data-lightbox="portfolio" data-title="App 1" class="link-preview" title="Preview"><i class="ion ion-eye"></i></a>
                  <a href="#" class="link-details" title="More Details"><i class="ion ion-android-open"></i></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-web" data-wow-delay="0.1s">
            <div class="portfolio-wrap">
              <img src="img/portfolio/web3.jpg" class="img-fluid" alt="">
              <div class="portfolio-info">
                <h4><a href="#">Web 3</a></h4>
                <p>Web</p>
                <div>
                  <a href="img/portfolio/web3.jpg" class="link-preview" data-lightbox="portfolio" data-title="Web 3" title="Preview"><i class="ion ion-eye"></i></a>
                  <a href="#" class="link-details" title="More Details"><i class="ion ion-android-open"></i></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-app" data-wow-delay="0.2s">
            <div class="portfolio-wrap">
              <img src="img/portfolio/app2.jpg" class="img-fluid" alt="">
              <div class="portfolio-info">
                <h4><a href="#">App 2</a></h4>
                <p>App</p>
                <div>
                  <a href="img/portfolio/app2.jpg" class="link-preview" data-lightbox="portfolio" data-title="App 2" title="Preview"><i class="ion ion-eye"></i></a>
                  <a href="#" class="link-details" title="More Details"><i class="ion ion-android-open"></i></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-card">
            <div class="portfolio-wrap">
              <img src="img/portfolio/card2.jpg" class="img-fluid" alt="">
              <div class="portfolio-info">
                <h4><a href="#">Card 2</a></h4>
                <p>Card</p>
                <div>
                  <a href="img/portfolio/card2.jpg" class="link-preview" data-lightbox="portfolio" data-title="Card 2" title="Preview"><i class="ion ion-eye"></i></a>
                  <a href="#" class="link-details" title="More Details"><i class="ion ion-android-open"></i></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-web" data-wow-delay="0.1s">
            <div class="portfolio-wrap">
              <img src="img/portfolio/web2.jpg" class="img-fluid" alt="">
              <div class="portfolio-info">
                <h4><a href="#">Web 2</a></h4>
                <p>Web</p>
                <div>
                  <a href="img/portfolio/web2.jpg" class="link-preview" data-lightbox="portfolio" data-title="Web 2" title="Preview"><i class="ion ion-eye"></i></a>
                  <a href="#" class="link-details" title="More Details"><i class="ion ion-android-open"></i></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-app" data-wow-delay="0.2s">
            <div class="portfolio-wrap">
              <img src="img/portfolio/app3.jpg" class="img-fluid" alt="">
              <div class="portfolio-info">
                <h4><a href="#">App 3</a></h4>
                <p>App</p>
                <div>
                  <a href="img/portfolio/app3.jpg" class="link-preview" data-lightbox="portfolio" data-title="App 3" title="Preview"><i class="ion ion-eye"></i></a>
                  <a href="#" class="link-details" title="More Details"><i class="ion ion-android-open"></i></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-card">
            <div class="portfolio-wrap">
              <img src="img/portfolio/card1.jpg" class="img-fluid" alt="">
              <div class="portfolio-info">
                <h4><a href="#">Card 1</a></h4>
                <p>Card</p>
                <div>
                  <a href="img/portfolio/card1.jpg" class="link-preview" data-lightbox="portfolio" data-title="Card 1" title="Preview"><i class="ion ion-eye"></i></a>
                  <a href="#" class="link-details" title="More Details"><i class="ion ion-android-open"></i></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-card" data-wow-delay="0.1s">
            <div class="portfolio-wrap">
              <img src="img/portfolio/card3.jpg" class="img-fluid" alt="">
              <div class="portfolio-info">
                <h4><a href="#">Card 3</a></h4>
                <p>Card</p>
                <div>
                  <a href="img/portfolio/card3.jpg" class="link-preview" data-lightbox="portfolio" data-title="Card 3" title="Preview"><i class="ion ion-eye"></i></a>
                  <a href="#" class="link-details" title="More Details"><i class="ion ion-android-open"></i></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-web" data-wow-delay="0.2s">
            <div class="portfolio-wrap">
              <img src="img/portfolio/web1.jpg" class="img-fluid" alt="">
              <div class="portfolio-info">
                <h4><a href="#">Web 1</a></h4>
                <p>Web</p>
                <div>
                  <a href="img/portfolio/web1.jpg" class="link-preview" data-lightbox="portfolio" data-title="Web 1" title="Preview"><i class="ion ion-eye"></i></a>
                  <a href="#" class="link-details" title="More Details"><i class="ion ion-android-open"></i></a>
                </div>
              </div>
            </div>
          </div>

        </div>

      </div>
    </section><!-- #portfolio -->

   
    
    <!--==========================
      Contact Section
    ============================-->
    <section id="contact">
      <div class="container-fluid">

        <div class="section-header">
          <h3>Contact Us</h3>
        </div>

        <div class="row wow fadeInUp">

          <div class="col-lg-6">
            <div class="map mb-4 mb-lg-0">
              <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12097.433213460943!2d-74.0062269!3d40.7101282!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb89d1fe6bc499443!2sDowntown+Conference+Center!5e0!3m2!1smk!2sbg!4v1539943755621" frameborder="0" style="border:0; width: 100%; height: 312px;" allowfullscreen></iframe>
            </div>
          </div>

          <div class="col-lg-6">
            <div class="row">
              <div class="col-md-5 info">
                <i class="ion-ios-location-outline"></i>
                <p>A108 Adam Street, NY 535022</p>
              </div>
              <div class="col-md-4 info">
                <i class="ion-ios-email-outline"></i>
                <p>info@example.com</p>
              </div>
              <div class="col-md-3 info">
                <i class="ion-ios-telephone-outline"></i>
                <p>+1 5589 55488 55</p>
              </div>
            </div>

            <div class="form">
              <div id="sendmessage">Your message has been sent. Thank you!</div>
              <div id="errormessage"></div>
              <form action="" method="post" role="form" class="contactForm">
                <div class="form-row">
                  <div class="form-group col-lg-6">
                    <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                    <div class="validation"></div>
                  </div>
                  <div class="form-group col-lg-6">
                    <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
                    <div class="validation"></div>
                  </div>
                </div>
                <div class="form-group">
                  <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                  <div class="validation"></div>
                </div>
                <div class="form-group">
                  <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
                  <div class="validation"></div>
                </div>
                <div class="text-center"><button type="submit" title="Send Message">Send Message</button></div>
              </form>
            </div>
          </div>

        </div>

      </div>
    </section><!-- #contact -->

  </main>

  <!--==========================
    Footer
  ============================-->
  <footer id="footer">
    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-4 col-md-6 footer-info">
            <h3>NewBiz</h3>
            <p>Cras fermentum odio eu feugiat lide par naso tierra. Justo eget nada terra videa magna derita valies darta donna mare fermentum iaculis eu non diam phasellus. Scelerisque felis imperdiet proin fermentum leo. Amet volutpat consequat mauris nunc congue.</p>
          </div>

          <div class="col-lg-2 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><a href="UserHome.jsp">Home</a></li>
              <li><a href="#">About us</a></li>
              <li><a href="#">Services</a></li>
              <li><a href="#">Terms of service</a></li>
              <li><a href="#">Privacy policy</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-contact">
            <h4>Contact Us</h4>
            <p>
              A108 Adam Street <br>
              New York, NY 535022<br>
              United States <br>
              <strong>Phone:</strong> +1 5589 55488 55<br>
              <strong>Email:</strong> info@example.com<br>
            </p>

            <div class="social-links">
              <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
              <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
              <a href="#" class="instagram"><i class="fa fa-instagram"></i></a>
              <a href="#" class="google-plus"><i class="fa fa-google-plus"></i></a>
              <a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
            </div>

          </div>

          <div class="col-lg-3 col-md-6 footer-newsletter">
            <h4>Our Newsletter</h4>
            <p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna veniam enim veniam illum dolore legam minim quorum culpa amet magna export quem marada parida nodela caramase seza.</p>
            <form action="" method="post">
              <input type="email" name="email"><input type="submit"  value="Subscribe">
            </form>
          </div>

        </div>
      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong>NewBiz</strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!--
          All the links in the footer should remain intact.
          You can delete the links only if you purchased the pro version.
          Licensing information: https://bootstrapmade.com/license/
          Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=NewBiz
        -->
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
      </div>
    </div>
  </footer><!-- #footer -->

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
    <!-- JS -->
    <script src="Wizard/vendor/jquery/jquery.min.js"></script>
    <script src="Wizard/vendor/jquery-validation/dist/jquery.validate.min.js"></script>
    <script src="Wizard/vendor/jquery-validation/dist/additional-methods.min.js"></script>
    <script src="Wizard/vendor/jquery-steps/jquery.steps.min.js"></script>
    <script src="Wizard/vendor/minimalist-picker/dobpicker.js"></script>
    <script src="Wizard/vendor/jquery.pwstrength/jquery.pwstrength.js"></script>
    <script src="Wizard/js/main.js"></script>

</body>
</html>

</body>
</html>