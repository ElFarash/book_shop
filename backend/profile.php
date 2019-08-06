<?php 

include_once('database\conn.php');
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Alllow-Headers: Authorization');


$headers = apache_request_headers();
$token = $headers['Authorization'];

$query = "SELECT * FROM users WHERE token='$token' ";
$result = $conn->query($query);
$users = $result->fetch_assoc();

$response = ['status' => 1 , 'info' => $users ];
echo json_encode($response);


 ?>