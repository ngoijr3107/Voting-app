<?php
$time = $_SERVER['REQUEST_TIME'];



$timeout_duration = 60;

if (isset($_SESSION['LAST_ACTIVIY'])) &&

($time - $_SESSION['LAST_ACTIVIY']) > $timeout_duration) {

header('location: logout.php');
	// session_unset();
	// session_destroy();
	// session_start();
	# code...
}


$_SESSION['LAST_ACTIVIY'] = $time;


header('location: logout.php');




?>