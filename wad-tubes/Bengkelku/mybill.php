<?php 
    if(!isset($_SESSION)) 
    {   
        
        session_start(); 
    } 
    
    $username= $_GET['id'];
    //echo $username;
    
    $connection= mysqli_connect('localhost','root','','bengkelku');

    $query= "SELECT booking.booking_id, booking.req_date,booking.`ret_date`, booking.`destination`, booking.`veh_reg`, booking.`driverid`, tripcost.total_km,tripcost.oil_cost, tripcost.extra_cost,tripcost.total_cost,tripcost.paid FROM `booking` LEFT JOIN `tripcost` ON booking.username=tripcost.username WHERE booking.username='$username' AND booking.booking_id=tripcost.booking_id;";

    //echo $query;

    $result= mysqli_query($connection,$query);
    
    
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>My Account</title>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
    <script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
     <script src="https://unpkg.com/scrollreveal/dist/scrollreveal.min.js"></script>
    <link rel="stylesheet" type="text/css" href="./slick/slick.css">
    <link rel="stylesheet" type="text/css" href="./slick/slick-theme.css"> 
   
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="animate.css">
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <?php include 'navbar.php'; ?>
    
    <br>
    <div class="container">
        <div class="row">
            <div class="page-header">
                <h1 style="text-align: center;">My Account</h1>
            </div>
        </div>
        
        
        <div class="col-md-12">
            <table class="table">
                <thead>
                    <tr>
                        <th>Booking Id</th>
                        <th>Nama</th>
                        <th>Alamat</th>
                        <th>Type</th>
                        <th>Tanggal Booking</th>
                        <th>Keluhan</th>
                        <th>Total Biaya</th>
                    </tr>  
                </thead>

                <tbody>
            </table>
        </div>
    </div>
</body>
</html>