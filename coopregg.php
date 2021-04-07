<?php 
require_once("cann.php"); 
//require_once("sexx.php"); 

$akode = rand(100000, 999999); 

if (isset($_POST['submit'])){  
   $ademaily = mysqli_real_escape_string($conn, strip_tags($_POST['ademail']));
   $adphoney = mysqli_real_escape_string($conn, strip_tags($_POST['adphone']));
   $adpwdy = mysqli_real_escape_string($conn, strip_tags($_POST['adpwd']));
   $adrpwdy = mysqli_real_escape_string($conn, strip_tags($_POST['adrpwd']));
   $coopnamey = mysqli_real_escape_string($conn, strip_tags($_POST['coopname']));
   $coopaddyy = mysqli_real_escape_string($conn, strip_tags($_POST['coopaddy']));
$actpage = 'activate.php?ml='.$ademaily;
   $pawd = 'Coop'.$adpwdy;
   $adhpawd = md5($pawd); 
   $mally = 'Coop'.$ademaily;
   $hemail = md5($mally);


   $coopy = mysqli_query($conn, "SELECT * FROM coopreggy where admally='$ademaily'");
 	$coope = mysqli_num_rows($coopy);
 
  if($ademaily == "" || $adphoney == "" || $adpwdy == "" || $coopnamey == "" || $coopaddyy == "") {
  	echo '<script type ="text/javascript">alert("please do not submit empty form."")</script>';
  }

 else if (strlen($adpwdy) < 8){
    echo '<script type="text/javascript">
        alert("Your password must be at least 6 characters");
        </script>';
        }
 //checking if password and repeat password are the same
  else if ($adpwdy != $adrpwdy){
    echo '<script type="text/javascript">
        alert("Your password and repeat password are not the same. Please retry.");
        </script>';  
        }
    //check the validity of the email  
  else if(!filter_var($ademaily, FILTER_VALIDATE_EMAIL)){
    echo '<script type="text/javascript">
        alert("The email provided is invalid, please retry.");
        </script>';
    }
    else if ($coope > 0){
      echo'<script type="text/javascript">
     alert("Sorry, this user account already exists");
        </script>'; 
    }

      else{
     $insert1 = mysqli_query($conn, "INSERT INTO coopreggy (admally, adhemally, adfone, adhpassy, cooplame, coopaddress, acode, datereggy) VALUES ('$ademaily', '$hemail', '$adphoney', '$adhpawd', '$coopnamey', '$coopaddyy', '$akode', '$date_reg')");
     echo '<script type="text/javascript">
        alert("submitted successfully");
        window.location.href="'.$actpage.'";
        </script>';
        //echo (header("location:$actpage"));

      
   	}
  }

 ?>

<!DOCTYPE html>
<html lang="en">
    
<!-- Mirrored from dreamguys.co.in/smarthr/orange/register.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 12 Apr 2020 11:59:41 GMT -->
<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <meta name="description" content="Smarthr - Bootstrap Admin Template">
		<meta name="keywords" content="admin, estimates, bootstrap, business, corporate, creative, management, minimal, modern, accounts, invoice, html5, responsive, CRM, Projects">
        <meta name="author" content="Dreamguys - Bootstrap Admin Template">
        <meta name="robots" content="noindex, nofollow">
        <title>Register - HRMS admin template</title>
		
		<!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">
		
		<!-- Bootstrap CSS -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
		
		<!-- Fontawesome CSS -->
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
		
		<!-- Main CSS -->
        <link rel="stylesheet" href="assets/css/style.css">
		
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
			<script src="assets/js/html5shiv.min.js"></script>
			<script src="assets/js/respond.min.js"></script>
		<![endif]-->
    </head>
    <body class="account-page">
	
		<!-- Main Wrapper -->
        <div class="main-wrapper">
			<div class="account-content">
				
				<div class="container">
				
					<!-- Account Logo -->
					<div class="account-logo">
						<a href="index.html"><img src="assets/img/logo2.png" alt="Dreamguy's Technologies"></a>
					</div>
					<!-- /Account Logo -->
					<div class="row"> 
					<div class="col-md-12">
					<div class="account-box">
						<div class="account-wrapper">
							<h3 class="account-title">Register</h3>
							<p class="account-subtitle">Register your Cooperative</p>
							
							<!-- Account Form -->

							<form name="form1" action="" method="post">
								<div class="form-group">
									<label>Admin Email</label>
									<input class="form-control" type="email" name="ademail">
								</div>
								<div class="form-group">
									<label>Phone</label>
									<input class="form-control" type="text" name="adphone">
								</div>
								<div class="form-group">
									<label>Password</label>
									<input class="form-control" type="password" name="adpwd">
								</div>
								<div class="form-group">
									<label>Repeat Password</label>
									<input class="form-control" type="password" name="adrpwd">
								</div>
								<div class="form-group">
									<label>Cooperative Name</label>
									<input class="form-control" type="text" name="coopname">
								</div>
								<div class="form-group">
									<label>Cooperative Address</label>
									<textarea class="form-control" type="text" name="coopaddy"></textarea>
									
								</div>
								<div class="form-group text-center">
									<button class="btn btn-primary account-btn" type="submit" name="submit">Register</button>
								</div>
								<div class="account-footer">
									<p>Already have an account? <a href="login.html">Login</a></p>
								</div>
							</form>
							<!-- /Account Form -->
						</div>
					</div>
				</div>
			</div>
        </div>
		<!-- /Main Wrapper -->
		
		<!-- jQuery -->
        <script src="assets/js/jquery-3.2.1.min.js"></script>
		
		<!-- Bootstrap Core JS -->
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
		
		<!-- Custom JS -->
		<script src="assets/js/app.js"></script>
		
    </body>

<!-- Mirrored from dreamguys.co.in/smarthr/orange/register.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 12 Apr 2020 11:59:41 GMT -->
</html>