<?php
	include "koneksi.php";

	$username = $_SESSION['user'];
	$result = mysqli_query($conn,"SELECT * FROM profile WHERE username LIKE '".$username."'");
		
	if (!$result) {
		echo 'Could not run query: ' . mysql_error();
		    exit;
	}
	$row = mysqli_fetch_row($result);

	$_SESSION['user'] = $row[0];
	$_SESSION['name'] = $row[1]; 
	$_SESSION['web'] = $row[2]; 
	$_SESSION['bio'] = $row[3]; 
	$_SESSION['email'] = $row[4];
	$_SESSION['phone'] = $row[5]; 
	$_SESSION['gender'] = $row[6];
	$_SESSION['ava'] = $row[7];  
?>