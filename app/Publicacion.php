<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Notifiable;

class Publicacion extends Model
{
    
    
    protected $table ='publicacion';

    protected $fillable = [
        'description', 'titulo_id', 'categoria_id', 'view', 'aprobado', 'active',
    ];

    public function users()
    {
        return $this->belongsToMany('App\User')->withTimestamps();
    }

    public function user_publicacion(){
        return $this->belongsToMany('App\Publicacion')->withTimestamps();
    }

    public function categoria(){
        return $this->belongsTo('App\Categoria');
    }
    public function titulo(){
        return $this->belongsTo('App\Titulo');

    }

    //el profile pertenece a
    public function imagenes() {
        return $this->hasmany('App\Publicacion');
    }


}
