<?php 

include_once('database\conn.php');

$title = $_POST['title'];



$file = $_FILES['book_image'];
print_r($file);


$fileExt = strtolower(end(explode(".", $_FILES['book_image']['name'])));

$allowed= ['jpg', 'jpeg' , 'png'];

if (in_array($fileExt, $allowed)) {
	if( $_FILES['book_image']['error'] === 0 ){
		if($_FILES['book_image']['size']<1000000){
			$fileDestination = "web/". $_FILES['book_image']['name'];
			move_uploaded_file( $_FILES['book_image']['tmp_name'] , $fileDestination );
			$sql = "INSERT INTO books (title , image_path) VALUES ('$title' , '$fileDestination' ) ;  ";
      		$result = $conn->query($sql);

		}else{
			echo "too big image";
		}
	}else{
		echo "ERROR";
	}
}else {
	echo "wrong image type!";
}

?>
