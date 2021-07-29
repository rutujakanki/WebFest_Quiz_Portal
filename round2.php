<?php  
	session_start();
	include "db.php";
	$selectQuestion = $_SESSION['selectQuestion'];
	$groupid = $_SESSION['groupid'];
	$webMark = $_SESSION['webMark'];
	$techMark = $_SESSION['techMark'];
	$close = $_SESSION['close'];

	if (empty($groupid)) {
		header("location: home.php");
	}
	//storing webseries no to the distinct variable
	$webseries = $_SESSION['webseries'];
	$movieseries = $_SESSION['movieseries'];
	$quSet1 = $webseries[1];
	$quSet2 = $webseries[3];
	$quSet3 = $movieseries[1];
	$quSet4 = $movieseries[3];

	//selectQuestion checking
	if ($_SESSION['selectQuestion'] > 4) {
		$selectQuestion = 1;
		$_SESSION['selectWeb']++;
		$_SESSION['selectQuestion'] = 1;
	}
	
	$selectQuestion = $_SESSION['selectQuestion'];
	
	//selecting one by one question from choice selected
	if ($selectQuestion == 1) {

		$qu = $_SESSION['selectWeb'] + questionSet($quSet1);
		$sql = "SELECT * FROM `webseries` WHERE `id`='$qu' AND `seriesname`='$quSet1'";
		$result = mysqli_query($conn, $sql);
		$show = mysqli_fetch_array($result);

	}elseif ($selectQuestion == 2) {

		$qu = $_SESSION['selectWeb'] + questionSet($quSet2);
		$sql = "SELECT * FROM `webseries` WHERE `id`='$qu' AND `seriesname`='$quSet2'";
		$result = mysqli_query($conn, $sql);
		$show = mysqli_fetch_array($result);

	}elseif ($selectQuestion == 3) {

		$qu = $_SESSION['selectWeb'] + questionSet($quSet3);
		$sql = "SELECT * FROM `webseries` WHERE `id`='$qu' AND `seriesname`='$quSet3'";
		$result = mysqli_query($conn, $sql);
		$show = mysqli_fetch_array($result);

	}elseif ($selectQuestion == 4) {

		$qu = $_SESSION['selectWeb'] + questionSet($quSet4);
		$sql = "SELECT * FROM `webseries` WHERE `id`='$qu' AND `seriesname`='$quSet4'";
		$result = mysqli_query($conn, $sql);
		$show = mysqli_fetch_array($result);

	}
	
	//error variable declaration
	$error = "";
	//on submitting the form
	if ($_SERVER['REQUEST_METHOD'] == 'POST') {
		if (isset($_POST['submit'])) {
			if (empty($_POST['option'])) {
				$error = "SELECT ONE OPTION";
			}else{
				$answer = $_POST['option'];
				$_SESSION['selectQuestion']++;
				if ($answer == $show['answer']) {
					$_SESSION['webMark'] = $_SESSION['webMark'] + 1;
					$_SESSION['techNo'] = $_SESSION['techNo'] + 1;
					$_SESSION['techShow'] = 1;
					header('location: round2.php');
				}else{
					$_SESSION['webNo'] = $_SESSION['webNo'] + 1;
					if ($_SESSION['selectWeb'] >= 14) {
						$_SESSION['selectWeb'] = 1;
					}
					header('location: round2.php');
				}
			}	
		}
	}
	function questionSet($seriesname){
		if ($seriesname == 0) {
			$ret = 0;
		}elseif ($seriesname == 1) {
			$ret = 15;
		}elseif ($seriesname == 2) {
			$ret = 30;
		}elseif ($seriesname == 3) {
			$ret = 45;
		}elseif ($seriesname == 4) {
			$ret = 60;
		}elseif ($seriesname == 5) {
			$ret = 75;
		}elseif ($seriesname == 6) {
			$ret = 90;
		}elseif ($seriesname == 7) {
			$ret = 105;
		}elseif ($seriesname == 8) {
			$ret = 120;
		}elseif ($seriesname == 9) {
			$ret = 135;
		}

		return $ret;
	}


	
	if ($_SESSION['webNo'] > 25) {
		unset($_SESSION['webNo']);
		unset($_SESSION['techNo']);
		unset($_SESSION['techShow']);
		unset($_SESSION['selectWeb']);
		unset($_SESSION['selectTech']);
		unset($_SESSION['selectQuestion']);
		$total = $_SESSION['webMark'] + $_SESSION['techMark'];
		$sql = "UPDATE `user` SET `webmark2`='$webMark',`techmark2`='$techMark',`total2`='$total' WHERE `groupid`='$groupid'";
		mysqli_query($conn,$sql);
		header("location: result.php?round=2");
	}
	
	if ($_SESSION['close'] == 1) {
		unset($_SESSION['webNo']);
		unset($_SESSION['techNo']);
		unset($_SESSION['techShow']);
		unset($_SESSION['selectWeb']);
		unset($_SESSION['selectTech']);
		unset($_SESSION['selectQuestion']);
		$total = $_SESSION['webMark'] + $_SESSION['techMark'];
		$sql = "UPDATE `user` SET `webmark2`='$webMark',`techmark2`='$techMark',`total2`='$total' WHERE `groupid`='$groupid'";
		mysqli_query($conn,$sql);
		header("location: result.php?round=2");
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
		<h3>R O U N D - 2</h3>
	</header>
	<div class="mainDiv">
		<table class="border" width="100%">
			<tr>
				<td id="head"><span>WEB QU NO: <label><?php echo $_SESSION['webNo']; ?></label></span></td>
				<td id="head"><span>TIME: <label id="time"></label></div></span></td>
				<td id="head"><span>TECH QU NO: <label><?php echo $_SESSION['techNo']; ?></label></span></td>
			</tr>
			<tr>
				<td width="40%">
					<table id="webQu" width="100%" cellspacing="0">
						<?php if ($_SESSION['techShow'] == 1) {
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
						if ($_SESSION['techShow'] == 1) {
							include "tech.php";
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