<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Publicacion_image extends Model
{
    protected $table ='publicacion_image';

    protected $fillable = [
        'publicacion_id', 'name', 'extension', 'size', 'url',
    ];

    public function publicacion(){
        $publicaciones = $this->belongsTo('App\Publicacion');
         return $publicaciones;
    }
    
}
