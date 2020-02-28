<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Categoria extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $table ='categoria';

    protected $fillable = [
        'name', 'icon', 'categoria_tipo_id','active',
    ];
    
    public function publicaciones(){
        $publicaciones = $this->hasMany('App\Publicacion');
        //dd($profiles);
        dd($publicaciones);
        return $publicaciones;
    }
    public function categorias(){
        return $this->belongsToMany('App\Categoria');
    }
}
