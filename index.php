<?php 
	include "db.php";
	session_start();
	$groupid = $mobileNo = "";
	$groupidErr = $mobileNoErr = "";
	$radio = $radioErr = "";

	if($_SERVER["REQUEST_METHOD"] == "POST"){
		//for series group
		if (!isset($_POST['select'])) {
			$radioErr = "Select your choice";
		}else{
			$radio = $_POST['select'];
		}
		//for group id
		if (!empty($_POST['groupid'])) {
			$groupid = test_input($_POST['groupid']);
			if (!preg_match("/^[A-Za-z0-9]{5}+$/", $groupid)) {
				$groupidErr = "Invalid Group Id";
			}else{
				$groupid = strtoupper($groupid);
			}
		}else{
			$groupidErr = "Group ID must not be empty";
		}
		//for mobile number
		if (!empty($_POST['mobileno'])) {
			$mobileNo = test_input($_POST['mobileno']);
			if (!preg_match("/^[0-9]{10}+$/", $mobileNo)) {
				$mobileNoErr = "Invalid Mobile Number";
			}
		}else{
			$mobileNoErr = "Mobile number must not be empty";
		}
		if (($groupidErr == "") && ($mobileNoErr == "") && ($radioErr == "")) {
			$sql = "SELECT groupid,mobileno FROM user WHERE groupid = '$groupid' AND mobileno = '$mobileNo' AND round = 0";
			$result = mysqli_query($conn, $sql);
			if (mysqli_num_rows($result) > 0) {
				$sql = "UPDATE `user` SET `round`= 1 WHERE `groupid` = '$groupid'";
				mysqli_query($conn,$sql);
				$_SESSION['groupid'] = $groupid;
				$_SESSION['countdown'] = 25*60;
				$_SESSION['selectWeb'] = mt_rand(1,9);
				$_SESSION['selectApti'] = mt_rand(1,50);
				$_SESSION['webNo'] = 1;
				$_SESSION['aptiNo'] = 0;
				$_SESSION['aptiShow'] = 0;
				$_SESSION['webMark'] = 0;
				$_SESSION['aptiMark'] = 0;
				$_SESSION['id']=0;
				$_SESSION['close'] = 0;
				$_SESSION['group'] = $radio;
				$_SESSION['selectQuestion'] = 1;
				header("location: round1.php");
			}else{
				echo "<script>
						alert('You are not registered to the Competition OR you already finished the test.');
					  </script>";
			}
		}
	}

	function test_input($data){
		$data = trim($data);
		$data = stripslashes($data);
		$data = htmlspecialchars($data);
		return $data;
	}
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<style type="text/css">
		body{
			background-image: url("media/mainFrame.png");
			background-repeat: no-repeat;
			background-size: cover;
		}
		.card{
			width: 50%;
			min-height: 10%;
			background-color: #fff;
			margin: 14.5% 25% 0 25%;
			text-align: center;
			padding: 1% 0 1% 0;
			border:2px solid black;
			box-shadow: 0 0 15px 1px rgba(4,0,0,2);
			border-radius: 10px;
		}
		#ul{
			list-style-type: none;
		}
		#li{
			//display: inline-block;
		}
		input[type="radio"][id^="cb"] {
			display: none;
		}
		#img {
			border: 1px solid #fff;
			display: block;
			position: relative;
			cursor: pointer;
			-webkit-touch-callout: none;
			-webkit-user-select: none;
			-khtml-user-select: none;
			-moz-user-select: none;
			-ms-user-select: none;
			user-select: none;
		}
		#img::before {
			background-color: white;
			color: white;
			content: " ";
			display: block;
			border-radius: 50%;
			border: 1px solid grey;
			position: absolute;
			top: -5px;
			left: -5px;
			width: 25px;
			height: 25px;
			text-align: center;
			line-height: 28px;
			transition-duration: 0.4s;
			transform: scale(0);
		}
		#img img {
			transition-duration: 0.2s;
			transform-origin: 50% 50%;
		}
		:checked+#img {
			border-color: #ddd;
		}
		:checked+#img::before {
			content: "✓";
			background-color: #035996;
			transform: scale(1);
			z-index: 3;
		}

		:checked+#img img {
			transform: scale(0.9);
			box-shadow: 0 0 5px #333;
		}
		.form{
			margin: 1px 0 1px 0;
		}
		.form td{
			width: 50%;
			padding: 0px;
			margin:0px;
		}
		.form td h4{
			width: 100%;
			background-color: #333;
			color:#fff;
			padding: 1%;
		}
		.form td p{
			background-color: #DAA520;
			padding: 5%;
			min-height: 15px;
		}
		.form td input[type=text]{
			width: 90%;
			padding: 5%;
			min-height: 15px;
			border:none;
			border:1px solid grey;
			border-bottom: 2px solid black;
		}
		.form td input[type=reset],
		.form td input[type=submit]{
			width: 45%;
			padding: 5%;
			border-radius: 50px;
			border:none;
			color: #fff;
		}
		.form td input[type=reset]{
			background-color: red;
		}
		.form td input[type=submit]{
			background-color: #035996;
		}
		.form td input[type=text]:hover{
			background-color: #E0FFFF;
		}
		.form td input[type=text]:focus{
			background-color: #ADFF2F;
		}
		.form td input[type=reset]:hover,
		.form td input[type=submit]:hover,
		.form td input[type=reset]:focus,
		.form td input[type=submit]:focus{
			color: black;
			background-color: #5F9EA0;
		}
		.radio-group{
			padding-left: 10px;
		}
		.error{
			color: red;
			font-size: 14px;
			margin:0 auto 0 auto;
		}
		input[type=radio]{
			-ms-transform: scale(1.4); /* IE 9 */
		    -webkit-transform: scale(1.4); /* Chrome, Safari, Opera */
		    transform: scale(1.4);
		}
		#choose{
			border-bottom: 2px dashed grey;
		}
	</style>
