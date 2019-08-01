<?php

const HOST = 'localhost';
const USERNAME = 'ahmed';
const PASSWORD = '123456789';
const DATABASE = 'books';

$conn = mysqli_connect(HOST, USERNAME, PASSWORD, DATABASE);

if ($conn == null || count($conn->error_list) > 0) {
    die('Connections is not established successfully!');
}