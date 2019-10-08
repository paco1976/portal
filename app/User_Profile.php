<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class User_Profile extends Model
{
    /* es para especificar la tabla donde están los cfp */
    protected $table ='user_profile';

    protected $fillable = [
        'user_id', 'mobile', 'phone', 'twitter', 'facebook', 'instagram', 'linkedin',
    ];
}
