<?php 
    $connection=mysqli_connect("localhost","root","","bengkelku");

    session_start();
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Bengkelku</title>
    
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
<style>
    
.parallax {
    /* The image used */
    background-image: url("services.jpg");
    height: 100%;

    /* Set a specific height */
    min-height: 700px; 

    /* Create the parallax scrolling effect */
    background-attachment: fixed;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    
    }
    
.parallax1 {
    /* The image used */
    background-image: url("logo.png");
    height: 60%;

    /* Set a specific height */
    min-height: 450px; 

    /* Create the parallax scrolling effect */
    background-attachment: fixed;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    
    } 
    
    .navbar-fixed-top.scrolled {
       background-color: black;
      transition: background-color 200ms linear;
    }

.img-responsive {
    max-width: 100%; 
    display:block; 
    height: auto;
}
</style>
<body data-spy="scroll" data-target=".navbar" data-offset="50" onload="myFunction()"> 
   
   
 
       
    
     
     
     
    
    <div class="parallax foo">
       <?php include 'navbar.php';?>
    
        <div class="hero-text" style="font-size:100px text-align: center; position: absolute;top: 200px; left: 100px; color: white;">
           
            <h1>Selamat Datang Di Bengkelku</h1>
            <p>Melayani semua keluhan kendaraan anda</p>
            
            <?php if(isset($_SESSION['username'])==true) { ?>
            <a class="btn btn-success" style="text-align: center" href="booking.php">Booking Sekarang</a>
            
            <?php } else{  ?>
            <a class="btn btn-success" style="text-align: center" href="login.php">Login untuk Booking</a> 
            <?php } ?>
            
          </div>
    </div>                 
    
    <div>
        
        <br>
        <div id="bus" class="container">
          <div class="page-header">
            <h1 style="text-align: center">Kenapa Harus Bengkelku ?</h1>      
          </div> 
          <div class="page-header">
            <h1 style="font-size:20px;text-align: center">Kebutuhan akan kendaraan khususnya roda dua, memang tidak bisa dipungkiri. Terlebih lagi di kota – kota besar yang aktivitas perekonomiannya bergerak sangat cepat. Antri panjang di bengkel tentu menjadi momok paling menyebalkan bagi anda yang kendaraannya mengalami kerusakan.
            Dengan datang ke bengkel kami, kendaraan anda akan ditangani dengan baik, profesional dan sudah terbukti kualitasnya. Lantas keuntungan apa saja yang bisa anda dapatkan jika menggunakan jasa dari bengkel kami?
            <br>
            <b>1. Harga Pasti Pas</b><br>
            Dengan menggunakan jasa kami, anda akan mendapatkan keuntungan harga yang sudah pasti jelas dan pas tanpa nego–nego lagi yang ujung–ujungnya tetap saja merugikan anda sebagai konsumen. Anda tidak perlu khawatir lagi mendapatkan harga yang kemahalan atau bahkan sampai tertipu.<br>
            <b>2. Mutu dan Kualitas Terjamin Puas</b><br>
            Dengan mutu dan kualitas yang terjamin dan bergaransi dari bengkel kami, dijamin kendaraan anda akan bisa terus berfungsi dengan baik dan nyaman. Untuk itu kami sangat menyarankan kepada anda para pemilik kendaraan untuk melakukan perawatan kendaraan anda secara berkala.<br>
            <b>3. Proses Pengerjaan Cepat</b><br>
            Proses pengerjaan yang sudah menggunakan prosedur jelas dan dilakukan sesuai dengan urutannya, serta fasilitas berupa berbagai peralatan dan mesin yang lengkap dan canggih pasti akan membuat pekerjaam selesai lebih cepat jika dibandingkan dengan pengerjaan yang dilakukan secara asal–asalan
            <br></h1>      
          </div>      
        </div>

        <div id="bus" class="container">
          <div class="page-header">
            <h1 style="text-align: center">About Us</h1>      
          </div> 
          <div class="page-header">
            <img class="img-responsive"src="logo.png" width="600px" height="300px">
            <h1 style="font-size:20px;text-align: center">Bengkelku adalah sebuah website yang menyediakan pelayanan booking service secara online, Bengkelku juga menyediakan sparepart yang terjamin kualitasnya yang dapat dibeli langsung di mitra kami ketika melakukan service motor
            Tujuan kami membuat website ini adalah untuk mempermudah pelanggan untuk melakukan booking service, supaya tidak antri pada saat datang ke bengkel</h1>      
          </div>      
        </div>
          
        </div>
        
        
          
          <p></p>      
                
        </div>  
        
        <footer style="background-color: #2f2f2f;
          color: #fff; padding-top: 20px;
          padding-bottom: 20px;" class="container-fluid text-center">
                <p>E-bengkel by Kelompok 5 WAD SI4201</p> 
        </footer>
        
        
        
        
    
    
    
<script>
    $(function () {
  $(document).scroll(function () {
    var $nav = $(".navbar-fixed-top");
    $a= $(".parallax");
    $nav.toggleClass('scrolled', $(this).scrollTop() > $a.height());
  });
}); 
    
    </script>    
  
  
 
    
</body>
</html>