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

$get_cus_id = ($data->cus_id);
$get_field_8 = ($data->field_8);
$get_field_9 = ($data->field_9);
$get_field_10 = ($data->field_10);
$get_field_11 = ($data->field_11);
$get_created_date =date('Y-m-d');

if( empty($get_cus_id) || empty($get_field_8) || empty($get_field_9)|| empty($get_field_10) )
{
	$response["success"] = 2;
	echo json_encode($response);
}
else
{
	$result = mysqli_query($conn,"UPDATE complaint SET field_8='$get_field_8',field_9='$get_field_9',
	field_10='$get_field_10',field_11='$get_field_11' WHERE cus_id = '$get_cus_id'	");

	// check for empty result
	if($result)
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
}
?>