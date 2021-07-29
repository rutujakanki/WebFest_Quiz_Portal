<?php  
	include "db.php";
	$random = $_SESSION['selectApti'];

	$aptiQ = $random + 2;
	if ($aptiQ > 60) {
		$aptiQ = 2;
		$_SESSION['selectApti'] = 2;
	}elseif ($aptiQ == 60) {
		$aptiQ = 1;
		$_SESSION['selectApti'] = 1;
	}
	$sql = "SELECT * FROM aptitude WHERE id = '$aptiQ'";
	$result = mysqli_query($conn, $sql);
	$show1 = mysqli_fetch_array($result);
	if ($_SERVER['REQUEST_METHOD'] == 'POST') {
		if (isset($_POST['apti'])) {
			if (empty($_POST['option'])) {
				$error = "SELECT ONE OPTION";
			}else{
				$answer = $_POST['option'];
				if ($answer == $show1['answer']) {
					$_SESSION['aptiMark'] = $_SESSION['aptiMark'] + 2;
				}
				$_SESSION['selectQuestion']++;
				$_SESSION['webNo'] = $_SESSION['webNo'] + 1;
				$_SESSION['selectApti'] = $_SESSION['selectApti'] + 2;
				$_SESSION['aptiShow'] = 0;
				header('location: round1.php');
			}	
		}
	}
?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<style type="text/css">
		#aptiQu{
			background-color: #fff;
			box-shadow: 0 0 15px 1px rgba(4,0,0,0.5);
		}
		#aptiQu td{
			width: 50%;
			padding: 5% 3% 5% 2%;
		}
		#aptiQu #one{
			background-color: #F0F8FF;
		}
		#aptiQu #two{
			background-color: #FAEBD7;
		}
		.error{
			color: red;
			font-weight: bold;
		}
	</style>
</head>
<body>
	<form method="POST" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>">
		<table id="aptiQu" width="100%" cellspacing="0">
			<tr>
				<td colspan="2">QU - <?php echo $show1['question']; ?></td>
			</tr>
			<tr>
				<td id="one">
					<input type="radio" name="option" value="A"><label><?php echo $show1['option1']; ?></label>
				</td>
				<td id="two">
					<input type="radio" name="option" value="B"><label><?php echo $show1['option2']; ?></label>
				</td>
			</tr>
			<tr>
				<td id="two">
					<input type="radio" name="option" value="C"><label><?php echo $show1['option3']; ?></label>
				</td>
				<td id="one">
					<input type="radio" name="option" value="D"><label><?php echo $show1['option4']; ?></label>
				</td>
			</tr>
			<tr>
				<td><span class="error"><?php echo $error; ?></span></td>
				<td>
					<input type="reset" name="reset" value="Clear">
					<input type="submit" name="apti" value="Submit">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>