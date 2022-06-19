<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;

class Interactionhead extends Model
{
    use Notifiable;
    protected $table ='interactionhead';

    protected $fillable = [
       'publicacion_id', 'subjet_id', 'date', 'name', 'last_name', 'email', 'mobile', 'hash',
    ];

    public function messages() {
        return $this->hasmany('App\Interactionmessage','head_id');
    }

    public function subjet(){
        return $this->belongsTo('App\Interactionsubjet');
    }

    public function publicaciones(){
        return $this->belongsTo('App\Publicacion');
    }

    public function mensajes() {
        return $this->hasmany('App\Interactionmessage','head_id');
    }
}
