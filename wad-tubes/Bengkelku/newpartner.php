<?php 
    if(!isset($_SESSION)) 
    { 
        session_start(); 
    } 
    

    $connection= mysqli_connect('localhost','root','','bengkelku');
    $msg= "" ;
    
    if(isset($_POST['submit'])){
        $alamat= $_POST['alamat'];
        $name= $_POST['partname'];
        $description= $_POST['partdescription'];
        $photo= $_FILES['file']['name'];
        
        //image Upload
    
        move_uploaded_file($_FILES['file']['tmp_name'],"partner picture/".$_FILES['file']['name']); 
        
        
        //move_uploaded_file($_FILES['file']['tmp_name'],"picture/".$_FILES['file']['name']); 
        $res=false;
        $insert_query="INSERT INTO `partner`(`part_id`, `part_alamat`, `part_name`, `part_desc`, `part_photo`) VALUES ('','$alamat','$name','$description','$photo')";
        
        $res= mysqli_query($connection,$insert_query);
            
        if($res==true){
            $msg= "<script language='javascript'>
                                       swal(
                                            'Success!',
                                            'Registration Completed!',
                                            'success'
                                            );
				          </script>";
        }
        
    }
    
    //$msg="";

    
        
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>New Partner</title> 
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>  
    
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="sweetalert2/sweetalert2.css">
    <script src="sweetalert2/sweetalert2.min.js"></script>
    
  
 
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
   <link rel="stylesheet" href="animate.css">
    <link rel="stylesheet" href="style.css">
</head>
<body>  
 <?php include 'navbar_admin.php'; ?>
 <br>
  
  
   <div class="container"> 
     <div class="row">
       
        <div class="page-header">
            <h1 style="text-align: center;">New Partner Form </h1>
            <?php echo $msg; ?>
      </div> 
       <div class="col-md-3">
        
         <!--
          <br> 
          <form action="" method="post" enctype="multipart/form-data">
              <div class="input-group">
                  <span class="input-group-addon"><b>Photo</b></span>
                  <input id="drphoto" type="file" class="form-control" name="file"> 

              </div>
              <input type="submit" name="psubmit" class="btn btn-success btn-small">
              
          </form>
           
         -->  
       </div>
        <div class="col-md-6 animated bounceIn"> 
          
           
            
                <br>
            <form class="form-horizontal" action="" method="post" enctype="multipart/form-data">
                
                <div class="input-group">
                  <span class="input-group-addon"><b>Alamat</b></span>
                  <input id="alamat" type="text" class="form-control" name="alamat" placeholder="Alamat">
                </div>
                <br> 
                
                <div class="input-group">
                  <span class="input-group-addon"><b>Nama Partner</b></span>
                  <input id="partname" type="text" class="form-control" name="partname" placeholder="Partner">
                </div>
                <br>
                
                 <div class="input-group">
                  <span class="input-group-addon"><b>Description</b></span>
                     <textarea rows="5" id="draddress" type="text" class="form-control" name="partdescription" placeholder="Deskripsi"> </textarea>
                  
                </div>
                <br>
                
                <!--
                 <div class="input-group">
                  <span class="input-group-addon"><b>Photo</b></span>
                  <input id="vehphoto" type="file" class="form-control" name="file">
                </div>
                <br>
                -->
                <div class="input-group">
                  <span class="input-group-addon"><b>Photo</b></span>
                  <input  type="file" class="form-control" name="file"> 

              </div>
                
                
                 
                
                <div class="input-group">
                  <input type="submit" name="submit" class="btn btn-success">
                  
                </div>

              </form>   
        </div>  
        <div class="col-md-3"></div>
         
     </div>
         
   
    </div> 
    
     
      
    
</body>
</html>