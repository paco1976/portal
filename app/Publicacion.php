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
        return $this
        ->belongsToMany('App\User');
        //->withTimestamps();
    }

    public function user_publicacion(){
        return $this->belongsTo('App\Publicacion');
    }

}
