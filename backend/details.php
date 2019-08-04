<?php 
include_once('database/conn.php');
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');


if(isset($_GET['id'])){
	$book_id = $_GET['id'];
}else {
  	$response = ['status' => 0 , 'message' => "wrong id was sent" ];
  	echo json_encode($response);
}

$query = "SELECT books.id , books.title , authors.name as author_name, books.rate , authors.description  FROM authors , books WHERE authors.id = books.author_id && books.id = $book_id ORDER by books.id";

$result = $conn->query($query);

$books_authors_details = $result->fetch_assoc();

$response = ['status' => 1 , 'message' => "info of book-author loaded successfully",'books' => $books_authors_details ];
echo json_encode($response);


 ?>