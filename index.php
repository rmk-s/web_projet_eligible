<?php session_start();


if (isset($_GET['controle']) & isset($_GET['action'])) {
 	$controle = $_GET['controle'];
	$action= $_GET['action'];
	}
else { 
	$controle = "utilisateurControleur";
	$action= "accueil";
	}

	require ('./controle/' . $controle . '.php');   
	$action (); 
?>