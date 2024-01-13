<?php

ini_set('display_errors', '1');
ini_set('display_startup_errors', '1');
error_reporting(E_ERROR);
ini_set('session.gc_maxlifetime', 36000); // Login TimeOut  = 10 Hour Change If Like :)  1 Hour = 3600 
global $port;
global $username;
$port = "22";
$panelport = "80";
$udpport = "7301";
$servername = "localhost";
$username = "adminuser";
$password = "adminpass";
$dbname = "ShaHaN";
date_default_timezone_set("Asia/Tehran");
global $conn;
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {die("Connection failed: " . $conn->connect_error);}
