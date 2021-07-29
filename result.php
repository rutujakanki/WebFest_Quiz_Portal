<?php  
	session_start();
	include_once("db.php");
	$groupid = $_SESSION['groupid'];
	if (empty($groupid)) {
		header("location: index.php");
	}
	$round = $_GET['round'];
		$sql = "SELECT * FROM user WHERE groupid = '$groupid'";
		$result = mysqli_query($conn, $sql);
		$show = mysqli_fetch_array($result);
	
	if (isset($_POST['submit'])) {
		unset($_SESSION['groupid']);
		session_destroy();
		header("Refresh:0; url='home.php'");
	}
?>
<!DOCTYPE html>
<html>
<head>
	<title>Result - WEB'fest</title>
	<style type="text/css">
		body{
			background-color: whitesmoke;
		}
		header{
			background-color: #333;
			padding: 1px;
			text-align: center;
			font-size: 20px;
			color: white;
		}
		footer{
			position: fixed;
			bottom: 0;
			right: 0;
			width: 100%;
			margin-bottom: 0%;
			background-color: #333;
			padding: 5px;
			text-align: center;
			font-size: 20px;
			color: white;
		}
		.card{
			margin:4% 0 2% 0;
		}
		table{
			text-align: center;
		}
		table td{
			padding: 1%;
			font-size: 20px;
			width: 33.3333%;
		}
		h3{
			width: 100%;
			text-align: center;
			color: #0594fa;
		}
		img{
			border-radius: 10px;
			box-shadow: 0 0 15px 1px rgba(4,0,0,0.5);
		}
		form{
			text-align: center;
		}
		form input{
			width: 200px;
			padding: 1%;
			background-color: green;
			color: #fff;
			border:none;
			border-radius: 10px;
			font-size: 15px;
			font-weight: bold;
		}
	</style>
</head>
<body>
	<header>
		<h2>R E S U L T</h2>
	</header>
	<div class="card">
		<table width="100%" cellspacing="0" cellpadding="0">
			<tr>
				<td><img src="media/result.jpg" width="100%"></td>
				<td>
					<table width="100%">
						<tr>
							<td colspan="3">
								Welcome: <b style="color:blue;"><?php echo $show['member1']; ?> & <?php echo $show['member2']; ?> </b>
							</td>
						</tr>
						<tr>
							<td colspan="3">
								<b style="color: red;">!!Congratulations!!</b> You score
							</td>
						</tr>
						<?php if ($round == 1) {
						?>
							<tr>
								<td colspan="3"><b>ROUND1</b></td>
							</tr>
							<tr bgcolor="#D2691E">
								<td>Webseries</td>
								<td>Aptitude</td>
								<td>Total</td>
							</tr>
							<tr bgcolor="#FFF8DC">
								<td><b><?php echo $show['webmark']; ?> / 25</b></td>
								<td><b><?php echo $show['techmarks']; ?> / 50</b></td>
								<td><b><?php echo $show['total']; ?> / 75</b></td>
							</tr>
						<?php
						}else{
						?>
							<tr>
								<td colspan="3"><b style="color: green; border-bottom: 2px solid black;">ROUND2</b></td>
							</tr>
							<tr bgcolor="#D2691E">
								<td>Webseries</td>
								<td>Technical</td>
								<td>Total</td>
							</tr>
							<tr bgcolor="#FFF8DC">
								<td><b><?php echo $show['webmark2']; ?> / 25</b></td>
								<td><b><?php echo $show['techmark2']; ?> / 50</b></td>
								<td><b><?php echo $show['total2']; ?> / 75</b></td>
							</tr>
						<?php	
						} ?>
					</table>
					<h3>Stay tuned for "WINNER"</h3>
					<form method="POST">
						<input type="submit" name="submit" value="Log Out">
					</form>
				</td>
			</tr>
		</table>
	</div>
	<footer>
		WEB'fest 2019 | sinhgad karandak
	</footer>
</body>
</html>