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

$query_visits = "SELECT visits FROM trainings WHERE trainingname='".$trainingname."'";
$query_exec = mysql_query($query_visits) or die(mysql_error());
$row = mysql_fetch_array($query_exec);

$visitas = $row[visits] + 1 ;

$query_add = "update trainings set visits='".$visitas."' where trainingname='".$trainingname."' ";

$query_exec = mysql_query($query_add) or die(mysql_error());
mysql_close($localhost);
?>