<?php
error_reporting(0);
require_once "mysql.php";
$conn = new Mysql();
$Bname = $_POST["Bname"];
$Bauthor = $_POST["Bauthor"];
$Bpress = $_POST["Bpress"];
$Btype = $_POST["Btype"];
$sql = "select Bno from book where Bname = '$Bname'";
$result = $conn->sql($sql);
if($result){
    $sql_1 = "update book set Bqty = Bqty + 1 where Bname = '$Bname'";
    $return = $conn->sql($sql_1);
}
elseif ($Bname and  $Bauthor and $Bpress and $Btype){
    $sql_1 = "insert book values(Bno,'$Bname','$Bauthor','$Bpress','$Btype',1)";
    $return = $conn->sql($sql_1);
}

if($return){
    echo "<script>alert(\"入库成功\");window.location.href = \"admin.php\";</script>";
}
else{
   echo "<script>alert(\"入库失败\");window.location.href = \"admin.php\";</script>";
}
$conn->close();
?>
