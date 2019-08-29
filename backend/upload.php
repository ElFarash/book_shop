<?php 

header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: *');
include("classes\connection.php");
include("classes\users.php");
include("classes\books.php");

$objConn = new DbConnect('localhost','ahmed','123456789','books');
$conn = $objConn->connect();
$objBook = new Books($conn);
$objUser = new Users($conn);

$errors=[];
$title = $_POST['title'];
$last_name = $_POST['last_name'];
$rate = $_POST['rate'];
$published_at = $_POST['published_at'];
$book_description = $_POST['book_description'];
$book_image= $_FILES['book_image'];
$book_link = $_FILES['book_link'];



if (strlen($title) == 0) {
    $errors["title"] = 'Missing Title!';
}
if (strlen($rate) == 0) {
    $errors["rate"] = 'Missing Rate!';
}
if (strlen($published_at) == 0) {
    $errors["published_at"] = 'Missing published_at!';
}
if (strlen($book_description) == 0) {
    $errors["book_description"] = 'Missing book_description!';
}



$tmp = explode('.', $_FILES['book_image']['name']);
$fileExt = strtolower(end($tmp));

$allowed= ['jpg', 'jpeg' , 'png'];

if (in_array($fileExt, $allowed)) {
	if( $_FILES['book_image']['error'] === 0 ){
		if($_FILES['book_image']['size']<1000000){
			$fileDestination_image = "images/". $_FILES['book_image']['name'];
			move_uploaded_file( $_FILES['book_image']['tmp_name'] , $fileDestination_image );
		}else{
			$errors['book_image']= "too big image";
		}
	}else{
		$errors['book_image']= "ERROR";
	}
}else {
	$errors['book_image']=  "wrong image type!";
}


$tmp2 = explode('.', $_FILES['book_link']['name']);
$fileExtBook = strtolower(end($tmp2));

$allowed_book= ['pdf'];

if (in_array($fileExtBook, $allowed_book)) {
	if( $_FILES['book_link']['error'] === 0 ){
		if($_FILES['book_link']['size']<55568101){
			$fileDestination_book = "books/". $_FILES['book_link']['name'];
			move_uploaded_file( $_FILES['book_link']['tmp_name'] , $fileDestination_book );
		}else{
			$errors['book_link']=  "too big image";
		}
	}else{
		$errors['book_link']= "ERROR";
	}
}else {
	$errors['book_link']= "wrong book type!";
}



if (!count($errors)) {
	$author_id = $objUser->getIdByName($last_name);
	
	$insert = $objBook->addBook($title , $last_name ,$author_id, $rate , $published_at , $book_description , $fileDestination_image ,
    $fileDestination_book);       
		if ($insert) {
			$response = array('status' => 1, 'message' => 'updated successfully!');
		}else{
			$response = array('status' =>0, 'message' => 'couldnt upload!');
		}
		echo json_encode($response);
}else{
    $response = ['status' => 0 , 'errors' => $errors];
	echo json_encode($response);
}



?>	
	