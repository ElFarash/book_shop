<?php 

include_once('classes\connection.php');

class Users 
{
	function __construct($conn) {
	    $this->connection = $conn ;
    }

	public function getAll(){
		$sql = "SELECT * FROM users" ;	
		if($result = $this->connection->query($sql)){
			while ($row = $result->fetch_assoc())
           	{   
           		$data[]  = $row;
            }
            return $data;
		}
	}

	public function showAll(){
		$datas = $this->getAll();
		foreach ($datas as $data) {
			echo $data['id']." / ".$data['email']." / ".$data['password']."<br>";
		}
	}

	public function isUsed($email){
		# returns True if this email already in the database.
		$query = "SELECT COUNT(*) AS K FROM USERS WHERE email='$email' ";
        $result = $this->connection->query($query);
        $row = $result->fetch_assoc();
        $K = $row['K'];
        if (intval($K) > 0){
        	return true;
        }else{
        	return false;
        }
	}

	public function add($first_name,$last_name,$email,$password,$mobile,$rand,$image_id,$typee , $bio){
        $query = "INSERT INTO users (first_name,last_name, email, password, mobile, token , img_id , type , bio) " .
            " values('$first_name', '$last_name', '$email', '$password', '$mobile' , '$rand' , '$image_id' , '$typee' , '$bio');";
        $result = $this->connection->query($query);
	}

	public function token($email , $password){
        #take email and password and return list ( true or flase , token or no_token)
		$query = "SELECT token FROM USERS WHERE email='$email' AND password='$password';";
        $result = $this->connection->query($query);
        $tokens = $result->fetch_assoc();
        if ($tokens){
            foreach ($tokens as $token){
            	return array(true , $token);
            }
        }else{
        	return array(false , "Email And/Or Password Are Incorrect!") ; 
        }
	}

    public function getUser($token){
        #returns true at valid token    
        $query = "SELECT COUNT(*) AS K FROM USERS WHERE token='$token' ";
        $result =$this->connection->query($query);
        $row = $result->fetch_assoc();
        $K = $row['K'];
        if (intval($K) > 0){
            return true;
        }else{
            return false;
        }        

    }

    public function getInfo($token){
        #returns all users's info 
        $query = "SELECT users.first_name , users.last_name , users.email , users.password , users.mobile , users.token , users.type , users.bio , users_images.image as image 
                FROM users , users_images 
                WHERE token='$token' and users.img_id = users_images.id";
        $result = $this->connection->query($query);
        $user = $result->fetch_assoc();
        return $user;
    }

    public function updateInfo($first_name , $last_name , $password , $mobile , $id , $token , $bio){
        $query="UPDATE users    
                SET  first_name='$first_name', last_name='$last_name' , password='$password' , mobile='$mobile' , bio = '$bio'
                WHERE id='$id' or token ='$token' " ;

        $this->connection->query($query);
    }
	
    public function getId($token){
        #returns user's id 
        $query = "SELECT id
                FROM users 
                WHERE token='$token'";
        $result = $this->connection->query($query);
        $user_id = $result->fetch_assoc();
        return $user_id;
    }

    public function AddBookList($user_id , $book_id ){
        #take book and put it in user's book list
        $query = "INSERT INTO books_of_user (user_id , book_id) VALUES ($user_id,'$book_id') ";
        $result = $this->connection->query($query);
    }

    public function ShowBookList($token){
        #take token and return the user's book list
        $id =$this->getId($token);
        $temp = $id['id'];
        $query = "SELECT   books_of_user.user_id , books.id , books.title , books.rate , books.author_name , books.image_path , books.published_at  
            FROM books , books_of_user 
            WHERE  books.id = books_of_user.book_id and books_of_user.user_id = '$temp' "; 
        $result = $this->connection->query($query);
        $books = $result->fetch_all(MYSQLI_ASSOC);
        return $books;
    }

}


 ?>