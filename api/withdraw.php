<?php
include('connect.php');
$uName=$_POST['uName'];
$uNo=$_POST['uNo'];
$uAmount=$_POST['uAmount'];

// $myUser=mysqli_query($connect,"SELECT Balance FROM account WHERE Name=$uName");
$withdraw=mysqli_query($connect,"UPDATE `account` SET `Balance`= Balance- $uAmount WHERE `Name`='$uName'");
if($withdraw){
    echo '
    <script>
    window.alert("Transaction successful");
    window.location.href="../withdraw.html";
    </script>';
}else{
    // echo $myUser;
    echo '
    <script>
    window.alert("Transaction failed");
    window.location.href="../withdraw.html";
    </script>';
}

?>