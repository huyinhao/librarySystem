<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <title>管理员界面</title>
    <link rel="shortcut icon" type="image/x-icon" href="../images/book.png"/>
    <link rel="stylesheet" type="text/css" href="../css/public.css">
    <link rel="stylesheet" type="text/css" href="../css/top.css">
    <link rel="stylesheet" href="../css/box.css">
    <link rel="stylesheet" href="../css/admin.css">
    <style type="text/css">
        .cube{
            top: 80px;
            right: -900px;
            height: 320px;
        }
        .man_ul{
            margin-top: 400px;
            height: 200px;
        }
    </style>
    <script>
        window.onload = function () {
            let title = document.getElementById('title');
            let box = document.getElementById('box');
            let box2 = document.getElementById('box2');
            let ser_div = document.getElementById('ser_div');
            title.onclick = function(){
                ser_div.style.cssText +='border-color:#333a41;'
            };
            box.onclick = function(){
                ser_div.style.cssText +='border-color:#333a41;'
            };
            box2.onclick = function(){
                ser_div.style.cssText +='border-color:#333a41;'
            };
            ser_div.onclick = function () {
                ser_div.style.cssText +='border-color:black;'
            };
            let li1 = document.getElementById('li1');
            let div1 = document.getElementById('div1');
            let li2 = document.getElementById('li2');
            let div2 = document.getElementById('div2');
            let li3 = document.getElementById('li3');
            let div3 = document.getElementById('div3');
            let li4 = document.getElementById('li4');
            let div4 = document.getElementById('div4');
            let li5 = document.getElementById('li5');
            let div5 = document.getElementById('div5');
            let li6 = document.getElementById('li6');
            let div6 = document.getElementById('div6');
            let css_change = 'cursor:pointer;color: white;background-color:#333a41;border-color:whitesmoke;transition:1s';
            let css_recover = 'cursor:normal;color: #333a41;background-color:whitesmoke;border-color:#333a41;transition:1s';
            function recover_li1(){
                li1.style.cssText += css_recover;
                div1.style.display = 'none';
            }
            function recover_li2(){
                li2.style.cssText += css_recover;
                div2.style.display = 'none';
            }
            function recover_li3(){
                li3.style.cssText += css_recover;
                div3.style.display = 'none';
            }
            function recover_li4(){
                li4.style.cssText += css_recover;
                div4.style.display = 'none';
            }
            function recover_li5(){
                li5.style.cssText += css_recover;
                div5.style.display = 'none';
            }
            function recover_li6(){
                li6.style.cssText += css_recover;
                div6.style.display = 'none';
            }
            li1.onclick= function (){
                li1.style.cssText = css_change;
                div1.style.display = 'block';
                recover_li2();
                recover_li3();
                recover_li4();
                recover_li5();
                recover_li6();
            };
            li2.onclick= function (){
                li2.style.cssText = css_change;
                div2.style.display = 'block';
                recover_li1();
                recover_li3();
                recover_li4();
                recover_li5();
                recover_li6();
            };
            li3.onclick= function (){
                li3.style.cssText = css_change;
                div3.style.display = 'block';
                recover_li2();
                recover_li1();
                recover_li4();
                recover_li5();
                recover_li6();
            };
            li4.onclick= function (){
                li4.style.cssText = css_change;
                div4.style.display = 'block';
                recover_li2();
                recover_li3();
                recover_li1();
                recover_li5();
                recover_li6();
            };
            li5.onclick= function (){
                li5.style.cssText = css_change;
                div5.style.display = 'block';
                recover_li2();
                recover_li3();
                recover_li4();
                recover_li1();
                recover_li6();
            };
            li6.onclick= function (){
                li6.style.cssText = css_change;
                div6.style.display = 'block';
                recover_li2();
                recover_li3();
                recover_li4();
                recover_li5();
                recover_li1();
            };
        }
    </script>
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
<div id="box">
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
    <ul class="man_ul">
        <?php
        session_start();
        $Mname = $_COOKIE['Mname'];
        $Mno = $_COOKIE['Mno'];
        echo "<li class=\"white i1  \">
        姓名:$Mname
        <li class=\" black  i1 num\">编号:$Mno</div>
        </li>";
        ?>
    </ul>

    <div class="booklist" id="box2">
        <ul>
            <li class="li_top black l1" id="li1">
                借阅
                <div class="hidbox por" id="div1">
                    <p>借阅</p>
                    <form method="post" action="jieyue.php" >
                        <label for="jieyue" class="" >书号:</label>
                        <input type="text" id="" name="Bno" placeholder="Your select">
                        <label for="jieyue" class="" >借书号:</label>
                        <input type="text" id="" name="Lno" placeholder="Your select">
                        <label for="jieyu" class="" >借书日期</label>
                        <input type="date" name="date">
                        <label for="jieyue" class="" >还书日期</label>
                        <input type="date" name="date2">
                        <button class="" style="vertical-align:middle"><span>借阅</span></button>
                    </form>
                </div>
            </li>

            <li class="l1 white  " id="li2">
                还书
                <div class="hidbox hidbox2 por" id="div2">
                    <p>还书</p>
                    <form method="post" action="lend.php">
                        <label for="jieyue" class="" >书号:</label>
                        <input type="text" id="" name="Lbno" placeholder="Your select">
                        <br>
                        <label for="jieyue" class="" >借书号:</label>
                        <input type="text" id="" name="Lno" placeholder="Your select">
                        <br>
                        <button class="" style="vertical-align:middle"><span>还书</span></button>
                        <br>
                    </form>
                </div>
            </li>
            <li class="l1 white " id="li3">
                续借
                <div class="hidbox hidbox3 por" id="div3">
                    <p>续借</p>
                    <form method="post" action="xvjie.php">
                        <label for="lcard" class="" >书号:</label>
                        <input type="text" id="" name="Bno" placeholder="Your select">
                        <br>
                        <label for="lcard" class="" >借书证号:</label>
                        <input type="text" id="" name="Lno" placeholder="Your select">
                        <br>
                        <button class="button" style="vertical-align:middle"><span>续借</span></button>
                        <br>
                    </form>
                </div>
            </li>
            <li class="l1 white " id="li4">
                借书证
                <div class="hidbox hidbox4 por" id="div4">
                    <p>借书证</p>
                    <form method="post" action="jieshuzheng.php">
                        <label for="lcard" class="" >学号:</label>
                        <input type="text" id="" name="LSno" placeholder="Your select">
                        <label for="lcard" class="" >姓名:</label>
                        <input type="text" id="" name="Lname" placeholder="Your select">
                        <label for="lcard" class="" >密码:</label>
                        <input type="text" id="" name="Lpassword" placeholder="Your select">
                        <label for="lcard" class="" >联系方式:</label>
                        <input type="text" id="" name="Ltel" placeholder="Your select">
                        <button class="button" style="vertical-align:middle"><span>办理</span></button>
                    </form>
                </div>
            </li>
            <li class="l1 white " id="li5">
                新书入库
                <div class="hidbox hidbox5 por" id="div5">
                    <p>新书入库</p>
                    <form method="post" action="ruku.php">
                        <label for="querybook" class="" >书名:</label>
                        <input type="text" id="" name="Bname" placeholder="Your select">
                        <label for="querybook" class="" >作者:</label>
                        <input type="text" id="" name="Bauthor" placeholder="Your select">
                        <label for="querybook" class="" >出版社:</label>
                        <input type="text" id="" name="Bpress" placeholder="Your select">
                        <label for="querybook" class="" >种类:</label>
                        <input type="text" id="" name="Btype" placeholder="Your select">
                        <button class="button" style="vertical-align:middle"><span>插入</span></button>
                    </form>
                </div>
            </li>
            <li class="l1 white " id="li6">
                信息查询
                <div class="hidbox hidbox6 por" id="div6">
                    <p>信息查询</p>
                    <form method="post" action="chaxun.php">
                        <label for="querybook" class="" >书籍查询</label>
                        <input type="text" id="" name="query" placeholder="Your select">
                        <select id="type" name="type">
                            <option value="allbook">全部书籍</option>
                            <option value="bookno">书号</option>
                            <option value="bookname">书名</option>
                            <option value="author">作者</option>
                            <option value="type">类别</option>
                            <option value="press">出版社</option>
                        </select>
                        <br>
                        <button class="button" style="vertical-align:middle"><span>查询</span></button>
                        <br>
                    </form>
                    <form method="post" action="chaxun2.php">
                        <label for="" class="" >借书库查询</label>
                        <input type="text" id="" name="query" placeholder="Your select">
                        <select id="" name="type">
                            <option value="lendlb">借书库信息</option>
                            <option value="Bno">书号</option>
                            <option value="Lno">借书证号</option>
                        </select>
                        <br>
                        <button class="button" style="vertical-align:middle"><span>查询</span></button>
                        <br>
                    </form>
                    <form method="post" action="chaxun3.php">
                        <label for="" class="" >借书卡查询</label>
                        <input type="text" id="" name="query" placeholder="Your select">
                        <select id="" name="type">
                            <option value="lcard">所有借书卡信息</option>
                            <option value="Lno">借书证号</option>
                            <option value="LSno">学号</option>
                            <option value="Ltel">手机号</option>
                        </select>
                        <br>
                        <button class="button" style="vertical-align:middle"><span>查询</span></button>
                        <br>
                    </form>
                </div>
            </li>

        </ul>
    </div>
    <p  class="end">管理员界面</p>
</div>

</body>
</html>