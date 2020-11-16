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

$table = $_POST['table'];

$query_search = "SELECT time,velocity FROM ".$table."";
$query_exec = mysql_query($query_search) or die(mysql_error());

while ($row = mysql_fetch_array($query_exec)) {
    
    $result = "<br>".(string)$row['time']."/".(string)$row['velocity'];
    echo $result;
}
mysql_close($localhost);
?>