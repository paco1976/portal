<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Publicacion extends Model
{
    protected $table ='publicacion';

    protected $fillable = [
        'description', 'titulo_id', 'categoria_id', 'view', 'aprobado', 'active',
    ];

}
