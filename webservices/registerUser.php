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
$password    = $_POST['password'];
$idandroid    = $_POST['idandroid'];
$active   = $_POST['active'];

$query_search = "insert into users(username,password,idandroid,active) values ('".$username."','".$password."','".$idandroid."','".$active."')";

$query_exec = mysql_query($query_search) or die(mysql_error());


mysql_close($localhost);
?>