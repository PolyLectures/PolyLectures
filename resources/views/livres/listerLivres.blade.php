@extends('layouts.master')
@section('content')
<table class="table table-bordered">  
    <tr>
        <th>Titre</th>
        <th>Auteur</th>
        <th>Année de parution</th>
        <th>Actions</th>
    </tr>
    @foreach($lesLivres as $livre)
    <tr>
        <td>{{ $livre->titre }}</td>
        <td>{{ $livre->prenomauteur }} {{ $livre->nomauteur }}</td>
        <td>{{ $livre->anneeparution }}</td>
        <td>
            
        </td>
    </tr>
    @endforeach
</table>
@stop