<?php

include_once('database\conn.php');

header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');

$errors =[] ;       

if (isset($_POST['email']) && isset($_POST['password']) && isset($_POST['first_name'])) {
    $first_name = $_POST['first_name'];
	$last_name = $_POST['last_name'];
    $email = $_POST['email'];	
    $password = $_POST['password'];
    $mobile = $_POST['mobile'];


    if (strlen($email) == 0) {
        //array_push($errors, ['email'=> 'The email field is required.']);
        $errors["email"] = 'The email field is required.';
    } else if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        //array_push($errors, ['email'=>'wrong email format']);
          $errors["email"] = 'Wrong Email Format!';
    } else {
        $query = "SELECT COUNT(*) AS K FROM USERS WHERE email='$email' ";
        $result = $conn->query($query);
        $row = $result->fetch_assoc();
        $K = $row['K'];
        if (intval($K) > 0) {
          // array_push($errors, ['email' => 'this email is used by another person.']);
              $errors["email"] = 'This Email Is Used By Another Person!';
        }
    }

    if (strlen($password) == 0) {
        //array_push($errors, ['password' => 'The password field is required.']);
        $errors["password"] = 'The Password Field Is Required!' ;
    } else if (strlen($password) < 4) {
        //array_push($errors, ['password' => 'password so weak']);
          $errors["password"] = 'Password So Weak!';
    }

    if(strlen($mobile) == 0 ) {
        //array_push($errors, ['mobile' => 'mobile number field is required!']); 
          $errors["mobile"] = 'mobile number field is required!';
    }else{
        if (strlen($mobile) == 11 ) {
            if($mobile[0] != 0 or $mobile[1] != 1){
                //array_push($errors,['mobile'=>'mobile number must start with 01']);
                 $errors["mobile"] = 'mobile number must start with 01';
            }
        }else{
           // array_push($errors,['mobile'=>'mobile number must have 11 digits']);
            $errors["mobile"] = 'mobile number must have 11 digits';
        }
    }

    if (!count($errors)) {
        $rand  = md5(uniqid(rand(), true));
        $query = "INSERT INTO users (first_name,last_name, email, password, mobile, token) " .
            " values('$first_name', '$last_name', '$email', '$password', '$mobile' , '$rand');";
        $result = $conn->query($query);
        $response = array('status' => 1, 'message' => 'registed successfully!' , 'token' => $rand);
        echo json_encode($response);
    }else {
            $response = ['status' => 0 , 'errors' => $errors];
            echo json_encode($response);
    }
    
}else {
   // array_push($errors,['register' => 'Email , Password and FirstName must be filled']);
    $errors['register'] = 'Email , Password and FirstName must be filled';
    $response = ['status' => 0 , 'errors' => $errors];
    echo json_encode($response);
}

?>