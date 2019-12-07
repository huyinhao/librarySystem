<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <title>借书库查询</title>
    <link rel="icon" href="../images/book.png">
    <link rel="stylesheet" href="../css/public.css">
    <link rel="stylesheet" href="../css/top.css">
    <link rel="stylesheet" href="../css/search.css">
</head>
<style>
</style>
<script>
    window.onload = function () {
        let title = document.getElementById('title');
        let box = document.getElementById('cha_box');
        let ser_div = document.getElementById('ser_div');
        title.onclick = function(){
            ser_div.style.cssText +='border-color:#333a41;'
        };
        box.onclick = function(){
            ser_div.style.cssText +='border-color:#333a41;'
        };
        ser_div.onclick = function () {
            ser_div.style.cssText +='border-color:black;'
        };
    }
</script>
<body>
<?php
require_once "mysql.php";
$conn = new Mysql();
$querybook = $_POST["query"];
$select = $_POST["type"];
//执行查询并获取查询结果
if ($select == "lendlb"){
    $sql = "select * from lendlb";
    $result = $conn->sql($sql);
    if (!$result){
        echo "<script>alert(\"借书库为空\");window.location.href = \"admin.php\";</script>";
    }
}
elseif($select == 'Bno'){
    $sql = "select * from lendlb where Lbno = '$querybook'";
    $result = $conn->sql($sql);
    if (!$result){
        echo "<script>alert(\"没有人借阅此书号的书\");window.location.href = \"admin.php\";</script>";
    }
}
elseif($select == 'Lno'){
    $sql = "select * from lendlb where Lno = '$querybook'";
    $result = $conn->sql($sql);
    if (!$result){
        echo "<script>alert(\"此借书号没有借阅书籍\");window.location.href = \"admin.php\";</script>";
    }
}

echo" 
<p id=\"title\">图书管理系统</p>
<form action=\"chaxun.php\" method=\"post\">
    <div id=\"ser_div\">
        <i><img src=\"../images/ser1.png\" style=\"width: 20px;height: 20px;position: relative;top: -7px;\"></i>
        <input name=\"query\" placeholder=\"搜索\" class=\"ser_in\" autocomplete=\"off\">
    </div>
</form>
";
?>
<div id = "cha_box">
    <?php
//读取并输出记录
echo "<table class='table'>
        <tr>
            <td class='black'>借书号</td>
            <td class='black'>借书人姓名</td>
            <td class='black'>书号</td>
            <td class='black'>书名</td>
            <td class='black'>作者</td>
            <td class='black'>出版社</td>
            <td class='black'>借书日期</td>
            <td class='black'>还书日期</td>
        </tr>
       </table>";
$count = 1;
while ($row = mysqli_fetch_assoc($result)) {
    if ($count % 2 == 1){
        echo "<table class='table'>
              <tr>
                  <td class='white'>{$row['Lno']}</td>
                  <td class='white'>{$row['Lname']}</td>
                  <td class='white'>{$row['Lbno']}</td>
                  <td class='white'>{$row['Lbname']}</td>
                  <td class='white'>{$row['Lauthor']}</td>
                  <td class='white'>{$row['Lpress']}</td>
                  <td class='white'>{$row['Ldate']}</td>
                  <td class='white'>{$row['Lrtdate']}</td>
              </tr>
           </table>";
    }
    else{
        echo "<table class='table'>
              <tr>
                  <td class='black'>{$row['Lno']}</td>
                  <td class='black'>{$row['Lname']}</td>
                  <td class='black'>{$row['Lbno']}</td>
                  <td class='black'>{$row['Lbname']}</td>
                  <td class='black'>{$row['Lauthor']}</td>
                  <td class='black'>{$row['Lpress']}</td>
                  <td class='black'>{$row['Ldate']}</td>
                  <td class='black'>{$row['Lrtdate']}</td>
              </tr>
           </table>";
    }

    $count++;
}
echo"<p  class=\"end\">借书库信息查询</p>";
//关闭数据库
$conn->close();
?>
</div>
</body>
</html>