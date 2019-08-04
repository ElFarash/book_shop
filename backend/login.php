<?php
include_once('database\conn.php');
header('Content-Type: application/json'); 
header('Access-Control-Allow-Origin: *');



if (isset($_POST['email']) && isset($_POST['password'])) {
    $email = $_POST['email'];
    $password = $_POST['password'];

    $errors = [];
    if (strlen($email) <= 0) {
        array_push($errors, ['email'=>'The email field is required.']);
    } 
    if (strlen($password) <= 0) {
        array_push($errors, ['password'=>'The Password Field Is Required.']);
    }

    if (!count($errors)) {
        $query = "SELECT token FROM USERS WHERE email='$email' AND password='$password';";
        $result = $conn->query($query);
        $tokens = $result->fetch_assoc();
        if ($tokens){
            foreach ($tokens as $token) {
                $response = ['status' => 1, 'message' => 'Logged In Successfully!', 'token' => $token ];
                echo json_encode($response);
            }
        } else {
            $errors['login'] = 'Email And/Or Password Are Incorrect!';
            $response = ['status' => 0 ,'errors' => $errors];
            echo json_encode($response);
        }
    }
}