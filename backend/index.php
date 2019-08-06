<?php
include_once('database/conn.php');
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');



$query = "SELECT id , title , rate , author_name , image_path , published_at FROM books ";  // lesa images we keda 
$result = $conn->query($query);
$books = $result->fetch_all(MYSQLI_ASSOC);

$response = ['status' => 1, 'message' => 'all books loaded fine' , 'books'=> $books];
echo json_encode($response);


?>