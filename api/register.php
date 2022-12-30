<?php
include('connect.php');

$uName=$_POST['uName'];
$uSex=$_POST['uSex'];
$uNationality=$_POST['uNationality'];
$uPin=$_POST['uPin'];
$uCpin=$_POST['uCpin'];
$uResidence=$_POST['uResidence'];

if($uPin===$uCpin){
$insert=mysqli_query($connect,"INSERT INTO user(AccountId,Name,Sex,Nationality,Pin,Residence) VALUES ('','$uName','$uSex','$uNationality','$uPin','$uResidence')");
$newAccount=mysqli_query($connect,"SELECT `AccountId` FROM `user` WHERE `Name`=$uName");
$account=mysqli_query($connect,"INSERT INTO account(AccountNo,Name,Balance) VALUES ('$newAccount','$uName',0)");
if($insert){
    $userdata=mysqli_fetch_array($newAccount);
    $userNum=$userdata['AccountId'];
    echo '
    <script>
    let userNum='.$userNum.';
    window.alert("user registered. Account number is: "+userNum);
    window.location.href="../create.html";
    // window.alert("your account number is 
    </script>';
}else{
    echo '
    <script>
    window.alert("registration failed");
    window.location.href="../create.html";
    </script>';
}
}else{
    echo '
    <script>
    window.alert("enter matching pins");
    </script>';
}

?>