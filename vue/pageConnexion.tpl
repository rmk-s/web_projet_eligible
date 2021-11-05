<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <title>Nom de la page à determiner </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="./vue/css/style.css">
</head>

<style>
 <?php require('css/style.css'); ?>
</style>

<header>
    <h1> Mon site </h1>
    <h3> Page de connexion </h3>
    <nav>
  <a class="active" href="index.php?controle=UtilisateurControleur&action=accueil"><i class="fa fa-fw fa-home"></i> Home</a>
  <a href="#"><i class="fa fa-fw fa-search"></i> Search</a>
  <a href="#"><i class="fa fa-fw fa-envelope"></i> Contact</a>
  <a href="index.php?controle=UtilisateurControleur&action=espaceConnexion""><i class="fa fa-fw fa-user"></i> Login</a>
</nav>
</header>

<body>
   
    <div class="container" >
    
        <h2 style="text-align: center";> Connectez-vous pour accéder à votre liste de films !</h2>
		</br>

        <form action="index.php?controle=utilisateurControleur&action=connexion" method="POST">

            <div class="form-floating mb-3">
                <input type="email" class="form-control" id="floatingInput" name="mail" placeholder="name@example.com">
                <label for="floatingInput">Email address</label>
            </div>
            <div class="form-floating">
                <input type="password" class="form-control" id="floatingPassword" name="mdp" placeholder="Password">
                <label for="floatingPassword">Password</label>
            </div>

            <button class="btn btn-primary" type="submit"> Se connecter </button>
        </form>

        <div>
        <p>Pas de compte ? créez-vous en un en moins de 2min <a href="index.php?controle=UtilisateurControleur&action=espaceInscription">en cliquant ici </a> </p>
        </div>
    </div>

</body>

<footer>
    <p> Ce site à été réalisé par Karim, étudiant en Licence 3 MIAGE à l'université Panthéon Sorbonne.</p>
    <p> Pour me contacter :
        <a href="mailto:karimsebbah@etu.u-paris.fr"> Envoyez moi un mail </a>
    </p>
</footer>

</html>