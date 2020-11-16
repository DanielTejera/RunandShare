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

$idandroid = $_POST['idandroid'];

$exist_idandroid = "SELECT count(idandroid) FROM users WHERE idandroid='".$idandroid."'";
$query_exec = mysql_query($exist_idandroid) or die(mysql_error());
$rs = mysql_fetch_array($query_exec, MYSQL_NUM);

$query_search = "SELECT username,idandroid,active FROM users WHERE idandroid='".$idandroid."' ";

$query_exec = mysql_query($query_search) or die(mysql_error());
$row = mysql_fetch_array($query_exec);

echo "/".$row['username']."/".$row['idandroid']."/".$row['active'];

mysql_close($localhost);