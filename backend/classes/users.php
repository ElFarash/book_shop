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

	public function add($first_name,$last_name,$email,$password,$mobile,$rand){
        $query = "INSERT INTO users (first_name,last_name, email, password, mobile, token) " .
            " values('$first_name', '$last_name', '$email', '$password', '$mobile' , '$rand');";
        $result = $this->connection->query($query);
	}

	public function token($email , $password){
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
        $query = "SELECT * FROM users WHERE token='$token' ";
        $result = $this->connection->query($query);
        $user = $result->fetch_assoc();
        return $user;
    }

    public function updateInfo($first_name , $last_name , $password , $mobile , $id , $token){
        $query="UPDATE users    
                SET  first_name='$first_name', last_name='$last_name' , password='$password' , mobile='$mobile'
                WHERE id='$id' or token ='$token' " ;

        $this->connection->query($query);
    }
	

}


 ?>