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

$total = 0;
$average = 0;
$hours = 0;
$query_search = "SELECT distance,time,id FROM ".$trainingname." ORDER BY id DESC LIMIT 1";
$query_exec = mysql_query($query_search) or die(mysql_error());
$row1 = mysql_fetch_array($query_exec);

$hours = gmdate("H:i:s", $row1['time']);

$result1 =  "/".$row1['distance']."/".$hours;
$total = (int) $row1['id'];

$query_average = "SELECT velocity FROM ".$trainingname."";
$query_exec = mysql_query($query_average) or die(mysql_error());
$row2 = mysql_fetch_array($query_exec);

while ($row2 = mysql_fetch_array($query_exec)) {
    $average += (int)$row2['velocity'];
}

$average = $average / ($total - 1);
$average = number_format($average, 2, '.', '');

echo $result1."/".$average;
mysql_close($localhost);
?>