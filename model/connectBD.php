<?php

	$hostname = "localhost";	//ou localhost
	$base= "web_projet_eligible";
	$loginBD= "root";	//ou "root"
	$passBD="root";
	//$pdo = null;
try {
// par défaut, on sait qu'on a différentes extensions pour le PHP
	$pdo = new PDO ("mysql:server=$hostname; dbname=$base", "$loginBD", "$passBD");
	//die('OK connexion');
}

catch (PDOException $e) {
	die  ("Echec de connexion : " . utf8_encode($e->getMessage()) . "\n"); // comme un exit mais en plus un messages'affiche pour l'utilisateur
}


?>