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
$new_trainingname    = $_POST['new_trainingname'];


$query_update = "update trainings set trainingname= '".$new_trainingname."' where trainingname= '".$trainingname."' ";

$query_update = mysql_query($query_update) or die(mysql_error());

$query_update2 = "RENAME TABLE ".$trainingname." TO ".$new_trainingname."";

$query_update2 = mysql_query($query_update2) or die(mysql_error());

mysql_close($localhost);
?>