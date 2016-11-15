<?php

namespace App\metier;

use Illuminate\Database\Eloquent\Model;
use DB;

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
    
    public function getlisteLivres(){
        $lesLivres=DB::table('livre')
                ->join('auteur','livre.idauteur','=','auteur.idauteur')
                ->get();
        return $lesLivres;
    }
}
