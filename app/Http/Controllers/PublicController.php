<?php

namespace App\Http\Controllers;

use App\User_type;
use App\User_Cfp;
use App\User_Profile;
use App\User;
use App\Categoria;
use App\Categoria_Tipo;
use Illuminate\Support\Facades\Storage;
use Illuminate\Http\Request;

class PublicController extends Controller
{
    public function __construct()
    {
        //$this->middleware('auth');
    }

    public function index(){
        $categoria_servicios_all = Categoria::where(['categoria_tipo_id' => 1,'active' => 1])->get();
        $categoria_productos_all = Categoria::where(['categoria_tipo_id' => 2,'active' => 1])->get();
        //dd($categoria_productos_all);
        return view('welcome', compact('categoria_servicios_all', 'categoria_productos_all'));
    }

    public function publicaciones(){
        $categoria_servicios_all = Categoria::where(['categoria_tipo_id' => 1,'active' => 1])->get();
        $categoria_productos_all = Categoria::where(['categoria_tipo_id' => 2,'active' => 1])->get();
        //$user = User::find(Auth::user()->id);
        //$miszonas = $user->zonas()->get();
        //$user_profile = User_Profile::where('user_id',$user->id)->first();
        $user_type_all = User_type::all();
        $user_cfp_all = User_Cfp::all();

        return view('homepublicaciones', compact('categoria_servicios_all', 'categoria_productos_all',  'user_type_all','user_cfp_all'));
    }
}
