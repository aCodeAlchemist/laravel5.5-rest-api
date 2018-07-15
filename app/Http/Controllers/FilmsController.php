<?php

namespace App\Http\Controllers;
use App\Films;
use Illuminate\Http\Request;

class FilmsController extends Controller
{
    public function index()
    {
        return Films::all();
    }

    public function show(Films $film)
    {
        return $film;
    }

    public function store(Request $request)
    {
        $request->offsetSet('slug', strtolower(str_replace(" ", "-", $request->name)));
        $film = Films::create($request->all());

        return response()->json($film, 201);
    }

    public function update(Request $request, Films $film)
    {
        $film->update($request->all());

        return response()->json($film, 200);
    }

    public function delete(Film $film)
    {
        $film->delete();

        return response()->json(null, 204);
    }
}
