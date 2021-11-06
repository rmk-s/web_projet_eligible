<?php

    function inscrire(){
        
        $nom = isset($POST['nom']) ? ($_POST['nom']):'';
        $prenom = isset($POST['prenom']) ? ($_POST['prenom']):'';
        $mail = isset($POST['mail']) ? ($_POST['mail']):'';
        $mdp = isset($POST['mdp']) ? ($_POST['mdp']):'';
        
        echo $_POST['mail'];
        echo $_POST['nom'];

        require("./model/inscriptionBD.php");
               
        $profil = array();
        var_dump($profil);    
        ajt_User($nom, $prenom, $mail, $mdp); 
        require("./vue/PageConnexion.tpl");
                    			
    }


    
?>