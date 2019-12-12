<?php
require_once "mysql.php";
session_start();

$Lname = $_POST['Lname'];
$Lpassword = $_POST['Lpassword'];
$Ltel = $_POST['Ltel'];
$conn = new Mysql();
$sql = "select max(Lno) from lcard ";
$return = $conn->sql($sql);
$row = mysqli_fetch_assoc($return);
$num = $row['max(Lno)'] + 1;
$sql = "insert into lcard values (Lno,'$Lname','$Lpassword','0','$Ltel')";
$result = $conn->sql($sql);

if($result){
//    echo '<html><head><Script Language="JavaScript"> alert("借书证办理成功 你的借书号:"); alert($num);</Script></head></html>' . "<meta http-equiv=\"refresh\" content=\"0;url=admin.php\">";
    echo "<script>alert(\"借书证办理成功 你的借书号:$num\");window.location.href = \"admin.php\";</script>";
}
else{
//    echo '<html><head><Script Language="JavaScript">alert(\"借书证办理失败 $num\");alert($num);</Script></head></html>'. "<meta http-equiv=\"refresh\" content=\"0;url=admin.php\">";
    echo "<script>alert(\"借书证办理失败\"); window.location.href = \"admin.php\";</script>";
}



$conn->close();
?>
