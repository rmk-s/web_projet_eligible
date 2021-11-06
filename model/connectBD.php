<?php

$hostname = "localhost";	
	$base= "eligible_projet_php";
	$loginBD= "root";
	$passBD="root";
	
try {
	$pdo = new PDO ("mysql:server=$hostname; dbname=$base", "$loginBD", "$passBD");
	
}
catch (PDOException $e) {
	die  ("Echec de connexion : " . utf8_encode($e->getMessage()) . "\n"); // comme un exit mais en plus un messages'affiche pour l'utilisateur
}

?>