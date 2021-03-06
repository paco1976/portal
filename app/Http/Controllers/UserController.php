<?php

namespace App\Http\Controllers;

use App\User;
use App\Titulo;
use App\Categoria;
use App\User_Cfp;
use App\User_type;
use App\User_Profile;
use App\Zonas;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use Illuminate\Validation\Rules\Unique;
use Illuminate\Support\Facades\Storage;
use Illuminate\Http\File;
use Intervention\Image\Image;

class UserController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    //redirigue dependiendo el tipo de usuario
    public function index(){
        $user = User::find(Auth::user()->id);
        //dd($user);
        if($user->avatar == '/img/team/perfil_default.jpg'){
            //no convierte la url
        }else{
            $user->avatar = Storage::disk('avatares')->url($user->avatar);
            //disk('avatares')
        }
        //dd($user->avatar);
        $miszonas = $user->zonas()->get();
        //dd($miszonas);
        $user_profile = $user->user_profile()->first();
        //$user->avatar =  Storage::disk('avatares')->url($user->avatar);
        //dd($user->avatar);
        //dd($user_profile);
        //$user_profile = User_Profile::where('user_id',$user->id)->first();
        $user_cfp = User_Cfp::where('id',$user->cfp_id)->first();
        //$public_path = public_path();
        //$url = Storage::url($user_profile->photo);
        //$user_profile->photo=$url;
        //dd($url);
        //$link = Storage::response("$user_profile->photo");
        //dd($link);
        //asset($url);
        //$user_profile->photo=$link;

        if ($user->type_id==1) {
            //return view('perfil', compact('user'), compact('user_profile'), compact('user_cfp'));
            return view('perfil', compact('user', 'user_profile', 'user_cfp', 'miszonas'));
        }else {
            return redirect('/');
        }
    }

    public function avatardelete($id){
        $user = User::find($id);
        // storage/
        $user->avatar = substr($user->avatar, 8);
        //dd($user->avatar);
        Storage::delete([$user->avatar]);
        //Storage::delete(['avatares/j3X9DTwF6EzPdrDF5D5f17vhlpcSF5LMiFeyIS5W.png']);
        $user->avatar ='/img/team/perfil_default.jpg';
        $user->save(['avatar']);

        //$user->save(['user_cfp']);

        //$user_profile->save(['mobile', 'phone', 'twitter', 'facebook', 'instagram', 'linkedin']);

        Session::flash('message', 'La imagen se a eliminado con éxito');
        //{{ route('perfil_new', ['id'=> $user->id]) }}
        //return route('perfil_edit', ['id'=> $user->id]);
        //return route('perfil_edit', ['id'=> $user->id]);
        return redirect('perfil');
    }

    public function avatarupload($id){
        $user = User::find($id);
        //subir archivo

        $carpetas = Storage::disk('avatares')->directories();
        $directorio_existe = false;
        foreach($carpetas as $carpeta){
            if($carpeta == $user->id){   
                $directorio_existe = true;
            }
        }
        if($directorio_existe == false){
            //$resultado = Storage::makeDirectory('publicaciones/'. $publicacion->id, 0755, true);
            $resultado = Storage::disk('avatares')->makeDirectory($user->id, 0777, true);
        }
        //$extension = request()->file('avatar');
        //este es el que estaba usando
        $path = Storage::disk('avatares')->putFILE($user->id, request()->file('avatar'));
        
        //$size = Storage::disk('avatares')->size($path);
        
        //$path = request()->file('avatar')->store('public');

        //$path = request()->file('avatar')->store('avatares');
        //dd($path);
        //$path = Storage::url($path);
        //$path = 'avatares/'. $path;
        $user->avatar = $path;
        $user->save(['avatar']);
        //dd($path);
        Session::flash('message', 'La imagen se a actualizo con éxito');
        return redirect('perfil');
    }
 
}
