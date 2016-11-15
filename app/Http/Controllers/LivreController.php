<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use App\metier\Livre;

class LivreController extends Controller
{
    public function listerLivres(){
        $unLivre =new Livre();
        $lesLivres=$unLivre->getlisteLivres();
        return view('livres/listerLivres',compact('lesLivres'));
        
    }
}
