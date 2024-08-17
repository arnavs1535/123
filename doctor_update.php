<?php
/***************************
****  ***
****************************/

/* Following register will admin login credentials */

// array for JSON response
$response = array();

// include db connect class
require_once __DIR__ . '/db_connect.php';

// connecting to db


$data = json_decode(file_get_contents("php://input"));
$get_id= -($data->doctor_id);
$get_name = ($data->name);
$get_category= ($data->category);

$get_hospital = ($data->hospital);
$get_location = ($data->location);
$get_doctor_fee =($data->doctor_fee);
$get_account=($data->account);
$get_email = ($data->email);




// Not working
/*	,slipnum'=$get_slipno'		*/	
	// get customer 
	$result1 = mysqli_query($conn,"UPDATE doctor_list SET
		name='$get_name', category='$get_category', hospital='$get_hospital',
		location='$get_location',doctor_fee='$get_doctor_fee',account='$get_account',
		email='$get_email'
		WHERE doctor_id = '$get_id'");

	// check for empty result
	if($result1)
	{
		// success
		$response["success"] = 1;		
		// echoing JSON response
		echo json_encode($response);
	
	}
	else 
	{
		// unsuccess
		$response["success"] = 0;
		
		// echoing JSON response
		echo json_encode($response);
	}

?>