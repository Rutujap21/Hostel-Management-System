<?php
include('includes/pdoconfig.php');
if(!empty($_POST["hostel"])) 
{	
$id=$_POST['hostel'];
$stmt = $DB_con->prepare("SELECT * FROM hostel WHERE h_Name = ");
$stmt->execute();
?>
 

?>