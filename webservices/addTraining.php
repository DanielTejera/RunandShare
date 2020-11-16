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
$username = $_POST['username'];
$date = $_POST['date'];
$visits = $_POST['visits'];
$int = (int)$visits;


$query_search = "insert into trainings (trainingname,username,date,visits) values ('".$trainingname."','".$username."','".$date."','".$int."')";

$query_exec = mysql_query($query_search) or die(mysql_error());
mysql_close($localhost);
?>