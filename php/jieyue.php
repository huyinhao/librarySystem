<?php
require_once "mysql.php";
$Lno = $_POST['Lno'];
$Bno = $_POST['Bno'];
$date= $_POST['date'];
$date_2 = $_POST['date2'];
$conn = new Mysql();
$sql = "select Bname,Bqty,Bauthor,Bpress from book where Bno = '$Bno'";
$result = $conn->sql($sql);
$row = mysqli_fetch_assoc($result);
$sql_1 = "select Lname,Lbkno from lcard where Lno = '$Lno'";
$return = $conn->sql($sql_1);
$row_2 = mysqli_fetch_assoc($return);
if ($result and $return)
{
    if ($row['Bqty'] <= 0)
    {
        echo "<script>alert(\"库存不足\");window.location.href = \"admin.php\";</script>";
        return;
    }
    if($row_2['Lbkno'] >= 10 ){
        echo "<script>alert(\"借书数到达上限\");window.location.href = \"admin.php\";</script>";
        return;
    }
    $sql = "update book set Bqty = Bqty - '1' WHERE Bno = '$Bno'";
    $result = $conn->sql($sql);
    if ($result){
        $sql = "update lcard set Lbkno = Lbkno + '1' where Lno = '$Lno'";
        $result = $conn->sql($sql);
        if ($result){
            $sql = "insert into lendlb values ('$Bno','{$row['Bname']}','$Lno','{$row_2['Lname']}',
'{$row['Bauthor']}','{$row['Bpress']}','$date','$date_2')";
            $response = $conn->sql($sql);
            if ($response){
                echo "<script>alert(\"借书成功\");window.location.href = \"admin.php\";</script>";
            }
            else{
                $sql = "update book set Bqty = Bqty + '1' WHERE Bno = '$Bno'";
                $result = $conn->sql($sql);
                $sql = "update lcard set Lbkno = Lbkno - '1' where Lno = '$Lno'";
                $result = $conn->sql($sql);
                echo "<script>alert(\"该书不能重复借阅，借书失败\");window.location.href = \"admin.php\";</script>";
            }
        }
        else{
            echo "<script>alert(\"借书证修改失败\");window.location.href = \"admin.php\";</script>";
        }
    }
    else{
        echo "<script>alert(\"库存修改失败\");window.location.href = \"admin.php\";</script>";
    }
}
else{
    echo "<script>alert(\"书名或者借书号不存在\");window.location.href = \"admin.php\";</script>";
}



$conn->close();
//?>
