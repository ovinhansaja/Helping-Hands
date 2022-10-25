<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname="helping_hands_club";

$conn =mysqli_connect($servername, $username, $password,$dbname);
  
$Name=$_POST["Name"];
$Email=$_POST["Email"];
$TP=$_POST["TP"];
$Country=$_POST["Country"];
$Message=$_POST["Message"];
  
  
 if ($conn->connect_error) 
{
  die("Connection failed: " . $conn->connect_error);
}

$sql = "INSERT INTO contact(Name,Email,TP,Country,Message) VALUES ('$Name','$Email','$TP','$Country','$Message')";

if (mysqli_query($conn, $sql)) {
  echo "Thanks for Contact Us.";
} else
{
  echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);
?>