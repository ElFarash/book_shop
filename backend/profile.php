<?php 
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
<<<<<<< HEAD
header('Access-Control-Allow-Headers: Authorization');
include_once('database\conn.php');
=======
header('Access-Control-Alllow-Headers: Authorization');

>>>>>>> 9eabbbc7af1a5d092067d1f0bb8a5f8cc0e8c18a

$headers = apache_request_headers();
$token = $headers['Authorization'];

$query = "SELECT * FROM users WHERE token='$token' ";
$result = $conn->query($query);
$users = $result->fetch_assoc();

$response = ['status' => 1 , 'info' => $users ];
echo json_encode($response);


 ?>