<?php
session_start();
    $coopidd =$_SESSION['id']; 
    $myname= $_SESSION['namy'];  
    $hmal =$_SESSION['hmal'];
    $mymal =$_SESSION['mymal'];
    $cnamey =$_SESSION['coop'];
        /*
        $coopidd = $_SESSION['id'];
        $myname= $_SESSION['namy'];
        $hmail= $_SESSION['hmal'];
        $mymal =$_SESSION['mymal'];
       $coopaddres= $_SESSION['addy'];
        $coopname= $_SESSION['lame'];
*/
     if ($mymal == ""){header("Location:logout.php");}

     $resultt = mysqli_query($conn, "SELECT * FROM adminlogin WHERE emal = '$mymal'");
      $komo = mysqli_num_rows($resultt);

    if ($komo != 1){header("Location:logout.php");}
                
             while($get_info = mysqli_fetch_assoc($resultt)){ // Start looping table row 
                                         $myfull = $get_info['fulln'];
                                         $myrole = $get_info['rolez'];
                                         $myhpazz = $get_info['hpazz'];
                                       
               } 

               $resuk = mysqli_query($conn, "SELECT * FROM basik WHERE cmal = '$mymal'");
       while($get_info = mysqli_fetch_assoc($resuk)){ // Start looping table row 
             $cname = $get_info['cname'];
             $cmal = $get_info['cmal'];
             $cfon = $get_info['cfon'];
             $addy = $get_info['addy'];
             $logozz = $get_info['logoz'];
                                         
                                       
               }          
   

?>