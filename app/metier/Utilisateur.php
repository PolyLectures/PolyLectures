<?php

namespace App\metier;

use Illuminate\Database\Eloquent\Model;

class Utilisateur extends Model
{
    //On déclare la table Utilisateur
    
    protected $table ='utilisateur';
    
    protected $filtable =[
        'idUser',
        'pseudo',
        'mdp',
        'nomUser',
        'prenomUser',
        'mailUser',
        'image'
    ];
    public $timetamps = true;
}
