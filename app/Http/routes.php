<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

// Route de la page d'accueil
Route::get('/', function () { return view('home'); });

/* Routes des livres */

// Lister les livres
Route::get('/listerLivres', 'LivreController@listerLivres');