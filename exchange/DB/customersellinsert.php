<?php 
	
	$p_name = $_POST['name_entry'];
	$p_mail = $_POST['email_entry'];
	$p_type =$_POST['type_entry'];
	$p_des = $_POST['description_entry'];
	$p_add = $_POST['address_entry'];
	$p_phn = $_POST['phn_entry'];
	
	require_once('../db_config.php');

	$sql = "Insert into exchange_history (Product_No, Client_Name, Email, Product_TYPE, Product_Descrption, Pick_UP_ADDRESS, Contact_Number) VALUES (NULL,'$p_name', '$p_mail', '$p_type', '$p_des', '$p_add','$p_phn')";


	$conn = new mysqli($servername, $username, $password, $dbname);

	$result = $conn->query($sql);

	if (!$result)
	{
		echo "Error during insertion!<br>";          
		echo mysqli_error($conn);
	}
	else
	{
		echo "Successfully received your product info. <br>";
		echo "We Will update you within few hours via mail. Thank you for staying with us!!<br> <br> <br>";
	}

	$conn->close();


	echo "<a href='../index.php'>Back</a>";
	 

?>