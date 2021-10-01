<?php
    session_start();
    if(isset($_SESSION['admin'])){
      header('location: admin/home.php');
    }

    if(isset($_SESSION['voter'])){
      header('location: home.php');
    }
?>


<!DOCTYPE html>
<html>
<head>
	<title>MoCUASA | OVS - Login</title>
    <link rel="icon" href="images/logo6.png">
	<link rel="stylesheet" type="text/css" href="css/style1.css">
	<link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet">
	<script src="https://kit.fontawesome.com/a81368914c.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<img class="wave" src="images/wave.png">
	<div class="container">
		<div class="img">
			<img src="images/securelogin.svg">
		</div>
		<div class="login-content">
			<form action="login.php" method="POST">
				<img src="images/logo6.png">
				<h2 class="title">Login</h2>
           		<div class="input-div one">
           		   <div class="i">
           		   		<i class="fas fa-user"></i>
           		   </div>
           		   <div class="div">
           		   		<!-- <h5 style="color: #f1f1f1">Check no.</h5> -->
           		   		<input type="text" name="voter" class="input" placeholder="Enter your check no." style="color: #fff;">
           		   </div>
           		</div>
           		<div class="input-div pass">
           		   <div class="i"> 
           		    	<i class="fas fa-lock"></i>
           		   </div>
           		   <div class="div">
           		    	<!-- <h5 style="color: #f1f1f1;">Password</h5> -->
           		    	<input type="password" name="password" class="input" placeholder="Enter your password" style="color: #fff;">
            	   </div>
            	</div>
            	<input type="submit" class="btn" value="Login" name="login">
            </form>
        </div>
    <?php
      if(isset($_SESSION['error'])){
        echo "
          <div class='callout callout-danger text-center mt20'>
            <p>".$_SESSION['error']."</p> 
          </div>
        ";
        unset($_SESSION['error']);
      }
    ?>
    </div>
	<?php include 'includes/scripts.php' ?>
    <script type="text/javascript" src="js/main.js"></script>
    <script language="javascript" type="text/javascript">
        window.history.forward();
    </script>
</body>
</html>
