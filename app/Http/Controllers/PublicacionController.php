<?php

namespace App\Http\Controllers;

use App\User;
use App\User_Cfp;
use App\User_type;
use App\User_Profile;
use App\Publicacion;
use App\Zonas;
use App\Categoria;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use Illuminate\Validation\Rules\Unique;
use Illuminate\Support\Facades\Storage;
use Illuminate\Http\File;
use Intervention\Image\Image;

class PublicacionController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    public function mispublicaciones($id){
        $user = User::find(Auth::user()->id);
        $publicacion_all = $user->publicaciones();
        //dd($publicacion_all);
        return view('/publicacion', compact('publicacion_all'));
    }
    public function publicacion_new(){
        //$user = User::find(Auth::user()->id);
        //$publicacion_all = $user->publicaciones();
        //dd($publicacion_all);
        $categoria_all = Categoria::all();
        return view('/publicacion_new', compact('categoria_all'));
    }

}
