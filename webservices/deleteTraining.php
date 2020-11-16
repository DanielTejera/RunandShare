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

$trainingname = $_POST['trainingname'];

$query_delete = "DELETE FROM trainings WHERE trainingname='".$trainingname."'";
$query_exec = mysql_query($query_delete) or die(mysql_error());

$query_drop = mysql_query("DROP TABLE ".$trainingname."") or die(mysql_error());

mysql_close($localhost);
?>