<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <title>书籍查询</title>
    <link rel="icon" href="../images/book.png">
    <link rel="stylesheet" href="../css/public.css">
    <link rel="stylesheet" href="../css/top.css">
    <link rel="stylesheet" href="../css/box.css">
    <link rel="stylesheet" href="../css/search.css">
</head>
<style type="text/css">
    .cube{
        position: fixed;
        left: 60px;
        top: 90px;
    }
    .right_box{
        position: fixed;
        right: -1160px;
        top: 250px;
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
//执行查询并获取查询结果

    $sql = "select * from book where Bname like '%$querybook%' or Bauthor like '%$querybook%' or Btype like '%$querybook%' or Bno like '%$querybook%' or Bpress like '%$querybook%'";
    $result = $conn->sql($sql);
    if (!$result){
        echo "<th>没有此书</th>";
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
echo "
<table class='table'>  
        <tr>
            <td class='black'>书序号</td>
            <td class='black'>书名</td>
            <td class='black'>作者</td>
            <td class='black'>出版社</td>
            <td class='black'>类别</td>
            <td class='black'>库存</td>
        </tr>
       </table>
";
$count = 1;
while ($row = mysqli_fetch_assoc($result)) {
    if ($count % 2 == 1){
            echo "<table class='table'>
                        <tr>
                            <td class='white'>{$row['Bno']}</td>
                            <td class='white'>{$row['Bname']}</td>
                            <td class='white'>{$row['Bauthor']}</td>
                            <td class='white'>{$row['Bpress']}</td>
                            <td class='white'>{$row['Btype']}</td>
                            <td class='white'>{$row['Bqty']}</td>
                        </tr>
                  </table>";
    }
    else{
        echo "<table class='table'>
                        <tr>
                            <td class='black'>{$row['Bno']}</td>
                            <td class='black'>{$row['Bname']}</td>
                            <td class='black'>{$row['Bauthor']}</td>
                            <td class='black'>{$row['Bpress']}</td>
                            <td class='black'>{$row['Btype']}</td>
                            <td class='black'>{$row['Bqty']}</td>
                        </tr>
                  </table>";
    }
    $count++;
}

//关闭数据库
$conn->close();
echo"<p  class=\"end\">书籍信息查询</p>";
?>
</div>
</body>
</html>
