<?php 
session_start();
require_once("cann.php"); 
//require_once("sexx.php"); 
$acty= $_GET['ml'];

if (isset($_POST['submit'])){  
   $acticode = mysqli_real_escape_string($conn, strip_tags($_POST['acticode']));

   if($acticode == "" ){
    echo "<script type ='text/javascript'>
    alert('Please type the correct code');
     </script>";

}else{
    $jammy = mysqli_query($conn, "SELECT * FROM adminlogin WHERE emal ='$acty'");

	while ($row=mysqli_fetch_assoc($jammy)) {
    $coid= $row['id'];
    $admal = $row['emal'];
    $hlamy = $row['hlame'];
    $adlame = $row['fulln'];
    $coopadd = $row['coopaddress'];
    $cooplamy = $row['cooplame'];
}

	$rows = mysqli_num_rows($jammy);
	if ($rows == 1){
    $daddy = mysqli_query($conn, "UPDATE adminlogin SET aktivate = 1, dateaktivate = '$date_reg' WHERE emal = '$acty'");

    $insert1 = mysqli_query($conn, "INSERT INTO basik (coopid, cname, caddy) VALUES ($coid, '$cooplamy', '$coopadd')");  

    echo '<script type="text/javascript">
        alert("Congratulations! You have successfully activted your account ");
        window.location.href="dashboardad.php"
        </script>';

        $coopidd = $_SESSION['id'] = $coid;
        $myname= $_SESSION['namy'] = $adlame;
		$hmail= $_SESSION['hmal'] = $hlamy;
        $mymal= $_SESSION['mymal'] = $admal;
        $cnamey= $_SESSION['coop'] = $cooplamy;
        
    }
  }
}


 ?>

<!DOCTYPE html>
<html lang="en">
    
<!-- Mirrored from dreamguys.co.in/smarthr/orange/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 12 Apr 2020 11:59:26 GMT -->
<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <meta name="description" content="Smarthr - Bootstrap Admin Template">
		<meta name="keywords" content="admin, estimates, bootstrap, business, corporate, creative, management, minimal, modern, accounts, invoice, html5, responsive, CRM, Projects">
        <meta name="author" content="Dreamguys - Bootstrap Admin Template">
        <meta name="robots" content="noindex, nofollow">
        <title>Login - HRMS admin template</title>
		
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
					
					<div class="account-box">
						<div class="account-wrapper">
							<h3 class="account-title">Activate Account</h3>
							<p class="account-subtitle">Access to our dashboard</p>
							
							<!-- Account Form -->
							<form action="" method="post">
								<div class="form-group">
									<label><?php echo $acty; ?></label>
									<input class="form-control" type="text" placeholder="Type Activate code here" name="acticode">
								</div>
								<div class="form-group text-center">
									<button class="btn btn-primary account-btn" type="submit" name="submit">Activate</button>
								</div>
								<div class="account-footer">
									<p>Don't have an account yet? <a href="register.html">Register</a></p>
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

<!-- Mirrored from dreamguys.co.in/smarthr/orange/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 12 Apr 2020 11:59:27 GMT -->
</html>