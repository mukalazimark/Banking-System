<?php
include("connect.php");

$uName=$_POST['uName'];
$uNum=$_POST['uNum'];
$uPin=$_POST['uPin'];

$check=mysqli_query($connect,"SELECT `Balance` FROM `account` WHERE `Name`='$uName' AND `AccountNo`='$uNum'");
// `AccountNo`='$uNum'
if($check!=NULL){
    $row=mysqli_fetch_array($check);
    $value=$row['Balance'];
    // echo 'Balance:  '.$value ;
    echo '<script>
    let val='.$value.';
    window.alert("Balance is: " + val);
    window.location.href="../balance.html"
    </script>';
}else{
    echo '<script>
    window.alert("Enter correct details");
    </script>';
}

?>