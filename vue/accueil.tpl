<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <title>Nom de la page à determiner </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="./vue/css/style.css">
</head>

<header>
    <h1> Carte Personalisée </h1>
    <h3> Créer votre carte personalisée </h3>
    <nav>
        <ul>
            <li> <a href="index.php?controle=utilisateurControleur&action=accueil"> Home </a></li>
            <li> <a href="#"> Page 1 </a> </li>
            <li> <a href="#"> Page 2 </a> </li>
            <li> <a href="index.php?controle=utilisateurControleur&action=espaceUtilisateur"> Page 3 </a></li>
            <li> <a href="index.php?controle=utilisateurControleur&action=espaceConnexion"> Mon compte </a></li>

        </ul>
    </nav>
</header>

<body>

    <h3>
        Trop de chose à dire ? </br> Laissez nous vous créer votre identité à votre place ! </br>
    </h3>
    <div class="favoris">

        <div class="card" style="width: 18rem;">
            <img src="./vue/img/homme.jpg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Pierre</h5>
                <p class="card-text">Je m'appelle Pierre et j'ai 42 ans. Voici une carte qui me présente</p>
                <a href="mailto:karimsebbah@etu.u-paris.fr" class="btn btn-primary">Me Contacter</a>
            </div>
        </div>

        <div class="card" style="width: 18rem;">
            <img src="./vue/img/femme.jpg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Paola</h5>
                <p class="card-text">SJe m'appelle Paola et j'ai 34 ans. Voici une carte qui me présente</p>
                <a href="mailto:karimsebbah@etu.u-paris.fr" class="btn btn-primary">Me Contacter</a>
            </div>
        </div>

        <div class="card" style="width: 18rem;">
            <img src="./vue/img/homme.jpg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">Jacque</h5>
                <p class="card-text">Je m'appelle Jacque et j'ai 62 ans. Voici une carte qui me présente.</p>
                <a href="mailto:karimsebbah@etu.u-paris.fr" class="btn btn-primary">Me Contacter</a>
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