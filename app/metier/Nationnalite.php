<?php

namespace App\metier;

use Illuminate\Database\Eloquent\Model;

class Nationnalite extends Model
{
    //On déclare la table Nationnalite
    
    protected $table ='nationnalite';
    
    protected $filtable =[
        'codeNation',
        'libelleNation'
    ];
    public $timetamps = true;
}
