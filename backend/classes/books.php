<?php 

include_once('classes\connection.php');

class Books
{

	function __construct($conn) {
	    $this->connection = $conn ;
    }

	public function getAll(){
		$query = "SELECT id , title , rate , author_name , image_path , published_at FROM books "; 
		$result = $this->connection->query($query);
		$books = $result->fetch_all(MYSQLI_ASSOC);
		return $books;
	}

	public function getBook($book_id){
		$query = "SELECT books.id , books.url , books.image_path , books.title , books.rate , authors.image as author_image , authors.name as author_name, authors.description  as author_bio , books.description as book_description 
			FROM authors , books , book_gallery
			WHERE  books.id = $book_id && authors.id = books.author_id && books.id = book_gallery.book_id
			ORDER by books.id";

		$result = $this->connection->query($query);
		$books_authors_details = $result->fetch_all(MYSQLI_ASSOC);
		return $books_authors_details;
	}

}

 ?>
