<?php 
include_once('database/conn.php');
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');
 

if(isset($_GET['id'])){
	$book_id = $_GET['id'];
}else {
  	$response = ['status' => 0 , 'message' => "wrong id was sent" ];
  	echo json_encode($response);
}

$query = "SELECT books.id , books.url , books.image_path , books.title , books.rate , authors.image as author_image , authors.name as author_name, authors.description  as author_bio , books.description as book_description 
FROM authors , books , book_gallery
WHERE  books.id = $book_id && authors.id = books.author_id && books.id = book_gallery.book_id
ORDER by books.id";

$result = $conn->query($query);
$books_authors_details = $result->fetch_all(MYSQLI_ASSOC);

$headers = apache_request_headers();
$token = isset($headers['Authorization']) ? $headers['Authorization'] : '';     // condition ? action if ture : action if false 

$images = [];
$book_info = [];
$flag = 1; 

foreach ($books_authors_details as $book) {
	array_push($images, $book['image_path']);
}

array_push($book_info, $books_authors_details[0]);
unset($book_info[0]['image_path']);


if ($token == '') {
	$flag = 0 ;
}else {
	$query = "SELECT COUNT(*) AS K FROM USERS WHERE token='$token' ";
	$result = $conn->query($query);
	$row = $result->fetch_assoc();
	$K = $row['K'];
	if (intval($K) != 1 ) {      
		$flag = 0; 
	}
}

if($flag == 0 ){
	$book_info[0]['url'] = "";
}


$response = ['status' => 1 , 'message' => "Book's Info Loaded successfully!" ,'book_info' => $book_info[0] , 'book_images' => $images];
echo json_encode($response);


 ?>