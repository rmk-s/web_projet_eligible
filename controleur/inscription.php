<?php

    function inscrire(){
        
        $nom = isset($POST['nom']) ? ($_POST['nom']):'';
        $prenom = isset($POST['prenom']) ? ($_POST['prenom']):'';
        $mail = isset($POST['mail']) ? ($_POST['mail']):'';
        $mdp = isset($POST['mdp']) ? ($_POST['mdp']):'';
        $message=''; 

        if(count($_POST)==0){ 
			//require ("./vue/inscription.tpl") ;
        }
		else {
			if ($nom == ''|$prenom == ''|$num == ''|$email == '') { //dans le cas où au moins un champ serait vide
					$message ="Remplir l'ensemble des champs présents.";
					//require ("./vue/inscription.tpl");}
			else {
                if  (!verif_ident($mail,$mdp)) { //Verifie que ce compte n'existe pas deja dans la BD
										
                    $nom=ucfirst(strtolower($nom)); // on met la 1ère lettre du nom en majuscule et le reste en minuscule
                    $prenom=ucfirst(strtolower($prenom)); // on met la 1ère lettre du prénom en majuscule et le reste en minuscule
                    ajouter_utilisateur($nom, $prenom, $mail, $mdp); //On ajoute l'utilsateur dans notre base
                    //require("./vue/bienvenue.tpl");
                }			
                else {
                    $message =(" Vous êtes déjà inscrit(e). Utiliser la page connexion pour vous connecter");
                    //require ("./vue/inscription.tpl");}
            }
    }




?>