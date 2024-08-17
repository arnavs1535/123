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

$get_email = ($data->email);
$get_sym = ($data->field_1);
$get_field_2 = ($data->field_2);
$get_field_3 = ($data->field_3);
$get_field_4 = ($data->field_4);
$get_field_5 = ($data->field_5);
$get_field_6 = ($data->field_6);



if( empty($get_sym)  || empty($get_field_2) || empty($get_field_3) ||
	empty($get_field_4) || empty($get_field_5) )
{
	$response["success"] = 2;
	echo json_encode($response);
}

else if (strlen($get_field_6) != 10) 
{
	$response["success"] = 3;
	echo json_encode($response);
}
else
{
	$result = mysqli_query($conn,"INSERT INTO doctor_list( email, name,category,hospital, location, doctor_fee,account)
					VALUES(	'$get_email','$get_sym','$get_field_2','$get_field_3','$get_field_4','$get_field_5',
					'$get_field_6')");

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