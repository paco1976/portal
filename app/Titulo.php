<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;

class Titulo extends Model
{
    protected $table ='titulo';

    protected $fillable = [
        'name', 'description', 'categoria_id',
    ];

}
