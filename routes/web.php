<?php

use App\User_type;
use App\User_Cfp;
use App\User_Profile;
use App\User;
use App\Categoria;
use App\Categoria_Tipo;
use Illuminate\Support\Facades\Storage;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    $categoria_servicios_all = Categoria::where(['categoria_tipo_id' => 1,'active' => 1])->get();
    $categoria_productos_all = Categoria::where(['categoria_tipo_id' => 2,'active' => 1])->get();
    //dd($categoria_productos_all);
    return view('welcome', compact('categoria_servicios_all', 'categoria_productos_all'));
});


Auth::routes();

Route::get('/register', function () {
    $user_type_all = User_type::all();
    $user_cfp_all = User_Cfp::all();
    return view('auth/register', compact('user_type_all', 'user_cfp_all'));
})->name('register');


//Route::get('/home', 'HomeController@index')->name('home');

Route::get('/perfil', 'UserController@index')->name('perfil');
//rutas para crear el perfil
Route::get('/perfil_new/{id}', 'ProfileController@nuevo')->name('perfil_new');
Route::put('/perfil/store/{id}', 'ProfileController@store')->name('store');
//rutas para editar el perfil
Route::get('/perfil_edit/{id}', 'ProfileController@edit')->name('perfil_edit');
Route::put('/perfil_update/{id}', 'ProfileController@update')->name('perfil_update');
Route::get('/avatardelete/{id}', 'UserController@avatardelete')->name('avatardelete');
Route::put('/avatarupload/{id}', 'UserController@avatarupload')->name('avatarupload');
Route::get('/publicacion_new',function(){return view('publicacion_new');});


Route::get('/tarifario',function(){
    $user_type_all = User_type::all();
    $user_cfp_all = User_Cfp::all();
    if (Auth::user()) {
        $user = User::find(Auth::user()->id);
        $user_profile = User_Profile::where('user_id',$user->id)->first();
        //$public_path = public_path();
        //$url = Storage::url($user_profile->photo);
        //$user_profile->photo=$url;
        //dd($user_profile);
        return view('tarifario', compact('user', 'user_type_all', 'user_cfp_all', 'user_profile'));
    }else {
        return view('tarifario', compact('user_type_all', 'user_cfp_all'));
    }
} )->name('tarifario');


Route::get('/beneficios',function(){
    $user_type_all = User_type::all();
    $user_cfp_all = User_Cfp::all();
    if (Auth::user()) {
        $user = User::find(Auth::user()->id);
        $user_profile = User_Profile::where('user_id',$user->id)->first();
        //$public_path = public_path();
        //$url = Storage::url($user_profile->photo);
        //$user_profile->photo=$url;
        return view('beneficios', compact('user', 'user_type_all', 'user_cfp_all', 'user_profile'));
    }else {
        return view('beneficios', compact('user_type_all', 'user_cfp_all'));
    }
} )->name('beneficios');

Route::get('/clave',function(){
    $user_type_all = User_type::all();
    $user_cfp_all = User_Cfp::all();
    if (Auth::user()) {
        $user = User::find(Auth::user()->id);
        $user_profile = User_Profile::where('user_id',$user->id)->first();
        //$public_path = public_path();
        //$url = Storage::url($user_profile->photo);
        //$user_profile->photo=$url;
        return view('clave', compact('user', 'user_type_all', 'user_cfp_all', 'user_profile'));
    }else {
        return view('clave', compact('user_type_all', 'user_cfp_all'));
    }
} )->name('clave');

/* Rutas provisarias hasta que tenga la base de datos */
/* ruta estatica al archivo ubicado en  resources/views llamado publicaion.blade.php */
//Route::get('/perfil',function(){ return view('perfil'); } )->name('perfil');

Route::get('/publicacion',function(){ return view('publicacion'); } )->name('publicacion');
Route::get('/foto_especifico',function(){ return view('foro_especifico'); } )->name('foroX');
Route::get('/foro_tema',function(){ return view('foro_tema'); } )->Name('foroT');
Route::get('/foro',function(){ return view('foro'); } )->Name('foro');
Route::get('/interacciones',function(){ return view('interacciones'); } )->name('interacciones');
Route::get('/chat',function(){ return view('chat'); } )->name('chat');
/* Rutas publicas */
Route::get('/contacto',function(){
    $categoria_servicios_all = Categoria::where(['categoria_tipo_id' => 1,'active' => 1])->get();
    $categoria_productos_all = Categoria::where(['categoria_tipo_id' => 2,'active' => 1])->get();
    return view('contacto', compact('categoria_servicios_all', 'categoria_productos_all'));
})->name('contacto');


Route::get('/condiciones',function(){
    $categoria_servicios_all = Categoria::where(['categoria_tipo_id' => 1,'active' => 1])->get();
    $categoria_productos_all = Categoria::where(['categoria_tipo_id' => 2,'active' => 1])->get();
    return view('condiciones', compact('categoria_servicios_all', 'categoria_productos_all'));
});
Route::get('/comunidad',function(){
    $categoria_servicios_all = Categoria::where(['categoria_tipo_id' => 1,'active' => 1])->get();
    $categoria_productos_all = Categoria::where(['categoria_tipo_id' => 2,'active' => 1])->get();
    return view('comunidad', compact('categoria_servicios_all', 'categoria_productos_all'));
});

