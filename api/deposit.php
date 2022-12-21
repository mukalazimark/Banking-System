<?php
include('connect.php');
$uName=$_POST['uName'];
$uNo=$_POST['uNo'];
$uAmount=$_POST['uAmount'];

// $myUser=mysqli_query($connect,"SELECT Balance FROM account WHERE Name=$uName");
$deposit=mysqli_query($connect,"UPDATE `account` SET `Balance`=Balance+$uAmount WHERE `Name`='$uName'");
if($deposit){
    echo '
    <script>
    window.alert("Deposit received");
    window.location.href="../deposit.html";
    </script>';
}else{
    // echo $myUser;
    echo '
    <script>
    window.alert("Transaction failed");
    window.location.href="../deposit.html";
    </script>';
}

?>