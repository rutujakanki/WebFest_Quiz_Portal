<?php 
	session_start();
	if($_SESSION['id'] == 0){
		$_SESSION['time_started'] = time();
		$_SESSION['id']=1;
	}
	$timeLeft = "";
	$now = time();

	$timeSince = $now - $_SESSION['time_started'];

	$remainingSeconds = abs($_SESSION['countdown'] - $timeSince);
	$minute = floor($remainingSeconds/60);
	$second = $remainingSeconds%60;
	if($minute<10){
		$minute = "0".$minute;
	}
	if($second<10){
		$second = "0".$second;
	}
	if($remainingSeconds < 1){
		echo "<script>
				alert('Oops... Time Finished.... Logout in 5 Second');
			";
		$_SESSION['close'] = 1;
	}else{
		$timeLeft = "00:".$minute.":".$second;
	}
	echo $timeLeft; 
?>