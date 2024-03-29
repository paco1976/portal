<?php

namespace App;
use App\Publicacion;
use App\Notifications\ResetPassword;

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
        'name', 'last_name', 'dni','avatar','email', 'password', 'hash', 'type_id','cfp_id',
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

    public function cfp(){
        return $this->belongsTo('App\User_Cfp');
    }
  
    public function user_type(){
        return $this->belongsTo('App\User_type', 'type_id');
    }

    public function zonas() {
        return $this->belongsToMany('App\Zonas');
    }

    public function hasZona($zon){   
        if ($this->zonas()->where('name', $zon->name)->first()) {
            return true;
        }
        return false;
    }
   
    public function publicaciones(){
        //return $this->hasMany('App\Publicacion');
        //morghToMany()
        return $this->belongsToMany('App\Publicacion', 'publicacion_user');
    }
    /*
    public function sendPasswordResetNotification($token)
    {
        $this->notify(new ResetPassword($token));
    }
    */

    public function cfp_name($id)
    {   
        $cfp =  User_Cfp::where('id', $id)->first();
        //dd($propuesta);
        return $cfp->name;
    }

    public function scopeBuscador($query, $name)
    {
        return $query->where('name', 'like', "%$name%")->orwhere('last_name', 'like', "%$name%");
    }
}
