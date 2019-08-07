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
        $errors["email"] = 'The email field is required.';
    } else if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
          $errors["email"] = 'Wrong Email Format!';
    } else {
        $query = "SELECT COUNT(*) AS K FROM USERS WHERE email='$email' ";
        $result = $conn->query($query);
        $row = $result->fetch_assoc();
        $K = $row['K'];
        if (intval($K) > 0) {
              $errors["email"] = 'This Email Is Used By Another Person!';
        }
    }

    if (strlen($password) == 0) {
        $errors["password"] = 'The Password Field Is Required!' ;
    } else if (strlen($password) < 4) {
          $errors["password"] = 'Password So Weak!';
    }

    if(strlen($mobile) == 0 ) {
          $errors["mobile"] = 'mobile number field is required!';
    }else{
        if(!preg_match("/^01[0-9]{9}$/", $mobile)){
            $errors["mobile"] = "mobile must be 11 digits and starts with 01";
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
    $errors['register'] = 'Email , Password and FirstName must be filled';
    $response = ['status' => 0 , 'errors' => $errors];
    echo json_encode($response);
}

?>