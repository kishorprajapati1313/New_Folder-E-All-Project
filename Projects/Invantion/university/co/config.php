<?php
session_start();

define("SIT","http://localhost/Invantion/university/");
define('LOCALHOST','localhost');
define("DB_USERNAME","root");
define("DB_PASSWORD","");
define("DB_NAME","uni");

$conn = mysqli_connect(LOCALHOST, DB_USERNAME, DB_PASSWORD) or die(mysqli_error());
$db_select = mysqli_select_db($conn, DB_NAME) or die(mysqli_error());
