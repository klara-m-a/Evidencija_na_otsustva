<?php

$server = "localhost";
$db = "eotsustva";
$username = "root";
$password = "";

$conn = mysqli_connect($server,$username, $password, $db);
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
// echo "Connected successfully";
?>
