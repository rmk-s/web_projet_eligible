<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <title>Nom de la page à determiner </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="./vue/css/style.css">
    <!-- Load an icon library -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<style>
 <?php require('css/style.css'); ?>
</style>

<header >

  <h1> Ciné Tabs' </h1>
    <h3> Page d'accueil' </h3>

<nav>
  <a class="active" href="index.php?controle=UtilisateurControleur&action=accueil"><i class="fa fa-fw fa-home"></i> Home</a>
  <a href="#"><i class="fa fa-fw fa-search"></i> Search</a>
  <a href="#"><i class="fa fa-fw fa-envelope"></i> Contact</a>
  <a href="index.php?controle=UtilisateurControleur&action=espaceConnexion""><i class="fa fa-fw fa-user"></i> Login</a>
</nav>
</header>

<body>
<div class="jumbotron jumbotron-fluid" id="jumboAccueil">
  <div class="container">
    <h3 class="display-4"> Vous avez regardé trop de films & Series ? </h3>
    <p class="lead">   Laissez nous vous créer votre tableau de Film & Series deja vue ! </br> Ce service vous permettra d'avoir l'ensemble de vos films deja vue.</p>
  </div>
    
    <div class="favorisUser">

        <div class="card" style="width: 18rem;">
            <img src="./vue/img/fastfurius.jpg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Fast&Furius 7</h5>
                <p class="card-text">UN FILM INCROYABLE !'</p>
                
            </div>
        </div>

        <div class="card" style="width: 18rem;">
            <img src="./vue/img/harryPotter.jpg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Harry Potter</h5>
                <p class="card-text">Film culte, c'est un classique</p>
      
            </div>
        </div>

        <div class="card" style="width: 18rem;">
            <img src="./vue/img/myson.jpg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">My Son</h5>
                <p class="card-text">Intéressant mais sans plus </p>
                
            </div>
        </div>
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