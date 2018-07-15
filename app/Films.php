<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Films extends Model
{
    protected $table = 'films';
    protected $fillable = [
        'name',
        'slug',
        'description',
        'release_date',
        'rating',
        'ticket_price',
        'country',
        'genre',
        'photo'
    ];

    public function comments()
    {
        return $this->hasMany('App\FilmComments', 'film_id', 'id')->with('user');
    }
}
