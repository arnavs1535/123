<?php
/*********************
**** CPanel ******************
*********/

/* Following register will admin login credentials */

// array for JSON response
$response = array();

// include db connect class
require_once __DIR__ . '/db_connect.php';

// connecting to db


$data = json_decode(file_get_contents("php://input"));

$get_id = ($data->payment_id);
$get_email = ($data->email);
$get_field_4 = ($data->field_4);
$get_field_5 = ($data->field_5);
$get_field_6 = ($data->field_6);
$get_field_7 = ($data->field_7);



if(empty($get_id) || empty($get_email) || empty($get_field_4) || empty($get_field_5) || empty($get_field_6) 
	|| empty($get_field_7) )
{
	$response["success"] = 2;
	echo json_encode($response);
}
else
{
	$result = mysqli_query($conn,"INSERT INTO payment(field_1,email,field_4,field_5, field_6,field_7)
					VALUES('$get_id','$get_email', '$get_field_4', '$get_field_5', '$get_field_6','$get_field_7')");

	// check for empty result
	if($result)
	{
		// success
		$response["success"] = 1;		
		
		echo json_encode($response);
		
	}
	else 
	{
		// unsuccess
		$response["success"] = 0;		
		// echoing JSON response
		echo json_encode($response);
	}
}
?>