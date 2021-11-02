<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <title>Nom de la page à determiner </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="./vue/css/style.css">
</head>

<header>
    <h1> Mon site </h1>
    <h3> Page de connexion </h3>
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
    <div>
        <p>Pas de compte ? créez-vous en un en moins de 2min <a href="index.php?controle=utilisateurControleur&action=espaceInscription">en cliquant ici </a> </p>
    </div>

    <form action="index.php?controle=utilisateurControleur&action=connexion" method="POST">

        <div class="form-floating mb-3">
            <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
            <label for="floatingInput">Email address</label>
        </div>
        <div class="form-floating">
            <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
            <label for="floatingPassword">Password</label>
        </div>

        <button class="btn btn-primary" type="submit"> Se connecter </button>
    </form>

</body>

<footer>
    <p> Ce site à été réalisé par Karim, étudiant en Licence 3 MIAGE à l'université Panthéon Sorbonne.</p>
    <p> Pour me contacter :
        <a href="mailto:karimsebbah@etu.u-paris.fr"> Envoyez moi un mail </a>
    </p>
</footer>

</html>