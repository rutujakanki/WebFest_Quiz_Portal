<?php  
	session_start();
	include "db.php";
	$selectQuestion = $_SESSION['selectQuestion'];
	$groupid = $_SESSION['groupid'];
	$webMark = $_SESSION['webMark'];
	$aptiMark = $_SESSION['aptiMark'];
	$close = $_SESSION['close'];
	$group = $_SESSION['group'];
	$webNo = $_SESSION['webNo'];

	if (empty($groupid)) {
		header("location: index.php");
	}

	
	if ($group == 0) {

		//selectQuestion checking
		if ($_SESSION['selectQuestion'] > 3) {
			$selectQuestion = 1;
			$_SESSION['selectWeb']++;
			$_SESSION['selectQuestion'] = 1;
		}
		
		$selectQuestion = $_SESSION['selectQuestion'];
		//selecting one by one question from choice selected
		if ($selectQuestion == 1) {

			$qu = $_SESSION['selectWeb'] + 0;
			$sql = "SELECT * FROM `r1g1` WHERE `id`='$qu'";
			$result = mysqli_query($conn, $sql);
			$show = mysqli_fetch_array($result);

		}elseif ($selectQuestion == 2) {

			$qu = $_SESSION['selectWeb'] + 17;
			$sql = "SELECT * FROM `r1g1` WHERE `id`='$qu'";
			$result = mysqli_query($conn, $sql);
			$show = mysqli_fetch_array($result);

		}elseif ($selectQuestion == 3) {

			$qu = $_SESSION['selectWeb'] + 34;
			$sql = "SELECT * FROM `r1g1` WHERE `id`='$qu'";
			$result = mysqli_query($conn, $sql);
			$show = mysqli_fetch_array($result);
		}
	}elseif($group == 1){
		//selectQuestion checking
		if ($_SESSION['selectQuestion'] > 5) {
			$selectQuestion = 1;
			$_SESSION['selectWeb']++;
			$_SESSION['selectQuestion'] = 1;
		}
		
		$selectQuestion = $_SESSION['selectQuestion'];

		//selecting one by one question from choice selected
		if ($selectQuestion == 1) {

			$qu = $_SESSION['selectWeb'] + 0;
			$sql = "SELECT * FROM `r1g2` WHERE `id`='$qu'";
			$result = mysqli_query($conn, $sql);
			$show = mysqli_fetch_array($result);

		}elseif ($selectQuestion == 2) {

			$qu = $_SESSION['selectWeb'] + 17;
			$sql = "SELECT * FROM `r1g2` WHERE `id`='$qu'";
			$result = mysqli_query($conn, $sql);
			$show = mysqli_fetch_array($result);

		}elseif ($selectQuestion == 3) {

			$qu = $_SESSION['selectWeb'] + 34;
			$sql = "SELECT * FROM `r1g2` WHERE `id`='$qu'";
			$result = mysqli_query($conn, $sql);
			$show = mysqli_fetch_array($result);

		}elseif ($selectQuestion == 4) {

			$qu = $_SESSION['selectWeb'] + 51;
			$sql = "SELECT * FROM `r1g2` WHERE `id`='$qu'";
			$result = mysqli_query($conn, $sql);
			$show = mysqli_fetch_array($result);

		}elseif ($selectQuestion == 5) {

			$qu = $_SESSION['selectWeb'] + 68;
			$sql = "SELECT * FROM `r1g2` WHERE `id`='$qu'";
			$result = mysqli_query($conn, $sql);
			$show = mysqli_fetch_array($result);

		}
	}
	$error = "";
	if ($_SERVER['REQUEST_METHOD'] == 'POST') {
		if (isset($_POST['submit'])) {
			if (empty($_POST['option'])) {
				$error = "SELECT ONE OPTION";
			}else{
				$answer = $_POST['option'];
				if ($answer == $show['answer']) {
					$_SESSION['webMark'] = $_SESSION['webMark'] + 1;
					$_SESSION['aptiNo'] = $_SESSION['aptiNo'] + 1;
					$_SESSION['aptiShow'] = 1;
					header('location: round1.php');
				}else{
					$_SESSION['webNo'] = $_SESSION['webNo'] + 1;
					$_SESSION['selectQuestion']++;
					if ($_SESSION['selectWeb'] >= 17) {
						$_SESSION['selectWeb'] = 1;
					}
					header('location: round1.php');
				}
			}
		}
	}



	if ($_SESSION['webNo'] > 25) {
		unset($_SESSION['webNo']);
		unset($_SESSION['aptiNo']);
		unset($_SESSION['aptiShow']);
		unset($_SESSION['selectWeb']);
		unset($_SESSION['selectApti']);
		unset($_SESSION['selectQuestion']);
		$total = $_SESSION['webMark'] + $_SESSION['aptiMark'];
		$sql = "UPDATE `user` SET `webmark`='$webMark',`techmarks`='$aptiMark',`total`='$total' WHERE `groupid`='$groupid'";
		mysqli_query($conn,$sql);
		header("location: result.php?round=1");
	}
	if ($_SESSION['close'] == 1) {
		unset($_SESSION['webNo']);
		unset($_SESSION['aptiNo']);
		unset($_SESSION['aptiShow']);
		unset($_SESSION['selectWeb']);
		unset($_SESSION['selectApti']);
		unset($_SESSION['selectQuestion']);
		$total = $_SESSION['webMark'] + $_SESSION['aptiMark'];
		$sql = "UPDATE `user` SET `webmark`='$webMark',`techmarks`='$aptiMark',`total`='$total' WHERE `groupid`='$groupid'";
		mysqli_query($conn,$sql);
		header("location: result.php?round=1");
	}else{
		header('refresh:1505');
	}
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<script type="text/javascript" src="jquery.min.js"></script>
	<style type="text/css">
		body{
			background-color: whitesmoke;
		}
		header{
			background-color: #333;
			color:#fff;
			text-align: center;
			width: auto;
			padding: 0.2%;
		}
		#head{
			background-color:  	#008B8B;
			text-align: center;
			padding: 0.5%;
		}
		#head label{
			padding: 0.2% 10px 0.2% 10px;
			background-color: #fff;
			color:black;
			font-weight: bold;
			font-size: 18px;
		}
		.border{
			border-collapse: collapse;
		}
		#webQu{
			background-color: #fff;
			box-shadow: 0 0 15px 1px rgba(4,0,0,0.5);
		}
		#webQu td{
			width: 50%;
			padding: 5% 3% 5% 2%;
		}
		#aptiQu{
			background-color: #fff;
		}
		#one{
			background-color: #FAEBD7;
		}
		#two{
			background-color: #F0F8FF;
		}
		input[type=radio]{
			-ms-transform: scale(1.2); /* IE 9 */
		    -webkit-transform: scale(1.2); /* Chrome, Safari, Opera */
		    transform: scale(1.2);
		}
		input[type=reset],
		input[type=submit]{
			min-height: 15px;
			width: 45%;
			padding: 4%;
			border-radius: 30px;
			border:none;
			color: #fff;
			font-weight: bold;
		}
		input[type=reset]{
			background-color: #A52A2A;
		}
		input[type=submit]{
			background-color: #556B2F;
		}
		input[type=reset]:hover,
		input[type=submit]:hover,
		input[type=reset]:focus,
		input[type=submit]:focus{
			color: black;
			background-color: #5F9EA0;
		}
		.error{
			color: red;
			font-weight: bold;
		}
		footer{
			background-color: #333;
			color:#fff;
			text-align: center;
			position: fixed;
			width: 100%;
			bottom: 0;
			right: 0;
		}
		footer p{
			padding: 0.4%;
			margin:0;
		}
	</style>
