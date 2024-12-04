<?php
$servername = "localhost"; // Since the database is running on localhost
$username = "root"; // Change this if your MySQL root user has a different username
$password = ""; // Change this to the password for your MySQL root user
$dbname = "leaders-db"; // Name of the database

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);

// Check connection
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}
echo "Connected successfully to the database 'leaders-db'";
?>
