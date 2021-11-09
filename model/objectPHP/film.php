<?php

class ListeFilm
{
    private $titreFilm;
    private $anneeSortie;
    private $avis;

    
    public function __construct($titreFilm, $anneeSortie, $avis)
    {
        $this->titreFilm = $titreFilm;
        $this->anneeSortie = $anneeSortie;
        $this->avis = $avis;
    }
    
}

?>