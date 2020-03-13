<?php

namespace App\Http\Controllers;

use App\User;
use App\User_Cfp;
use App\User_type;
use App\User_Profile;
use App\Publicacion;
use App\Zonas;
use App\Categoria;
use App\Titulo;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use Illuminate\Validation\Rules\Unique;
use Illuminate\Support\Facades\Storage;
use Illuminate\Http\File;
use Intervention\Image\Image;
use Illuminate\Http\Request;



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
        return view('/publicacion', compact('publicacion_all', 'user'));
    }
    public function publicacion_new($id){
        $user = User::find(Auth::user()->id);
        //$user = User::find(Auth::user());
        //dd($user);
        //$publicacion_all = $user->publicaciones();
        //dd($publicacion_all);
        $categoria_all = Categoria::all();
        //ascendente
        $titulo_all = Titulo::all()->sortBy('name');
        //descendiente
        //$titulo_all = Titulo::all()->sortByDesc('name');
        //orderBY('name', 'desc')->
        return view('/publicacion_new', compact('categoria_all', 'user','titulo_all'));
    }

    public function publicacion_save($id){
        $user = User::find($id);
        //dd($user);

        $data = request()->validate([
            'titulo_id' => 'required',
            'description' => 'required',
        ],[
            'titulo_id.required' =>'Debe seleccionar un título',
            'description.required' => 'Debe colocar una descripción sobre su trabajo',
        ]);
        
        $titulo = titulo::where('id', $data['titulo_id'])->first();
        //dd($titulo);
        
        
        /*
        foreach(request('zonas') as $zona) {
            $user->zonas()->attach(Zonas::where('name', $zona)->first());
        }
        */
        $publicacion = Publicacion::create([
            'description' => $data['description'],
            'titulo_id' => $data['titulo_id'],
            'categoria_id' => $titulo->categoria_id,
            'view'=> 0,
            'aprobado'=>0,
            'activo'=>1,
        ]);
        
        /*
        $path = request()->file('avatar')->store('avatares');
        //$path = Storage::url($path);
        $path = 'storage/'. $path;
        $user->avatar = $path;
        $user->save(['avatar']);
        */
        Session::flash('message', 'La publicación se creo con éxito');
        
        //$this->mispublicaciones($id);
        $publicacion_all = $user->publicaciones();
        return view('/publicacion', compact('publicacion_all', 'user'));
    }

}
