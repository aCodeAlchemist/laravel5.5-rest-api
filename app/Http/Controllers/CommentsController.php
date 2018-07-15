<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\FilmComments;

class CommentsController extends Controller
{
    public function store(Request $request)
    {
        $film = FilmComments::create($request->all());
        return response()->json($film, 201);
    }
}
