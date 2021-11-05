<?php

    function inscrire(){
        
        $nom = isset($POST['nom']) ? ($_POST['nom']):'';
        $prenom = isset($POST['prenom']) ? ($_POST['prenom']):'';
        $mail = isset($POST['mail']) ? ($_POST['mail']):'';
        $mdp = isset($POST['mdp']) ? ($_POST['mdp']):'';
        $message=' '; 

        var_dump($nom);

        require("./model/inscriptionBD.php");
        
		if ($nom == ''|$prenom == ''|$mail == ''|$mdp == '') { //dans le cas où au moins un champ serait vide
			require ("./vue/pageInscription.tpl");
            require ("./vue/pageInscription.tpl");
            } 
            else{
                if  (!verif_user($mail,$mdp)) { //Verifie que ce compte n'existe pas deja dans la BD
                                            
                        $nom=ucfirst(strtolower($nom)); // on met la 1ère lettre du nom en majuscule et le reste en minuscule
                        $prenom=ucfirst(strtolower($prenom)); // on met la 1ère lettre du prénom en majuscule et le reste en minuscule
                        
                    $profil = array();    
                    new_user($nom, $prenom, $mail, $mdp, $profil); //On ajoute l'utilsateur dans notre base
                    $message="La connexion à fonctionner !";    
                    require("./vue/pageUser.tpl");
                    }			
                    else {
                        $message =(" Vous êtes déjà inscrit(e). Utiliser la page connexion pour vous connecter");
                        require ("./vue/pageConnexion.tpl");
                    }
                }
            }
?>