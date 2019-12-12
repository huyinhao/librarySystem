<?php
require_once "mysql.php";
$Bno = $_POST['Bno'];
$Lno = $_POST['Lno'];
$conn = new Mysql();
$sql = "select * from lendlb where Lbno = '$Bno' and Lno = '$Lno'";
$result = $conn->sql($sql);
$showtime=date("Y-m-d");


//$enddate=strtotime("2020-1-20");//上面的php时间日期函数已经把日期变成了时间戳，就是变成了秒。这样只要让两数值相减，然后把秒变成天就可以了，比较的简单，如下：


if ($result){
    $row = mysqli_fetch_assoc($result);
    $enddate=strtotime($row['Lrtdate']);
    $startdate=strtotime($showtime);
    $days=round(($enddate-$startdate)/3600/24) ;
    if(abs($days) <= 15){
        $date_2 = date('Y-m-d', strtotime ("+1 month", strtotime($row['Lrtdate'])));
        $sql = "update lendlb set Lrtdate = '$date_2' where Lbno = '$Bno'";
        $result = $conn->sql($sql);
        if ($result){
            echo "<script>alert(\"续借成功\");window.location.href = \"admin.php\";</script>";
        }
        else{
            echo "<script>alert(\"借书失败\");window.location.href = \"admin.php\";</script>";
        }
    }
    else{
        echo "<script>alert(\"超出续借日期，无法续借\");window.location.href = \"admin.php\";</script>";
    }
}
else{
    echo "<script>alert(\"你没有借这本书或者借书号错误\");window.location.href = \"admin.php\";</script>";
}
?>