<?php
require_once("includes/config.php");
require_once("includes/checklogin.php");

if(!empty($_POST["emailid"])) {
	$email= $_POST["emailid"];
	if (filter_var($email, FILTER_VALIDATE_EMAIL)===false) {

		echo "error : You did not enter a valid email.";
	}
	else {
		$result ="SELECT count(*) FROM userregistration WHERE email=?";
		$stmt = $mysqli->prepare($result);
		$stmt->bind_param('s',$email);
		$stmt->execute();
$stmt->bind_result($count);
$stmt->fetch();
$stmt->close();

if($count>0)
{
	// error
echo "<span style='color:red'> Email already exist .</span>";
}
else{
	echo "<span style='color:green'> Email available for registration .</span>";
}
}
}

if(!empty($_POST["oldpassword"])) 
{
$pass=$_POST["oldpassword"];
$result ="SELECT password FROM userregistration WHERE password=?";
$stmt = $mysqli->prepare($result);
$stmt->bind_param('s',$pass);
$stmt->execute();
$stmt -> bind_result($result);
$stmt -> fetch();
$opass=$result;
if($opass==$pass) 
echo "<span style='color:green'> Password  matched .</span>";
else echo "<span style='color:red'> Password Not matched</span>";
}

//made changes in this code only 
if(!empty($_POST["roomno"]))  //1.change name roomno from html form to something else like room also change from here 
{
    $roomno=$_POST["roomno"];  //2. put room inplace of roomno 
    $sql="SELECT * FROM registration where roomno = $roomno";
    if ($result=mysqli_query($mysqli,$sql))
    {
        $rowcount=mysqli_num_rows($result);
        printf(" %d seat is fulled.\n",$rowcount);
        mysqli_free_result($result);
    }

    if( $rowcount<3)
    {
     	echo "<span style='color:red'>Seat are Available</span>";
    }else{
	    echo "<span style='color:green'>All seats already full. So please Select another room.</span>";
    }
}
?>


