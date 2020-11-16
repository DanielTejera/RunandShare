<?PHP
$hostname_localhost = "localhost";
$database           = "runandshare";
$username           = 'root';
$password           = '';

ini_set('error_reporting', E_ALL | E_STRICT);
ini_set('display_errors', 1);
$localhost = mysql_connect($hostname_localhost, $username, $password);
if ($localhost == FALSE) {
    die('mysql connection error: '.mysql_error());
}

mysql_select_db($database, $localhost);

$username = $_POST['username'];

$query_search = "SELECT trainingname FROM trainings WHERE username='".$username."'";

$query_exec = mysql_query($query_search) or die(mysql_error());
while ($row = mysql_fetch_array($query_exec)) {
   	$query_drop = mysql_query("DROP TABLE ".$row['trainingname']."") or die(mysql_error());
	$query_delete = mysql_query("DELETE FROM trainings WHERE trainingname='".$row['trainingname']."'") or die(mysql_error());
}

$query_del = "DELETE FROM users WHERE username='".$username."'";
$query_exec4 = mysql_query($query_del) or die(mysql_error());

mysql_close($localhost);
?>