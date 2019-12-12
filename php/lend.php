<?php
	error_reporting(0);
	require_once "mysql.php";
	$conn = new Mysql();
	$Lbno = $_POST["Lbno"];
	$Lno = $_POST["Lno"];
	$sql = "select * from lendlb where Lbno = '$Lbno' and Lno = '$Lno'";
	$result = $conn->sql($sql);
	if($result){
		$sql = "select * from book where Bno = '$Lbno'";
		$result = $conn->sql($sql);
		if($result){
			$sql = "update book set Bqty = Bqty + 1 where Bno = '$Lbno'";
			$result = $conn->sql($sql);
			if($result){
				$sql = "delete from lendlb where Lbno = '$Lbno' and Lno = '$Lno'";
				$result = $conn->sql($sql);
				$sql = "update lcard set Lbkno = Lbkno - '1' where Lno = '$Lno'";
				$result = $conn->sql($sql);
				if($result){
					echo "<script>alert('还书成功');window.location.href = \"admin.php\";</script>";
					return;
				}
				else{
					$sql = "update book set Bqty = Bqty - 1 from book where Bno = '$Lbno'";
					$result = $conn->sql($sql);
				}
			}
		}
	}
	echo "<script>alert('还书失败');window.location.href = \"admin.php\";</script>";
	$conn->close();
?>