
<?php

$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "webnotes";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
     die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT id,swords FROM stopwords";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
     // output data of each row
	$outp = "";
     while($row = $result->fetch_assoc()) {
     	if ($outp != "") {$outp .= ",";}
     	$outp .= '{"id":'  . $row["id"] . ',';
     	$outp .= '"name":"'. $row["swords"]     . '"}'; 
     }
} 
$outp ='{"records":['.$outp.']}';
$conn->close();
echo($outp);
?> 
