<?php

namespace App\metier;

use Illuminate\Database\Eloquent\Model;

class Auteur extends Model
{
    //On déclare la table Livre
    
    protected $table ='auteur';
    
    protected $filtable =[
        'idAuteur',
        'codeNation',
        'nomAuteur',
        'prenomAuteur',
        'dateNaissance',
        'dateMort',
        'imageAuteur',
    ];
    public $timetamps = true;
}
