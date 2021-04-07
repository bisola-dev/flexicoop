<?php 
require_once("cann.php"); 
//require_once("sexx.php"); 

$akode = rand(100000, 999999); 

if (isset($_POST['submit'])){  
   $ademaily = mysqli_real_escape_string($conn, strip_tags($_POST['ademail']));
   $adnamey = mysqli_real_escape_string($conn, strip_tags($_POST['adname']));
   $adphoney = mysqli_real_escape_string($conn, strip_tags($_POST['adphone']));
   $adpwdy = mysqli_real_escape_string($conn, strip_tags($_POST['adpwd']));
   $adrpwdy = mysqli_real_escape_string($conn, strip_tags($_POST['adrpwd']));
   $coopnamey = mysqli_real_escape_string($conn, strip_tags($_POST['coopname']));
   $coopaddyy = mysqli_real_escape_string($conn, strip_tags($_POST['coopaddy']));
   $actpage = 'activate.php?ml='.$ademaily;
   $pawd = 'CODED'.$adpwdy;
   $adhpawd = md5($pawd); 
   $mally = 'Coop'.$ademaily;
   $hemail = md5($mally);
		//$pull = 'CODED'.'Abiodun@21';
	 //$pully =md5($pull);



   $coopy = mysqli_query($conn, "SELECT * FROM adminlogin where emal='$ademaily'");
 	$coope = mysqli_num_rows($coopy);
 
  if($ademaily == "" || $adnamey == "" || $adphoney == "" || $adpwdy == "" || $coopnamey == "" || $coopaddyy == "") {
  	echo '<script type ="text/javascript">alert("please do not submit empty form."")</script>';
  }

  else if(!preg_match('/^(?=.*\d)(?=.*[A-Za-z])[0-9A-Za-z!@#$%]{8,12}$/', $adpwdy)){
        echo '<script type="text/javascript">
        alert("please ensure password contains A digit, a lowercase, uppercase and special character and not less than 8 characters.");
        </script>';
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
     $insert1 = mysqli_query($conn, "INSERT INTO adminlogin (fulln, emal, hlame, fon, hpazz, cooplame, coopaddress, rolez, acode, datereggy) VALUES ('$adnamey', '$ademaily', '$hemail', '$adphoney', '$adhpawd', '$coopnamey', '$coopaddyy', 'Admin', '$akode', '$date_reg')");
            
  echo'<script type="text/javascript"> 
    alert("You have successfully registered your cooperative society. Please check your email to login.");
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
    <style type="text/css">
   
/* The message box is shown when the user clicks on the password field */
#message {
  display:none;
  background: #f1f1f1;
  color: #000;
  position: relative;
  padding: 20px;
  margin-top: 10px;
}

#message p {
  padding: 10px 35px;
  font-size: 18px;
}

/* Add a green text color and a checkmark when the requirements are right */
.valid {
  color: green;
}

.valid:before {
  position: relative;
  left: -35px;
  content: "✔";
}

/* Add a red text color and an "x" when the requirements are wrong */
.invalid {
  color: red;
}

.invalid:before {
  position: relative;
  left: -35px;
  content: "✖";
}
</style>
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

							<form action="" method="post">
								<div class="form-group">
									<label>Admin Email</label>
									<input class="form-control" type="email" name="ademail">
								</div>
								<div class="form-group">
									<label>Admin name</label>
									<input class="form-control" type="text" name="adname">
								</div>
								<div class="form-group">
									<label>Admin Phone</label>
									<input class="form-control" type="text" name="adphone">
								</div>
								<div class="form-group">
									<label>Password</label>
									<input class="form-control" type="password" id="psw" name="adpwd" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"  title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters">
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
									<button class="btn btn-primary account-btn" type="submit" name="submit" onclick="allnumericplusminus(document.form1.adpwd)">Register</button>
								</div>
								<div class="account-footer">
									<p>Already have an account? <a href="login.php">Login</a></p>
								</div>
							</form>
							<!-- /Account Form -->
						</div>
						<div id="message">
						  <h3>Password must contain the following:</h3>
						  <p id="letter" class="invalid">A <b>lowercase</b> letter</p>
						  <p id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
						  <p id="number" class="invalid">A <b>number</b></p>
						  <p id="length" class="invalid">Minimum <b>8 characters</b></p>
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

		<script type="text/javascript">
		ar myInput = document.getElementById("psw");
		var letter = document.getElementById("letter");
		var capital = document.getElementById("capital");
		var number = document.getElementById("number");
		var length = document.getElementById("length");

		// When the user clicks on the password field, show the message box
		myInput.onfocus = function() {
		  document.getElementById("message").style.display = "block";
		}

		// When the user clicks outside of the password field, hide the message box
		myInput.onblur = function() {
		  document.getElementById("message").style.display = "none";
		}

		// When the user starts to type something inside the password field
		myInput.onkeyup = function() {
		  // Validate lowercase letters
		  var lowerCaseLetters = /[a-z]/g;
		  if(myInput.value.match(lowerCaseLetters)) {
		    letter.classList.remove("invalid");
		    letter.classList.add("valid");
		  } else {
		    letter.classList.remove("valid");
		    letter.classList.add("invalid");
		}

		  // Validate capital letters
		  var upperCaseLetters = /[A-Z]/g;
		  if(myInput.value.match(upperCaseLetters)) {
		    capital.classList.remove("invalid");
		    capital.classList.add("valid");
		  } else {
		    capital.classList.remove("valid");
		    capital.classList.add("invalid");
		  }

		  // Validate numbers
		  var numbers = /[0-9]/g;
		  if(myInput.value.match(numbers)) {
		    number.classList.remove("invalid");
		    number.classList.add("valid");
		  } else {
		    number.classList.remove("valid");
		    number.classList.add("invalid");
		  }

		  // Validate length
		  if(myInput.value.length >= 8) {
		    length.classList.remove("invalid");
		    length.classList.add("valid");
		  } else {
		    length.classList.remove("valid");
		    length.classList.add("invalid");
		  }
		}
</script>
    </body>

<!-- Mirrored from dreamguys.co.in/smarthr/orange/register.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 12 Apr 2020 11:59:41 GMT -->
</html>