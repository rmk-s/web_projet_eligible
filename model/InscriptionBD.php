<?php

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

function new_user($nom, $prenom, $mail, $mdp){
        require('model/connectBD.php');

        $requete="INSERT INTO 'user'(ID, Nom, Prenom, Mail, Mdp) VALUES (:nom, :prenom, :mail, :mdp)";
		
        
        try {
            $commande= $pdo->prepare($requete);
            $commande->bindParam(':nom', $nom, PDO::PARAM_STR);
            $commande->bindParam(':prenom', $prenom, PDO::PARAM_STR);
            $commande->bindParam(':mail', $mail, PDO::PARAM_STR);
            $commande->bindParam(':mdp', $mdp, PDO::PARAM_STR);
            $commande->execute();

            return (verif_user($mail, $mdp));
        }
        catch(PDOException $e) {
			echo utf8_encode( $requete . "<br>" . $e->getMessage());
			die();
		}
    }


?>