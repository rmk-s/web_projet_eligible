<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <title>Bienvenue </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="./vue/css/style.css">
</head>

<style>
 <?php require('css/style.css'); ?>
</style>

<header>
    <h1> Bonjour <?php echo $_SESSION['profil']['nom'];?> vous etes connecté ! </h1>
    <h3> Voici votre carte </h3>
    <nav>
  <a class="active" href="index.php?controle=UtilisateurControleur&action=accueil"><i class="fa fa-fw fa-home"></i> Home</a>
  <a href="#"><i class="fa fa-fw fa-search"></i> Search</a>
  <a href="#"><i class="fa fa-fw fa-envelope"></i> Contact</a>
  <a href="index.php?controle=UtilisateurControleur&action=espaceConnexion""><i class="fa fa-fw fa-user"></i> Login</a>
</nav>
</header>

<body>


    <div class="container" >
    
        <h2 style="text-align: center";> Bonjour <?php echo $_SESSION['profil']['nom'];?> ! 
        </br> Voici la listes des films deja vue : </br> </br> </h2>
		</br>
    
        <div class="favorisUser">
            <div class="card" style="width: 18rem;">
                <img src="./vue/img/avatar.jpg" class="card-img-top" >
                <div class="card-body">
                    <h5 class="card-title"> Avatar </h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
            </div>

            <div class="card" style="width: 18rem;">
                <img src="./vue/img/avengers.jpg" class="card-img-top" >
                <div class="card-body">
                    <h5 class="card-title">Avengers End Game</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
            </div>

            <div class="card" style="width: 18rem;">
                <img src="./vue/img/spiderman.jpg" class="card-img-top" >
                <div class="card-body">
                    <h5 class="card-title"> Spider-man </h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <a href="#" class="btn btn-primary">Go somewhere</a>
                </div>
            </div>
        </div>
    </div>

    <div>
    <form action="index.php?controle=UtilisateurControleur&action=afficherMesAmis" method="post">
    <input type="text" class="form-control" placeholder="Entrez le mail de votre ami(e)" aria-label="Input group example" aria-describedby="btnGroupAddon">
    <button class="btn btn-primary" type="submit"> Trouver mon ami(e)</button>
    </form>
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