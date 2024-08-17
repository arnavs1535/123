<?php
/*********************

**** CPanel ******************
*********/

/* Following code will match admin login credentials */

//user temp array
$response = array();

// include db connect class
require_once __DIR__ . '/db_connect.php';

// connecting to db


$result = mysqli_query($conn,"SELECT * FROM myorder ");

if(mysqli_num_rows($result))
{
	$response["alldetails"] = array();	

	while($Alldetails = mysqli_fetch_array($result))
	{
		// temp user array
		$alldetails = array();
		$alldetails = $Alldetails;
		array_push($response["alldetails"],$alldetails);
	}	
	$response["success"] = 1;
	echo json_encode($response);

}
else
{
	$response["success"] = 0;	
	echo json_encode($response);
}
	

?>