<?php session_start();

//hypothèse 2 paramètres d'entrée, controle et action, avec l'url de index.php
// exmple : index.php?controle=entreprise&action=entrepriseNonAband

if (isset($_GET['controle']) & isset($_GET['action'])) {
 	$controle = $_GET['controle'];
	$action= $_GET['action'];
	}
else { //absence de paramètres : prévoir des valeurs par défaut
	$controle = "utilisateurControleur";
	$action= "accueil";
	}
	
//inclure le fichier php de contrôle 
//et lancer la fonction-action issue de ce fichier.	

	require ('./control/' . $controle . '.php');   
	$action (); 
?>