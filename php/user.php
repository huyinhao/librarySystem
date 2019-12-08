<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <title>用户界面</title>
    <link rel="shortcut icon" type="image/x-icon" href="../images/book.png"/>
    <link rel="stylesheet" type="text/css" href="../css/public.css">
    <link rel="stylesheet" type="text/css" href="../css/user_content.css">
    <link rel="stylesheet" href="../css/box.css">
    <link rel="stylesheet" type="text/css" href="../css/top.css">
    <script>
        window.onload = function () {
            let title = document.getElementById('title');
            let box = document.getElementById('box');
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
    <style>

        /*管理员姓名*/
        /*功能栏*/
        .cube{
            left: 160px;
            top: 450px;
        }

    </style>
</head>
<body>
<!--顶栏S-->
<p id="title">图书管理系统</p>
<!--搜索栏S-->
<form action="chaxun.php" method="post">
    <div id="ser_div">
        <!--搜索图标-->
        <i><img src="../images/ser1.png" style="width: 20px;height: 20px;position: relative;top: -7px;"></i>
        <!--输入框-->
        <input name="query" placeholder="搜索" class="ser_in" autocomplete="off">
    </div>
</form>
<!--搜索栏E-->
<!--顶栏E-->
<!--主体内容S-->
<div id="box">

    <div class="cont">

        <div class="booklist">
            <!--        logo-->
            <div class="img_div">
                <img src="../images/book.png" style="width: 150px;height: 150px;">
            </div>
            <!--    个人信息栏S-->
            <ul>
                <li class="l1 por" id="li1">
                    <?php
                    session_start();
                    echo "
<div class=\"name_div\">
    用户编号:{$_SESSION['LSno']}
   </div>
<div class=\"name_div num_div \">
    用户姓名:{$_SESSION['Lname']}
</div>
<div class=\"name_div num_div\">
    借书证编号:{$_SESSION['Lno']}
</div>
<div class=\"name_div num_div\">
    剩余可借: {$_SESSION['Lbook']}
</div>";
                    session_write_close(); ?>

                </li>
            </ul>
            <!--    个人信息栏E-->
        </div>
    </div>
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
    <!--借书情况S-->
    <div class="userbox1" id="div1">
        <ul class="box1_ul1">
            <li class="li_jie">已借书单详情</li>
        </ul>
        <ul class="box1_ul2 por">
            <br>
            <?php
            //        连接数据库
            require_once "mysql.php";
            session_start();
            $a = $_SESSION['Lno'];
            $conn = new Mysql();
            $sql = "SELECT * FROM lendlb where Lno = '$a'";
            $result = $conn->sql($sql);
            //        各字段
            echo "<li class=\"white  inb\">书号</li>";
            echo "<li class=\"black  inb\">书名</li>";
            echo "<li class=\"white  inb\">作者</li>";
            echo "<li class=\"black  inb\">出版社</li>";
            echo "<li class=\"white  inb\">借书日期</li>";
            echo "<li class=\"black  inb\">归还日期</li><br>";
            while($row = mysqli_fetch_assoc($result)) {
                echo "<li class=\"white ins_li inb\">{$row['Lbno']}</li>";
                echo "<li class=\"black ins_li inb\">{$row['Lbname']}</li>";
                echo "<li class=\"white ins_li inb\">{$row['Lauthor']}</li>";
                echo "<li class=\"black ins_li inb\">{$row['Lpress']}</li>";
                echo "<li class=\"white ins_li inb\">{$row['Ldate']}</li>";
                echo "<li class=\"black ins_li inb\">{$row['Lrtdate']}</li><br>";
            }
            //        提示信息
            echo "<li class=\"no_more inb\">- - - - - - - - - - - - - - - - - - - - - - - 
        没有更多了
             - - - - - - - - - - - - - - - - - - - - - - - </li><br>";
            session_write_close();
            ?>
        </ul>
    </div>
</div>
<!--借书情况E-->
<!--主体内容E-->
<p  class="end">用户界面</p>
</body>
</html>