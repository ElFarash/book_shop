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

$query = "SELECT books.id, books.image_path , books.title , authors.image as author_image , authors.name as author_name, books.rate , authors.description  as author_bio , books.description as book_description 
FROM authors , books , book_gallery
WHERE authors.id = books.author_id && books.id = $book_id && books.id = book_gallery.book_id
ORDER by books.id";

$result = $conn->query($query);
$books_authors_details = $result->fetch_all(MYSQLI_ASSOC);

$images = [];
foreach ($books_authors_details as $book) {
	array_push($images, $book['image_path']);
}

$book_info = [];
array_push($book_info, $books_authors_details[0]);
unset($book_info[0]['image_path']);


$response = ['status' => 1 , 'message' => "Book's Info Loaded successfully!" ,'Book_Info' => $book_info[0] , 'Book_Images' => $images];
echo json_encode($response);


 ?>