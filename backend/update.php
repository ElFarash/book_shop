<?php 

include_once('database\conn.php');
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *');



$errors =[] ;       

if (isset($_POST['password']) && isset($_POST['first_name'])) {
    $first_name = $_POST['first_name'];
	$last_name = $_POST['last_name'];
    $password = $_POST['password'];
    $mobile = $_POST['mobile'];
    $id = $_POST['id'];


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
        $query=" UPDATE USERS 
        SET , first_name='$first_name', last_name='$last_name' , password='$password' , mobile='$mobile'
        WHERE id='$id' " ;

        $result = $conn->query($query);

        $response = array('status' => 1, 'message' => 'data updated');
        echo json_encode($response);
    }else {
            $response = ['status' => 0 , 'errors' => $errors];
            echo json_encode($response);
    }
    
}else {
    $errors['register'] = 'New Password and New FirstName must be filled';
    $response = ['status' => 0 , 'errors' => $errors];
    echo json_encode($response);
}

 ?>