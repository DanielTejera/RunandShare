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

$exist_training = "SELECT count(trainingname) FROM trainings WHERE trainingname='".$trainingname."'";
$query_exec = mysql_query($exist_training) or die(mysql_error());
$rs = mysql_fetch_array($query_exec, MYSQL_NUM);

echo "/".$rs[0];
mysql_close($localhost);
?>