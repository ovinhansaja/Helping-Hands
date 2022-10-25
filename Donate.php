<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname="helping_hands_club";

$conn =mysqli_connect($servername, $username, $password,$dbname);
  
$Name=$_POST["Name"];
$Email=$_POST["Email"];
$Amount=$_POST["Amount"];
  
  
 if ($conn->connect_error) 
{
  die("Connection failed: " . $conn->connect_error);
}

$sql = "INSERT INTO donate(Name,Email,Amount) VALUES ('$Name','$Email','$Amount')";

if (mysqli_query($conn, $sql)) {
  echo "Thanks for Donate Us.";
} else
{
  echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);
?>