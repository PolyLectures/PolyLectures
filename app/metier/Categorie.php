<?php

namespace App\metier;

use Illuminate\Database\Eloquent\Model;

class Categorie extends Model
{
    //On déclare la table Categorie
    
    protected $table ='categorie';
    
    protected $filtable =[
        'codeCategorie',
        'libelleCategorie'
    ];
    public $timetamps = true;
}
