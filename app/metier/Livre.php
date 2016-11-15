<?php

namespace App\metier;

use Illuminate\Database\Eloquent\Model;

class Livre extends Model
{
    //On déclare la table Livre
    
    protected $table ='livre';
    
    protected $filtable =[
        'idLivre',
        'codeCategorie',
        'idAuteur',
        'titre',
        'resume',
        'nbPages',
        'anneeParution',
        'couverture',
    ];
    public $timetamps = true;
}
