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

    public function publicaciones(){
        return $this->hasMany('App\Publicacion');
    }

    public function categoria(){
        return $this->belongsTo('App\Categoria');
    }

    public function categorias_asociadas() {
        return $this->belongsToMany('App\Categoria')->withTimestamps();
        //->withPivot('estado');
        //->withTimestamps();
    }

}
