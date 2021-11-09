<?php

class ListeFilm
{
    
    private $films;
    
    public function __construct($film)
    {
        $this-> films = [$film];
    }
    
    public function getFilms()
    {
        return $this->films;
    }

    
    public function __toString()
    {
        
    }
}