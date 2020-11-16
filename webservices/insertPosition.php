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
$lat=$_POST['lat'];
$lng=$_POST['lng'];
$alt=$_POST['alt'];
$distance=$_POST['distance'];
$time=$_POST['time']; 
$velocity=$_POST['velocity'];


$query_search = "insert into ".$trainingname."(lat,lng,alt,distance,time,velocity) values ('".$lat."','".$lng."','".$alt."','".$distance."','".$time."','".$velocity."')";

$query_exec = mysql_query($query_search) or die(mysql_error());
mysql_close($localhost);
?>