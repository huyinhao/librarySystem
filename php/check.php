<?php
session_start();
require_once "mysql.php";
//会话开始，这样你才可以调用session

$username = $_POST['username'];
$password = $_POST['password'];
$person = $_POST['people'];
$_SESSION['Lno']= $username;
$conn = new Mysql();
$sql = "SELECT LSno,Lname,Lbkno FROM Lcard where Lno = '$username'";
$result = $conn->sql($sql);
$row = mysqli_fetch_assoc($result);
$book = 10;
$_SESSION['LSno']= $row['LSno'];#学号
$_SESSION['Lname']= $row['Lname'];#学生姓名
$_SESSION['Lbook']= $book - $row['Lbkno'];#剩余可借的书
$sql = "SELECT * FROM manager where Mno = '$username'";
$result = $conn->sql($sql);
$row = mysqli_fetch_assoc($result);
setcookie("Mname",$row['Mname'],time()+300);
setcookie("Mno",$row['Mno'],time()+300);
//$_SESSION['Mname'] = $row['Mname'];
//$_SESSION['Mno'] = $row['Mno'];
$conn->close();
if (checkEmpty($username, $password)) {
    if ($person == "student") {
        if (checkstudent($username, $password)) {
            header('Location: user.php');
        }
    } else {
        if (checkmanager($username, $password)){
        header('Location: admin.php');
    }
    }
}





//方法：判断是否为空
function checkEmpty($username, $password)
{
    if ($username == null || $password == null) {
        echo '<html><head><Script Language="JavaScript">alert("用户名或密码为空");</Script></head></html>' . "<meta http-equiv=\"refresh\" content=\"0;url=register.html\">";
    } else {
        return true;
    }
}

//function insert($username){
//    $conn=new Mysql();
//    $sql = "select "
//}


function checkstudent($username, $password)
{
    $conn = new Mysql();
    $sql = "select * from Lcard where lno = $username and Lpassword = '$password'";
    $result = $conn->sql($sql);
    if ($row = mysqli_fetch_assoc($result)) {
        return true;
    } else {
        echo '<html><head><Script Language="JavaScript">alert("学生用户名或者密码错误");</Script></head></html>' . "<meta http-equiv=\"refresh\" content=\"0;url=..\login.html\">";
    }
    $conn->close();
}

function checkmanager($username, $password)
{
    $conn = new Mysql();
    $sql = "select * from manager where Mno = '$username' and Mpswd = '$password'";
    $result = $conn->sql($sql);
    $row = mysqli_fetch_assoc($result);
    if ($row) {
        return true;
    } else {
        echo '<html><head><Script Language="JavaScript">alert("管理员用户名或者密码错误");</Script></head></html>' . "<meta http-equiv=\"refresh\" content=\"0;url=..\login.html\">";
    }
    $conn->close();
}

//function test_input($data)
//{
//    $data = trim($data);
//    $data = stripslashes($data);
//    $data = htmlspecialchars($data);
//    return $data;
//}

?>