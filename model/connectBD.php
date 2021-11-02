<?php

	$hostname = "localhost";	//ou localhost
	$base= "web_projet_eligible";
	$loginBD= "root";	//ou "root"
	$passBD="root";
	//$pdo = null;
try {
	$dsn = "mysql:server=$hostname ; dbname=$base";
// par défaut, on sait qu'on a différentes extensions pour le PHP
	$pdo = new PDO ("mysql:server=$hostname; dbname=$base", "$loginBD", "$passBD");
	//die('OK connexion');

	$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}

catch (PDOException $e) {
	echo utf8_encode("Echec de connexion : " . $e->getMessage() . "\n");
	die(); // On arrête tout.	
}


?>