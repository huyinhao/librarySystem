<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <title>借书证查询</title>
    <link rel="icon" href="../images/book.png">
    <link rel="stylesheet" href="../css/public.css">
    <link rel="stylesheet" href="../css/top.css">
    <link rel="stylesheet" href="../css/box.css">
    <link rel="stylesheet" href="../css/search.css">
</head>
<style>
    .cube{
        position: fixed;
        left: 60px;
        top: 110px;
    }
    .right_box{
        position: fixed;
        right: -1160px;
        top: 270px;
        height: 1px;
        padding-top: 200px;
    }
    .right_box span{
        top: 240px;
    }

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
if ($select == "lcard"){
    $sql = "select * from lcard";
    $result = $conn->sql($sql);
    if (!$result){
        echo "<script>alert(\"借书证库为空\");window.location.href = \"admin.php\";</script>";
    }
}
elseif($select == 'LSno'){
    $sql = "select * from lcard where LSno = '$querybook'";
    $result = $conn->sql($sql);
    if (!$result){
        echo "<script>alert(\"该学号未办理借书卡\");window.location.href = \"admin.php\";</script>";
    }
}
elseif($select == 'Lno'){
    $sql = "select * from lcard where Lno = '$querybook'";
    $result = $conn->sql($sql);
    if (!$result){
        echo "<script>alert(\"该借书号不存在\");window.location.href = \"admin.php\";</script>";
    }
}
elseif($select == 'Ltel'){
    $sql = "select * from lcard where Ltel = '$querybook'";
    $result = $conn->sql($sql);
    if (!$result){
        echo "<script>alert(\"未使用该手机号办理借书证\");window.location.href = \"admin.php\";</script>";
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
    <div class="cube">
        <!--前面图片 -->
        <div class="out_front">
            <img src="../images/t_c2.jpg" class="pic">
        </div>
        <!--后面图片 -->
        <div class="out_back">
            <img src="../images/t_c6.jpg" class="pic">
        </div>
        <!--左面图片 -->
        <div class="out_left">
            <img src="../images/t_c3.jpg" class="pic">
        </div>
        <!--右面图片 -->
        <div class="out_right">
            <img src="../images/t_c1.jpg" class="pic">
        </div>
        <!--上面图片 -->
        <div class="out_top">
            <img src="../images/t_c4.jpg" class="pic">
        </div>
        <!--下面图片 -->
        <div class="out_bottom">
            <img src="../images/t_c5.jpg" class="pic">
        </div>
        <!--小正方体 -->
        <span class="in_front">
            <img src="../images/5.jpg" class="in_pic">
        </span>
        <span class="in_back">
             <img src="../images/6.jpg" class="in_pic">
        </span>
        <span class="in_left">
            <img src="../images/7.jpg" class="in_pic">
        </span>
        <span class="in_right">
            <img src="../images/8.jpg" class="in_pic">
        </span>
        <span class="in_top">
            <img src="../images/9.jpg" class="in_pic">
        </span>
        <span class="in_bottom">
            <img src="../images/10.jpg" class="in_pic">
        </span>
    </div>
    <div class="right_box cube">
        <!--前面图片 -->
        <div class="out_front">
            <img src="../images/5.jpg" class="pic">
        </div>
        <!--后面图片 -->
        <div class="out_back">
            <img src="../images/6.jpg" class="pic">
        </div>
        <!--左面图片 -->
        <div class="out_left">
            <img src="../images/7.jpg" class="pic">
        </div>
        <!--右面图片 -->
        <div class="out_right">
            <img src="../images/8.jpg" class="pic">
        </div>
        <!--上面图片 -->
        <div class="out_top">
            <img src="../images/9.jpg" class="pic">
        </div>
        <!--下面图片 -->
        <div class="out_bottom">
            <img src="../images/10.jpg" class="pic">
        </div>
        <!--小正方体 -->
        <span class="in_front">
            <img src="../images/t_c2.jpg" class="in_pic">
        </span>
        <span class="in_back">
             <img src="../images/t_c6.jpg" class="in_pic">
        </span>
        <span class="in_left">
            <img src="../images/t_c3.jpg" class="in_pic">
        </span>
        <span class="in_right">
            <img src="../images/t_c1.jpg" class="in_pic">
        </span>
        <span class="in_top">
            <img src="../images/t_c4.jpg" class="in_pic">
        </span>
        <span class="in_bottom">
            <img src="../images/t_c5.jpg" class="in_pic">
        </span>
    </div>
    <?php
//读取并输出记录
echo "<table class='table'>
        <tr>
            <td class='white'>借书证号</td>
            <td class='white'>学号</td>
            <td class='white'>姓名</td>
            <td class='white'>借书数量</td>
            <td class='white'>联系方式</td>
        </tr>
       </table>";
    $count = 1;
while ($row = mysqli_fetch_assoc($result)) {
    if ($count % 2 == 1) {
        echo "
        <table class='table'>
            <tr>
                <td class='black'>{$row['Lno']}</td>
                <td class='black'>{$row['LSno']}</td>
                <td class='black'>{$row['Lname']}</td>
                <td class='black'>{$row['Lbkno']}</td>
                <td class='black'>{$row['Ltel']}</td>
            </tr>
        </table>";
    }
    else{
        echo "
        <table class='table'>
            <tr>
                <td class='white'>{$row['Lno']}</td>
                <td class='white'>{$row['LSno']}</td>
                <td class='white'>{$row['Lname']}</td>
                <td class='white'>{$row['Lbkno']}</td>
                <td class='white'>{$row['Ltel']}</td>
            </tr>
        </table>";
    }
    $count++;
}
    echo"<p  class=\"end\">借书证信息</p>";
//关闭数据库
$conn->close();
?>
</div>
</body>
</html>