<?php
include_once "classes/DB.php";
include "include/isConnected.php";
$db = new DB();
$db->createMessage("09.10.2021", $_POST['corps'], $_POST['sujet'], "Axel", $_POST['destinataire']);
header("Location: messagerie.php");