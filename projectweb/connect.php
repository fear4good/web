<?php
$db = new mysqli('localhost', 'root', '', 'project_web');

if (mysqli_connect_error()) 
{
    die('Connect Error (' . mysqli_connect_errno() . ') '. mysqli_connect_error());
}
?>