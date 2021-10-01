<?php
	$conn = new mysqli('localhost', 'root', '', 'mocuasa_ovs');

	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	}
	
?>