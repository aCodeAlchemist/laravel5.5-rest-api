<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Films extends Model
{
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
}
