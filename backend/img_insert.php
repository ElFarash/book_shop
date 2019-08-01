<?php 
include_once('database/conn.php');
$query = "SELECT * FROM books ";  // lesa images we keda 
$result = $conn->query($query);
$books = $result->fetch_all(MYSQLI_ASSOC);


 ?>
<!DOCTYPE html>
<html>
<head>
	<title>
		image
	</title>
</head>
<body>
	<?php foreach ($books as $book) { ?>
		<img src="<?php echo $book['image_path']; ?>" >
                         
	<?php } ?>
</body>
</html>