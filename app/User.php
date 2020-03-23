<?php

namespace App;
use App\Publicacion;

use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;


class User extends Authenticatable
{
    use Notifiable;
    
    protected $table ='users';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'last_name', 'avatar','email', 'password', 'type_id','cfp_id',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];


    public function user_profile(){
        return $this->hasMany('App\User_Profile');
    }

    public function user_cfp(){
        $user_cfp = $this->belongsTo('App\User_Cfp', 'cfp_id');
        //dd($profiles);
        return $user_cfp;
    }
    public function zonas() {
        return $this->belongsToMany('App\Zonas');
    }
    
    public function publicaciones(){
        //return $this->hasMany('App\Publicacion');
        //morghToMany()
        return $this->belongsToMany('App\Publicacion');
    }

    public function hasZona($zon)
    {   
        
        if ($this->zonas()->where('name', $zon->name)->first()) {
            return true;
        }
        return false;
    }
   
}
