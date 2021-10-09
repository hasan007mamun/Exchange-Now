<?php 
	
	$p_name = $_POST['name_entry'];
	$p_mail = $_POST['email_entry'];
	$p_add = $_POST['address_entry'];
	$p_phn = $_POST['phn_entry'];

	require_once('../db_config.php');

	$sql = "Insert into delivery (CUST_NAME, CUST_EMAIL, ORDER_DELIVER_ADDRESS, CONTACT_NUMBER) VALUES ('$p_name', '$p_mail', 
	'$p_add','$p_phn')";

	$conn = new mysqli($servername, $username, $password, $dbname);

	$result = $conn->query($sql);

	if (!$result)
	{
		echo "Error during insertion!<br>";          
		echo mysqli_error($conn);
	}
	else
	{
		echo "Your Home Delivery request is accepted . <br>";
		echo "We Will update your product condition via mail or contact number. Thank you for staying with us!!<br> <br> <br>";
	}

	$conn->close();


	echo "<a href='../index.php'>Back</a><br>"; 
	echo "<a href='tracking.html'>Track Delivery</a>";
	 

?>