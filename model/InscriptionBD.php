<?php

function getConnection(){
    $user = "root";
    $pass = "root";

    try {
        $pdo = new PDO('mysql:host=localhost;dbname=web_projet_eligible', $user, $pass);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $pdo->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        echo "connexion reussie ! <br>";
    } catch (Exception $e) {
        var_dump($e->getMessage());die();
    }

    return $pdo;
}

function verif_user($mail, $mdp){
    require('model/connectBD.php');
		$sql="select * from user where Mail=:mail and Mdp=:mdp"; 
		
		try {
			$commande = $pdo->prepare($sql);
			$commande->bindParam(':mail', $mail, PDO::PARAM_STR);
			$commande->bindParam(':mdp', $mdp, PDO::PARAM_STR);
			$commande->execute();
			
			if ($commande->rowCount()>0) { 
				$profil = $commande->fetch(PDO::FETCH_ASSOC);
			}
			return ($commande->rowCount()>0);
		}
		
		catch (PDOException $e) { 
			echo utf8_encode("Echec du select : " . $e->getMessage() . "\n");
			die();
		}
}   


function ajt_User($nom, $prenom, $mail, $mdp){
	$pdo = getConnection();
	$request = $pdo->prepare("INSERT INTO user (Nom, Prenom, Mail, mdp) VALUES (:nom, :prenom, :mail, :mdp)");
	$request->bindParam(':nom', $nom);
	$request->bindParam(':prenom', $prenom);
	$request->bindParam(':mail', $mail);
	$request->bindParam(':mdp', $mdp);
	$result = $request->execute();
	return $result;

}

function connexionUser($mail, $mdp, &$profil){
	require("./model/connectBD.php");
	$sql="SELECT * FROM `user` WHERE Mail=:mail AND Mdp=:mdp";
	
	try{
		$commande= $pdo->prepare($sql);
		$commande->bindParam(':mail', $mail, PDO::PARAM_STR);            
		$commande->bindParam(':mdp', $mdp, PDO::PARAM_STR);
		$commande->execute();
		
		if ($commande->rowCount() > 0) {  
			$profil = $commande->fetch(PDO::FETCH_ASSOC); 
			return true;
		}
		else {return false;} 
	}
	
	catch (PDOException $e) {
		echo utf8_encode("Echec de select : " . $e->getMessage() . "\n");
		die(); 
	}  
}


?>