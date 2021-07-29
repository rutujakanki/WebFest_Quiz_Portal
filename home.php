<?php  
	session_start();
	include "db.php";
	
	$webErr = $movErr = "";
	$checks = $check1Err = "";
	$checkss = $check2Err = "";
	$groupid = $groupidErr = $mobileNo = $mobileNoErr = $branch = $branchErr ="";
	if ($_SERVER['REQUEST_METHOD'] == "POST") {
		
		//webseries selection
		if (empty($_POST['check1'])) {
			$check1Err = "Select two webseries";
		}else{
			$checked_count = count($_POST['check1']);
			if($checked_count != 2){
				$check1Err = "You have to select only two web series";
			}else{
				foreach($_POST['check1'] as $selected) {
					$checks .= " ".$selected;
				}
			}
		}	

		//movie series selection
		if (empty($_POST['check2'])) {
			$check2Err = "Select two movie series";
		}else{
			$checked_count = count($_POST['check2']);
			if($checked_count != 2){
				$check2Err = "You have to select only two movie series";
			}else{
				foreach($_POST['check2'] as $selected) {
					$checkss .= " ".$selected;
				}
			}
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
			}else{
				$sql = "";
			}
		}else{
			$mobileNoErr = "Mobile number must not be empty";
		}

		//for selecting branch
		if($_POST['branch'] == ""){
			$branchErr .= "You forgot to select branch</li>";
		}else{
			$branch = $_POST['branch'];
		}


		if (($groupidErr == "") && ($mobileNoErr == "") && ($check1Err == "") && ($check2Err == "") && ($branchErr == "")) {
			
			$sql = "SELECT * FROM `user` WHERE `mobileno`= '$mobileNo' AND `groupid`= '$groupid' AND `round`= 2 ";
			$result = mysqli_query($conn,$sql);
			if (mysqli_num_rows($result) > 0) {
				mysqli_query($conn, "UPDATE `user` SET `branch`='$branch', `round` = 3 WHERE `groupid`= '$groupid'");
				$_SESSION['groupid'] = $groupid;
				$_SESSION['countdown'] = 25*60;
				$_SESSION['selectWeb'] = rand(1,9);
				$_SESSION['selectTech'] = mt_rand(1,5);
				$_SESSION['webNo'] = 1;
				$_SESSION['techNo'] = 0;
				$_SESSION['techShow'] = 0;
				$_SESSION['webMark'] = 0;
				$_SESSION['techMark'] = 0;
				$_SESSION['id'] = 0;
				$_SESSION['close'] = 0;
				$_SESSION['selectQuestion'] = 1;
				$_SESSION['branch'] = $branch;
				$_SESSION['webseries'] = $checks;
				$_SESSION['movieseries'] = $checkss;
				header("location: round2.php");
			}else{
				echo "<script> alert('Oops.. Something wents wrong. You might be enter invalid credential or your are not qualified to round 2'); </script>";
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
			background-color: whitesmoke;	
		}
		header{
			background-color: #333;
			color:#fff;
			text-align: center;
			width: auto;
			padding: 0.2%;
		}
		#ul{
			list-style-type: none;
		}
		#li{
			//display: inline-block;
		}
		input[type="checkbox"][id^="cb"] {
			display: none;
		}
		label {
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
		label::before {
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
		label img {
			transition-duration: 0.2s;
			transform-origin: 50% 50%;
		}
		:checked+label {
			border-color: #ddd;
		}
		:checked+label::before {
			content: "✓";
			background-color: #035996;
			transform: scale(1);
		}

		:checked+label img {
			transform: scale(0.9);
			box-shadow: 0 0 5px #333;
			z-index: -1;
		}
		.main{
			margin: 1% 0 4% 0;
		}
		.main #heading{
			font-size: 17px;
			text-align: center;
			border-bottom: 1px solid grey;
		}
		.mainLogin{
			background-image: url("media/r2back.png");
			background-size: cover;
		}
		.login{
			text-align: center;
			border-collapse: collapse;
			width: 80%;
			margin: 0 10% 0 10%;
		}
		.login td{
			padding: 0px;
			width: 40%;
		}
		.login input[type=text],select{
			width: 90%;
			padding:4% 0 4% 10px;
			min-height: 15px;
			border:none;
			border:1px solid grey;
			border-bottom: 2px solid black;
		}
		.login p{
			background-color: black;
			color: white;
			min-height: 15px;
			padding: 4%;
		}
		.login input[type=reset],
		.login input[type=submit]{
			width: 45%;
			min-height: 30px;
			border:none;
			border-radius: 30px;
			color:white;
		}
		.login input[type=reset]{
			background-color: red;
		}
		.login input[type=submit]{
			background-color: #035996;
		}
		.login td input[type=text]:hover{
			background-color: #E0FFFF;
		}
		.login td input[type=text]:focus{
			background-color: #ADFF2F;
		}
		.login td input[type=reset]:hover,
		.login td input[type=submit]:hover,
		.login td input[type=reset]:focus,
		.login td input[type=submit]:focus{
			color: black;
			background-color: #5F9EA0;
		}
		.error{
			text-align: center;
			color: red;
			font-weight: bold;
			font-size: 14px;
			margin:0 auto 0 auto;
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
		<h2>R O U N D - 2</h2>
	</header>
		<table class="main" width="100%">
			<form method="POST" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>">
				<tr>
					<td width="40%">
						<table>
							<tr>
								<td colspan="2" id="heading">C h o o s e&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;f r o m&nbsp;&nbsp;&nbsp;e a c h&nbsp;&nbsp;&nbsp;c o l u m n</td>
							</tr>
							<tr id="ul">
								<td id="li" class="error"><?php echo $check1Err; ?></td>
								<td id="li" class="error"><?php echo $check2Err; ?></td>
							</tr>
							<tr id="ul">
								<td id="li">
									<input type="checkbox" name="check1[]" value="0" id="cb1">
									<label for="cb1"><img src="media/flex/friends.jpg" width="100%"></label>
								</td>
								<td id="li">
									<input type="checkbox" name="check2[]" value="1" id="cb2">
									<label for="cb2"><img src="media/flex/harrypotter.jpg" width="100%"></label>
								</td>
							</tr>
							<tr id="ul">
								<td id="li">
									<input type="checkbox" name="check1[]" value="2" id="cb3">
									<label for="cb3"><img src="media/flex/got.jpg" width="100%"></label>
								</td>
								<td id="li">
									<input type="checkbox" name="check2[]" value="3" id="cb4">
									<label for="cb4"><img src="media/flex/avengers.jpg" width="100%"></label>
								</td>
							</tr>
							<tr id="ul">
								<td id="li">
									<input type="checkbox" name="check1[]" value="4" id="cb5">
									<label for="cb5"><img src="media/flex/bbt.png" width="100%"></label>
								</td>
								<td id="li">
									<input type="checkbox" name="check2[]" value="5" id="cb6">
									<label for="cb6"><img src="media/flex/fastandfurious.jpg" width="100%"></label>
								</td>
							</tr>
							<tr id="ul">
								<td id="li">
									<input type="checkbox" name="check1[]" value="6" id="cb7">
									<label for="cb7"><img src="media/flex/sacredgames.jpg" width="100%"></label>
								</td>
								<td id="li">
									<input type="checkbox" name="check2[]" value="7" id="cb8">
									<label for="cb8"><img src="media/flex/twilight.jpg" width="100%"></label>
								</td>
							</tr>
							<tr id="ul">
								<td id="li">
									<input type="checkbox" name="check1[]" value="8" id="cb9">
									<label for="cb9"><img src="media/flex/breakingbad.jpg" width="100%"></label>
								</td>
								<td id="li">
									<input type="checkbox" name="check2[]" value="9" id="cb10">
									<label for="cb10"><img src="media/flex/poc.jpg" width="100%"></label>
								</td>
							</tr>
						</table>
					</td>
					<td width="20%"><img src="media/ass_cred.png" width="100%"></td>
					<td width="40%" class="mainLogin">
						<table width="60%" class="login">
							<tr>
								<td><p>Group ID: </p></td>
								<td>
									<input type="text" name="groupid" value="<?php echo $groupid; ?>">
									<span class="error"><?php echo $groupidErr; ?></span>
								</td>
							</tr>
							<tr>
								<td><p>Mobile Number: </p></td>
								<td>
									<input type="text" name="mobileno" value="<?php echo $mobileNo; ?>">
									<span class="error"><?php echo $mobileNoErr; ?></span>
								</td>
							</tr>
							<tr>
								<td><p>Branch</p></td>
								<td>
									<select name="branch">
										<option value="">----------SELECT----------</option>
										<option value="CO">Computer / IT</option>
										<option value="ME">Mechanical / Production</option>
										<option value="CE">Civil</option>
										<option value="ET">Electronics and Tele- Communication</option>
										<option value="CH">Chemical</option>
									</select>
									<span class="error"><?php echo $branchErr; ?></span>
								</td>
							</tr>
							<tr>
								<td></td>
								<td>
									<input type="reset" name="" value="Clear">
									<input type="submit" name="" value="Start">
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</form>
		</table>
	<footer>
		<p>Sinhgad Karandak | WEB'fest 2019</p>
	</footer>
</body>
</html>