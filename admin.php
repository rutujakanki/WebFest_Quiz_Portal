<?php  
	include "db.php";
	$round = $entry = "";
	$roundErr = $entryErr = "";
	$result = "";
	if ($_SERVER['REQUEST_METHOD'] == "POST") {
		
		if ($_POST['round'] == 0) {
			$roundErr = "Select round";
		}else{
			$round = $_POST['round'];
		}

		if (empty($_POST['entry'])) {
			$entryErr = "Select number of Entries";
		}else{
			$entry = $_POST['entry'];
		}

		if ($round == 1) {
			$sql = "SELECT * FROM `user` WHERE `round`= '$round' ORDER BY `total` DESC LIMIT $entry";
			$result = mysqli_query($conn, $sql);	
		}elseif ($round == 3) {
			$sql = "SELECT * FROM `user` WHERE `round`= '$round' ORDER BY `total2` DESC LIMIT $entry";
			$result = mysqli_query($conn, $sql);	
		}
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
		.find table td{
			width: 33.3333%;
			padding: 2% 0 2% 0;
		}
		.find table{
			border-collapse: collapse;
			text-align: center;
			background-color: white;
			border: 1px solid #333;
		}
		.find table input[type=number],
		select{
			width: 95%;
			padding: 10px;
			border: 2px solid  	#808080;
		}
		.find table input[type=number]:hover,
		.find table input[type=number]:focus{
			background-color: #F0E68C;
		}
		.find table input[type=submit]{
			min-height: 15px;
			padding: 2%;
			min-width: 150px;
			border-radius: 10px;
			border:2px solid grey;
			background-color: #333;
			color: #fff;
			font-weight: bold;
		}
		.find table span{
			background-color: #808080;
			width: 100%;
			padding: 1% 10% 1% 10%;
			font-weight: bold;
			color: black;
		}
		.result table{
			border-collapse: collapse;
			margin-bottom: 100px;
		}
		.result table tr{
			border-bottom: 1px solid grey;
		}
		.result th{
			width: 12.5%;
			padding: 1%;
			background-color:  	#FF69B4;
		}
		.result td{
			text-align: center;
			padding: 0.5%;
		}
		.result table tr:nth-child(even){
			background-color:  	#E6E6FA;
		}
		.result{
			counter-reset: serial-number;
		}
		.result td:first-child:before{
			counter-increment: serial-number;
			content: counter(serial-number);
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
		.error{
			background-color: white;
			color: red;
		}
	</style>
</head>
<body>
	<header>
		<h2>A D M I N</h2>
	</header>
	<div class="find">
		<table width="100%">
			<form method="POST" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>">
				<tr>
					<td>
						<span>S E L E C T &nbsp;&nbsp;&nbsp;&nbsp; R O U N D</span>
						<select name="round">
							<option value="0">-=-=-=-=-=-=-=-=-=-=-SELECT OPTION=-=-=-=-=-=-=-=-=-=-=-=</option>
							<option value="1">R O U N D 1</option>
							<option value="3">R O U N D 2</option>
						</select>
						<p class="error"><?php echo $roundErr; ?></p>
					</td>
					<td>
						<span>E N T E R &nbsp;&nbsp;  N U M B E R &nbsp;&nbsp; O F &nbsp;&nbsp;  E N T R I E S</span>
						<input type="number" name="entry" value="<?php echo $entry; ?>">
						<p class="error"><?php echo $entryErr; ?></p>
					</td>
					<td>
						<input type="submit" name="submit" value="Show Result">
					</td>
				</tr>
		</table>
	</div>
	<div class="result">
		<table width="100%">
			<?php if ($round==1) {
			?>
				<tr>
					<th>Sr No.</th>
					<th>Group Id</th>
					<th>Mobile No.</th>
					<th>Member 1</th>
					<th>Member 2</th>
					<th>Webseries Marks</th>
					<th>Technical Marks</th>
					<th>Total</th>
				</tr>
				<?php 
					if (mysqli_num_rows($result) > 0) {
					while ($row = mysqli_fetch_array($result)) {
						$gid = $row['groupid'];
						$sql1 = "UPDATE `user` SET `round`= '2' WHERE `groupid`='$gid'";
						$result1 = mysqli_query($conn, $sql1); 
				?>
				<tr>
					<td>&nbsp;</td>
					<td><?php echo $row['groupid']; ?></td>
					<td><?php echo $row['mobileno']; ?></td>
					<td><?php echo $row['member1']; ?></td>
					<td><?php echo $row['member2']; ?></td>
					<td><?php echo $row['webmark']; ?></td>
					<td><?php echo $row['techmarks']; ?></td>
					<td><?php echo $row['total']; ?></td>
				</tr>
				<?php 	
				}
				}
				?>
			<?php
			}elseif ($round == 3) {
			?>
				<tr>
					<th>Sr No.</th>
					<th>Group Id</th>
					<th>Mobile No.</th>
					<th>Member 1</th>
					<th>Member 2</th>
					<th>Webseries Marks</th>
					<th>Technical Marks</th>
					<th>Total</th>
				</tr>
				<?php 
					if (mysqli_num_rows($result) > 0) {
					while ($row = mysqli_fetch_array($result)) {
						$gid = $row['groupid'];
						$sql1 = "UPDATE `user` SET `round`= '2' WHERE `groupid`='$gid'";
						$result1 = mysqli_query($conn, $sql1); 
				?>
				<tr>
					<td>&nbsp;</td>
					<td><?php echo $row['groupid']; ?></td>
					<td><?php echo $row['mobileno']; ?></td>
					<td><?php echo $row['member1']; ?></td>
					<td><?php echo $row['member2']; ?></td>
					<td><?php echo $row['webmark2']; ?></td>
					<td><?php echo $row['techmark2']; ?></td>
					<td><?php echo $row['total2']; ?></td>
				</tr>
				<?php 	
				}
				}
				?>
			<?php	
			} ?>
			


		</table>
		</form>
	</div>



	<footer>
		<p>Sinhgad Karandak | WEB'fest 2019</p>
	</footer>
</body>
</html>