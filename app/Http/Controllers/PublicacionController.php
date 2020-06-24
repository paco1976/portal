<?php

namespace App\Http\Controllers;

use App\User;
use App\User_Cfp;
use App\User_type;
use App\User_Profile;
use App\Publicacion;
use App\Publicacion_image;
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
        //$publicacion_all = $user->publicaciones();
        //dd($publicacion_all);
        //$publicacion_all = Publicacion::all();
        $mispublicaciones = $user->publicaciones()->get();
        //$titulo = $publicacion->titulo()->get('description');
        foreach($mispublicaciones as $publicacion) {
            $publicacion->categoria =  $publicacion->categoria()->get();
            $publicacion->titulo = $publicacion->titulo()->get();
            //dd($publicacion->titulo);
        }
        //dd($mispublicaciones);
        //$titulo = $publicacion->titulo()->get('description');

		//{{$titulo->description}}
        //dd($mispublicaciones);
        /*        
        
        foreach($publicacion_all as $publicacion) {
            $publicacion->categoria = Categoria::where('id',$publicacion->categoria_id)->first();
        }
        */
        //$publicacion_all = Publicacion::where('user_id',$user->id)->get();
        //dd($publicacion_all);
        return view('/publicacion', compact('mispublicaciones', 'user'));
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
        //esta funcion guarda las publicaciones nuevas
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
        
        $publicacion = Publicacion::create([
            'description' => $data['description'],
            'titulo_id' => $data['titulo_id'],
            'categoria_id' => $titulo->categoria_id,
            'view'=> 0,
            'aprobado'=>0,
            'activo'=>1,
        ]);
       
        $user->publicaciones()->attach(Publicacion::where('id', $publicacion->id)->first());
        //subida de archivos si los hay

        //***************** SUDIDA DE ARCHIVOS *********** */
        //recupero todas las carpetas dentro de la ruta  publicaciones
        $carpetas = Storage::disk('publicaciones')->directories();
        
        //pongo una vandera falsa
        $directorio_existe = false;
        //Ahora voy busco entre todas las carpeta si existe la de estapublicación
        //y pongo la bandera en true par avisar si exite
        foreach($carpetas as $carpeta){
            if($carpeta == $publicacion->id){   
                $directorio_existe = true;
            }
        }
        
        // si no se encoentro el directori id se crea y se sube ahí los achivos
        if($directorio_existe == false){
            //$resultado = Storage::makeDirectory('publicaciones/'. $publicacion->id, 0755, true);
            $resultado = Storage::disk('publicaciones')->makeDirectory($publicacion->id, 0777);
        }
        
        //cargo los achivos
        foreach(request('file') as $archivo) {
            $extension = $archivo->extension();
            //$extension = $archivo->getClientOriginalName();
            
            //$nombre = Storage::name($archivo);

            //$ruta = 'publicaciones/'. $publicacion->id. '/';
            //dd($ruta);
            
            //$path = $archivo->store($archivo,'publicaciones');

            //aca lo sube y entre parentisis va la carpeta
            //$path = $archivo->store($publicacion->id);
            //$path = $archivo->store($publicacion->id);
            $path = Storage::disk('publicaciones')->putFILE($publicacion->id, $archivo);
            $size = Storage::disk('publicaciones')->size($path);
            //dd($size);
            //dd($path);
            //$path = Storage::disk('publicaciones)->url($path); esto es para ver la imagen
            //$path = 'storage/' . $path;
            
            //'publicacion_id', 'name', 'extension', 'size', 'url',
            $imagen = new Publicacion_image;
            $imagen->publicacion_id=$publicacion->id;
            $imagen->extension = $extension;
            $imagen->size=$size;
            $imagen->url=$path;
            $imagen->save();
            //dd($extension);
        }
        //***************** FIN SUDIDA DE ARCHIVOS *********** */

        Session::flash('message', 'La publicación se creo con éxito');
        //$this->mispublicaciones($id);
        $publicacion_all = $user->publicaciones();
        $mispublicaciones = $user->publicaciones()->get();
        
        foreach($mispublicaciones as $publicacion) {
            $publicacion->categoria =  $publicacion->categoria()->get();
            $publicacion->titulo = $publicacion->titulo()->get();
            //dd($publicacion->titulo);
        }
        return view('/publicacion', compact('publicacion_all', 'user', 'mispublicaciones'));
    }

}
