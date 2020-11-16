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

$query_search = "create table ".$trainingname." (id int not null auto_increment,lat varchar (10),lng varchar(10), alt varchar(10), distance varchar(10), time varchar (10),velocity varchar(10),primary key(id))";

$query_exec = mysql_query($query_search) or die(mysql_error());
mysql_close($localhost);
?>