</head>
<body>
	<div class="card">
		<form method="POST" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>">
			<table width="100%">
				<tr>
					<td colspan="3">
						<span style="font-size: 25px;">R O U N D  1</span>
					</td>
				</tr>
				<tr>
					<td width="44%">
						<div style="margin: 0 0 0 10px;">
							<div class="radio-group">
								<p id="choose">C H O O S E &nbsp; G R O U P</p>
								<div id="ul">
									<span id="li">
										<input type="radio" name="select" value="0" id="cb1">
										<label id="img" for="cb1"><img src="media/r1g1.png" width="100%" height="90px"></label>
									</span>
									<hr style="border: 1px solid #A9A9A9;">
									<span id="li">
										<input type="radio" name="select" value="1" id="cb2">
										<label id="img" for="cb2"><img src="media/r1g2.png" width="100%" height="90px"></label>
									</span>
								</div>
							</div>
						</div>
						<span class="error"><?php echo $radioErr; ?></span>
					</td>
					<td width="4%" style="text-align: center;">
						| <br>
						| <br>
						| <br>
						| <br>
						| <br>
						| <br>
						| <br>
						| <br>
						| <br>
						| <br>
					</td>
					<td width="48%">
						<table class="form" cellspacing="0">
							<tr>
								<td><p>GROUP ID:</p></td>
								<td>
									<input type="text" name="groupid" maxlength="6" placeholder="Enter Group ID">
								</td>
							</tr>
							<tr>
								<td></td>
								<td><span class="error"><?php echo $groupidErr; ?></span></td>
							</tr>
							<tr>
								<td><p>MOBILE NO:</p></td>
								<td><input type="text" name="mobileno" maxlength="10" placeholder="Enter Mobile Number"></td>
							</tr>
							<tr>
								<td></td>
								<td><span class="error"><?php echo $mobileNoErr; ?></span></td>
							</tr>
							<tr>
								<td></td>
								<td>
									<input type="reset" name="reset" value="Clear">
									<input type="submit" name="submit" value="Start">
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
						
		</form>
	</div>
</body>
</html>