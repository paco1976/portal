<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Publicacion_Visita extends Model
{
    protected $table ='publicacion_visita';

    protected $fillable = [
        'publicacion_id',
    ];

    public function publicacion() {
        return $this->belongsTo('App\Publicacion');
    }
}