</head>
<body>
	<header>
		<h3>R O U N D - 1</h3>
	</header>
	<div class="mainDiv">
		<table class="border" width="100%">
			<tr>
				<td id="head"><span>WEB QU NO: <label><?php echo $_SESSION['webNo']; ?></label></span></td>
				<td id="head"><span>TIME: <label id="time"></label></div></span></td>
				<td id="head"><span>APTI QU NO: <label><?php echo $_SESSION['aptiNo']; ?></label></span></td>
			</tr>
			<tr>
				<td width="40%">
					<table id="webQu" width="100%" cellspacing="0">
						<?php if ($_SESSION['aptiShow'] == 1) {
							echo "<h1>SOLVE APTITUDE</h1>";
						}else{ ?>
						<form method="POST" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>">
							<tr>
								<td colspan="2">QU - <?php echo $show['question']; ?><label></label></td>
							</tr>
							<tr>
								<td id="one">
									<input type="radio" name="option" value="A"><label><?php echo $show['option1']; ?></label>
								</td>
								<td id="two">
									<input type="radio" name="option" value="B"><label><?php echo $show['option2']; ?></label>
								</td>
							</tr>
							<tr>
								<td id="two">
									<input type="radio" name="option" value="C"><label><?php echo $show['option3']; ?></label>
								</td>
								<td id="one">
									<input type="radio" name="option" value="D"><label><?php echo $show['option4']; ?></label>
								</td>
							</tr>
							<tr>
								<td class="error"><?php echo $error; ?></td>
								<td>
									<input type="reset" name="reset" value="Clear">
									<input type="submit" name="submit" value="Submit">
								</td>
							</tr>
						</form>
						<?php } ?>
					</table>
				</td>
				<td width="10%"><img src="media/sword.png" width="100%"></td>
				<td width="40%">
					<?php  
						if ($_SESSION['aptiShow'] == 1) {
							include "apti.php";
						}else{
							echo "<img src='media/r2back.png' width = '100%'>";
						}
					?>
				</td>
			</tr>
		</table>
	</div>
	<footer>
		<p>Sinhgad Karandak | WEB'fest 2019</p>
	</footer>
</body>
</html>
<script type="text/javascript">
	$(document).ready( function(){
		$('#time').load('timer.php');
		refresh();
	});
 
	function refresh()
	{
		setTimeout( function() {
		  $('#time').load('timer.php');
		  refresh();
		}, 1000);
	}
</script>