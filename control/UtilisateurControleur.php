<?php

function accueil()
{
    require("./vue/accueil.tpl");
}

function connexion(){ 
    $mail =  isset($_POST['mail']) ? ($_POST['mail']) : '';
    $mdp =  isset($_POST['mdp']) ? ($_POST['mdp']) : '';
    $msg = '';
    if (count($_POST) == 0)
        require("./vue/PageConnexion.tpl");
    else {
        require("./model/inscriptionBD.php");
        $profil = array();
        if (!connexionUser($mail, $mdp, $profil)) {
 
            $msg = "erreur de saisie, l'email ou le mot de passe est incorrecte";
            require("./vue/pageConnexion.tpl");
        } else {
            $_SESSION['profil'] = $profil;
            require("./vue/pageUser.tpl");
            
          }
    }
}
    


function espaceUtilisateur()
{
    require("./vue/pageUser.tpl");
}

function espaceInscription()
{
    require("./vue/pageInscription.tpl");
}

function espaceConnexion()
{
    require("./vue/pageConnexion.tpl");
}

?>