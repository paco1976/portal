<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\User;
use App\User_Cfp;
use App\User_type;
use App\User_Profile;
use App\Publicacion;
use App\Publicacion_image;
use App\Publicacion_Visita;
use App\Publicacion_Whatsapp;
use App\Zonas;
use App\Categoria;
use App\Categoria_Tipo;
use App\Titulo;
use App\Interactionhead;
use App\Interactionimage;
use App\Interactionmessage;
use App\Interactionsubjet;
Use App\Mail\ContactHome;
Use App\Mail\Interaction_notificacion_referente;
Use App\Mail\Interaction_notificacion_cliente;
Use App\Mail\Interaction_notificacion_profesional;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use Illuminate\Validation\Rules\Unique;
use Illuminate\Support\Facades\Storage;
use Illuminate\Http\File;
use Intervention\Image\Image;
use Mail;

class AdminController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function admin_profesionales(Request $request){
        $user = User::find(Auth::user()->id);
        $user->avatar = Storage::disk('avatares')->url($user->avatar);
        //$user_all = User::where('type_id',1);
        /* BORRAR ESTO CUANDO ESTÉ LISTO*/
        /*
        $publicacion_all = Publicacion::all();
        foreach($publicacion_all as $publi){
            $publi->hash = md5($publi->id);
            $publi->save(['hash']);
        }

        foreach($user_all as $usr){
                $usr->hash = md5($usr->id);
                $usr->save(['hash']);
        }
        
        $consulta_all = Interactionhead::all();
        foreach($consulta_all as $consulta){
                $consulta->hash = md5($consulta->id);
                $consulta->save(['hash']);
        }

        $mensajes_all = Interactionmessage::all();
        foreach($mensajes_all as $mensaje){
                $mensaje->hash = md5($mensaje->id);
                $mensaje->save(['hash']);
        }
        
        */


        $user->permisos = $user->user_type()->first();
        if($user->permisos->name == "Administrador"){
            $user_all = User::Buscador($request->name)->where( 'type_id', 1)->paginate(10);
            //$user_all = User::where('cfp_id', $user->cfp_id)->where( 'type_id', 1)->where('active', 1)->paginate(10);
            foreach($user_all as $usr){
                $usr->profile = $usr->user_profile()->first();
                $usr->publicaciones = $usr->publicaciones()->get();
                $usr->cant_publicaciones = $usr->publicaciones()->count();
                $usr->publi_sin_aprobar = $usr->publicaciones()->where('aprobado', 0)->count();
                $cant_head = 0;
                $usr->menssage = 0;
                $usr->menssage_not_read = 0;
                $usr->menssage_total = 0;
                foreach($usr->publicaciones as $publicacion){
                    if($publicacion){
                        $consultas = $publicacion->interactions()->get();
                        $publicacion->not_active = $publicacion->not_active + 1;
                        foreach($consultas as $consulta){
                            $usr->menssage_not_read = $usr->menssage_not_read + $consulta->messages()->where('read', false)->count();
                            $usr->menssage_total = $usr->menssage_total + $consulta->messages()->count();
                        }
                    }
                    
                }
                
            }
            return view('/admin.profesionales', compact('user', 'user_all'));
        }
        else{
            session::flash('message', 'No está autorizado para esta acción');
            return redirect('/');
        }

    }

    public function admin_publicaciones(){
        $user = User::find(Auth::user()->id);
        $user->avatar = Storage::disk('avatares')->url($user->avatar);
        $user->permisos = $user->user_type()->first();
        if($user->permisos->name == "Administrador"){
            //todas las publicaciones del cfp del admin que está conectado
            $publicaciones = Publicacion::paginate(10);
            /*
            $publicaciones = DB::table('publicacion')
            ->join('publicacion_user', 'publicacion.id', '=', 'publicacion_user.publicacion_id')
            ->join('users', 'users.id', '=', 'publicacion_user.user_id')
            ->where('users.cfp_id', $user->cfp_id)
            ->paginate(10);
            */
            //dd($publicaciones);
            foreach($publicaciones as $publicacion){
                $publicacion->user = $publicacion->users()->first();
                $publicacion->cfp = $publicacion->user->cfp()->first();
                $publicacion->titulo = Titulo::where('id', $publicacion->titulo_id)->first();
                $publicacion->categoria = Categoria::where('id', $publicacion->categoria_id)->first();
                $publicacion->cant_consultas = $publicacion->interactions()->count();
                $publicacion->cant_visitas = $publicacion->visita()->count();
                $publicacion->cant_whatsapp = $publicacion->whatsapp()->count();
                $consultas = Interactionhead::where('publicacion_id',$publicacion->id);
                $publicacion->menssage_not_read = 0;
                $publicacion->menssage_total = 0;
                foreach($publicacion->consultas as $consulta){
                    $publicacion->menssage_not_read = $publicacion->menssage_not_read + $consulta->messages()->where('read', false)->count();
                    $publicacion->menssage_total = $publicacion->menssage_total +$consulta->messages()->count();
                }
            }
                       
            return view('/admin.publicaciones', compact('user', 'publicaciones'));
        }else{
            return redirect('/');
        }
    }


    Public function admin_publicaciones_user($user_hash){
        $user = User::find(Auth::user()->id);
        $user->avatar = Storage::disk('avatares')->url($user->avatar);
        $user_publicacion = User::where('hash', $user_hash)->first();
        $user->permisos = $user->user_type()->first();
        if($user->permisos->name == "Administrador"){
            $user_publicacion->profile = $user_publicacion->user_profile()->first();
            $user_publicacion->publicaciones = $user_publicacion->publicaciones()->paginate(10);
            $user_publicacion->cant_publicaciones = $user_publicacion->publicaciones()->count();
            $cant_head = 0;
            $user_publicacion->menssage = 0;
            foreach($user_publicacion->publicaciones as $publicacion){
                if($publicacion){
                    $publicacion->consultas = $publicacion->interactions()->get();
                    $publicacion->cant_consultas = $publicacion->interactions()->count();
                    $publicacion->categoria = $publicacion->categoria()->first();
                    $publicacion->titulo = $publicacion->titulo()->first();
                    $publicacion->menssage_not_read = 0;
                    $publicacion->menssage_total = 0;
                    foreach($publicacion->consultas as $consulta){
                        $publicacion->menssage_not_read = $publicacion->menssage_not_read + $consulta->messages()->where('read', false)->count();
                        $publicacion->menssage_total = $publicacion->menssage_total +$consulta->messages()->count();
                    }
                }
                
            }
            //session::flash('message', 'No está autorizado para esta acción');
            return view('/admin.publicaciones_user', compact('user_publicacion', 'user'));
            //return view('/admin.publicaciones_user', compact('user', 'publicaciones'));
            //return view('homeprofesional', compact('user_type_all','user_cfp_all', 'publicacion','categoria', 'titulo', 'user', 'user_profile', 'zonas', 'subjets'));
        }
        else{
            session::flash('message', 'No está autorizado para esta acción');
            return redirect('/');
        }

    }

    Public function admin_publicacion_user($publicacion_hash, $origen){
        $user = User::find(Auth::user()->id);
        $user->avatar = Storage::disk('avatares')->url($user->avatar);
        $user->permisos = $user->user_type()->first();

        $publicacion = Publicacion::where('hash', $publicacion_hash)->first();
        
        $publicacion->user = $publicacion->user()->first();

        if($user->permisos->name == "Administrador"){
            //imagenes y profile
            $publicacion->user->profile = $publicacion->user->user_profile()->first();
            $publicacion->imagenes = $publicacion->imagenes()->get();
            $publicacion->cant_imagenes = $publicacion->imagenes()->count();
            //dd($publicacion->cant_imagenes);
            foreach($publicacion->imagenes as $imagen){
                $imagen->url = Storage::disk('publicaciones')->url($imagen->url);
                //$publicacion->cant_images = $publicacion->cant_images + 1 ;
            }
            if($publicacion->user->avatar == '/img/team/perfil_default.jpg'){
                //no convierte la url
            }else{
                $publicacion->user->avatar = Storage::disk('avatares')->url($publicacion->user->avatar);
                //disk('avatares')
            }
            $publicacion->titulos_asociados = $publicacion->titulos_asociados()->get();
            $publicacion->categoria = $publicacion->categoria()->first();
            $publicacion->titulo = $publicacion->titulo()->first();
            $publicacion->zonas = $publicacion->user->zonas()->get();
            
            //session::flash('message', 'No está autorizado para esta acción');
            return view('/admin.publicacion_user', compact('publicacion', 'user', 'origen'));
        }
        else{
            session::flash('message', 'No está autorizado para esta acción');
            return redirect('/');
        }

    }

    public function admin_publicaciones_aprobar_desaprobar($publicacion_hash, $origen){
        $user = User::find(Auth::user()->id);
        $user->avatar = Storage::disk('avatares')->url($user->avatar);
        $user->permisos = $user->user_type()->first();

        $publicacion = Publicacion::where('hash', $publicacion_hash)->first();
        $publicacion_user = $publicacion->user()->first();

        if($user->permisos->name == "Administrador"){

            if($publicacion->aprobado == 0){
                session::flash('message', 'La publicación se activo con éxito');
                $publicacion->aprobado = 1;
                $publicacion->save(['aprobado']);
            }else{
                session::flash('message', 'La publicación se desactivo con éxito');
                $publicacion->aprobado = 0;
                $publicacion->save(['aprobado']);
            }

            return back();
            /*
            if($origen == 'publicaciones'){
                return redirect()->route('admin_publicaciones');    
            }else{
                return redirect()->route('admin_publicaciones_user', ['user_hash' => $publicacion_user->hash]);
            }
            */
            
            //return redirect()->route('homeprofesional', ['id' => $id]);
        }
        else{
            session::flash('message', 'No está autorizado para esta acción');
            return redirect('/');
        }

    }



    public function admin_publicacion($hash){
        $user = User::find(Auth::user()->id);
                if($user->avatar == '/img/team/perfil_default.jpg'){
            //no convierte la url
        }else{
            $user->avatar = Storage::disk('avatares')->url($user->avatar);
        }
        $user->permisos = $user->user_type()->first();
        if($user->permisos->name == "Administrador"){
            
            $publicacion = Publicacion::where('hash', $hash)->first();
            //dd($publicacion);
            //no se usa esta función???
            $publicacion->imagenes = $publicacion->imagenes()->get();
            $user_publicacion = $publiacion->user_publicacion()->first();
            
            $publicacion->titulos_asociados = $publicacion->titulos_asociados()->get();
            $subjets = Interactionsubjet::get();
            
            foreach($publicacion->imagenes as $imagen){
                $imagen->url = Storage::disk('publicaciones')->url($imagen->url);
                $publicacion->cant_images = $publicacion->cant_images + 1 ;
            }
            $categoria = $publicacion->categoria()->first();
            $titulo = $publicacion->titulo()->first();
            //$user = $publicacion->users()->first();
            //dd($user);
            
            $user_profile = $user_publicacion->user_profile()->first();
            $zonas = $user_publicacion->zonas()->get();
            

            $categoria_servicios_all = Categoria::where(['categoria_tipo_id' => 1,'active' => 1])->get();
            $categoria_productos_all = Categoria::where(['categoria_tipo_id' => 2,'active' => 1])->get();

            $user_type_all = User_type::all();
            $user_cfp_all = User_Cfp::all();

            
            return view('admin.publicacion', compact('categoria_servicios_all', 'categoria_productos_all',  'user_type_all','user_cfp_all', 'publicacion','categoria', 'titulo', 'user_publicacion', 'user_profile', 'zonas', 'subjets', 'user'));
        }else{
            session::flash('message', 'No está autorizado para esta acción');
            return redirect('/');
        }
        

    }

    public function admin_publicacion_delete($publicacion_hash, $origen){
        $user = User::find(Auth::user()->id);
        $publicacion = Publicacion::where('hash',$publicacion_hash)->first();
        $user_publicacion = $publicacion->user()->first();
        //dd($user_publicacion);
        $user->permisos = $user->user_type()->first();
        if($user->permisos->name == "Administrador"){
            $imagenes_all = $publicacion->imagenes()->get();
            //borrados de imagenes de la publicacoin
            if($imagenes_all){
                foreach($imagenes_all as $imagen){
                    Storage::disk('publicaciones')->delete($imagen->url);
                    $imagen->delete();
                }
            }
            // Acá busco las consultas y trato de borrar todo lo asociado 
            //a las consultas, mensajes e imagenes
            //$consultas_all = $publicacion->consultas()->get;
            $consultas_all = Interactionhead::where('publicacion_id', $publicacion->id)->get();
            if($consultas_all){
                foreach($consultas_all as $consulta){
                    $mensajes_all = $consulta->mensajes()->get();
                    if($mensajes_all){
                        foreach($mensajes_all as $mensaje){
                            $imagenes_all = $mensaje->imagenes()->get();
                            if($imagenes_all){
                                foreach($imagenes_all as $imagen){
                                    Storage::disk('interaction')->delete($imagen->url);
                                    $imagen->delete();
                                }
                            }
                            //acá ya puedo borrar los mensajes
                            $mensaje->delete();
                        }
                    }
                    $consulta->delete();
                }
            }
            //desatachado de los títulos asociados
            $publicacion->titulos_asociados()->detach();
            //$evento->artistas()->detach(Artista::where('id', $artista->id)->first());
            //desatachado de usuario
            $publicacion->users()->detach();
            $publicacion->delete();

            Session::flash('message', 'La publiación se borró con éxito');
            return back();
            /*
            if($origen == 'publicaciones'){
                return redirect()->route('admin_publicaciones');    
            }else{
                return redirect()->route('admin_profesionales');
            }
            */
            
        }else{
            Session::flash('message', 'Usuario no autorizado');
            return back();
            /*
            if($origen == 'publicaciones'){
                return redirect()->route('admin_publicaciones');    
            }else{
                return redirect()->route('admin_profesionales');
            }
            */
        }

    }

    public function admin_user_aprobar_desaprobar($user_hash, $origen){
        $user = User::find(Auth::user()->id);
        $user->avatar = Storage::disk('avatares')->url($user->avatar);
        $user->permisos = $user->user_type()->first();
       
        //$publicacion = Publicacion::where('hash', $publicacion_hash)->first();
        $profesional_user = User::where('hash', $user_hash)->first();

        if($user->permisos->name == "Administrador" ){

            if($profesional_user->active == 0){
                session::flash('message', 'El usuario se activo con éxito');
                $profesional_user->active = 1;
                $profesional_user->save(['active']);
            }else{
                session::flash('message', 'El usuario se desactivo con éxito');
                $profesional_user->active = 0;
                $profesional_user->save(['active']);
            }

            //return redirect()->route('admin_profesionales');
            //return redirect()->route('homeprofesional', ['id' => $id]);
            return back();
            /*
            if($origen == "profesionales"){
                return redirect()->route('admin_profesionales');
            }else{
                return redirect()->route('admin_publicaciones');
            }
            */
        }
        else{
            session::flash('message', 'No está autorizado para esta acción');
            return redirect('/');
        }

    }

    public function admin_user_delete($user_hash, $origen){
        $user = User::find(Auth::user()->id);
        $user->permisos = $user->user_type()->first();
        //1-Borar las iamgenes si es que las tiene
            //2-Borrar los mensajes y las imágenes de las consultas si es que las hay
            //3-borrar las consultas
            //4-desatachar los titulos
            //5-desatachar los usuarios de las publicaciones
            //6-Borrar las publicaciones
            //7-Borrar el avatar
            //8-Borrar el usuario

        if($user->permisos->name == "Administrador"){
            $user_publicacion = User::where('hash', $user_hash)->first();
            $publicaciones_all = $user_publicacion->publicaciones()->get();
            if($publicaciones_all){
                foreach($publicaciones_all as $publicacion){
                    //1-borrados de imagenes

                    $imagenes_all = $publicacion->imagenes()->get();
                    if($imagenes_all){
                        foreach($imagenes_all as $imagen){
                            Storage::disk('publicaciones')->delete($imagen->url);
                            $imagen->delete();
                        }
                    }
                    $consultas_all = Interactionhead::where('publicacion_id', $publicacion->id)->get();
                    if($consultas_all){
                        foreach($consultas_all as $consulta){
                            $mensajes_all = $consulta->mensajes()->get();
                            if($mensajes_all){
                                foreach($mensajes_all as $mensaje){
                                    $imagenes_all = $mensaje->imagenes()->get();
                                    //2- Borra imagenes de los mensajes
                                    if($imagenes_all){
                                        foreach($imagenes_all as $imagen){
                                            Storage::disk('interaction')->delete($imagen->url);
                                            $imagen->delete();
                                        }
                                    }
                                    //2- acá ya puedo borrar los mensajes
                                    $mensaje->delete();
                                }
                            }
                            //3- Borra las consultas
                            $consulta->delete();
                        }
                    }
                    //4-desatachado de los títulos asociados
                    $publicacion->titulos_asociados()->detach();
                    //5-desatachado de usuario
                    $publicacion->users()->detach();
                    //6-borrado de la publicacion
                    $publicacion->delete();
                }
            }

            //7-borra el avatar
            Storage::disk('avatares')->delete($user_publicacion->avatar);
            //8-Borra el usuario
            $user_publicacion->delete();

            Session::flash('message','El usuario y todos sus datos se borraron con éxito');
            return back();
            /*
            if($origen == "profesionales"){
                return redirect()->route('admin_profesionales');
            }else{
                return redirect()->route('admin_publicaciones');
            }
            */
            
        }else{
            Session::flash('message', 'Usuario no autorizado');
            return back();
            /*
            if($origen == "profesionales"){
                return redirect()->route('admin_profesionales');
            }else{
                return redirect()->route('admin_publicaciones');
            }
            */
        }

    }

    public function admin_consultas($publicacion_hash){
        //dd($publicacion_hash);
        $user = User::find(Auth::user()->id);
        $user->avatar = Storage::disk('avatares')->url($user->avatar);
        $publicacion = Publicacion::where('hash', $publicacion_hash)->first();
        $publicacion->user = $publicacion->user()->first();
        $user->permisos = $user->user_type()->first();
        if($user->permisos->name == "Administrador" ){
            //$evento_all = Evento::where('fecha_evento', '<=',$date)->orderby('fecha_evento')->paginate(10);
            $interactionhead_all = Interactionhead::where('publicacion_id', $publicacion->id)->orderby('date', 'DESC')->paginate(10);

            foreach($interactionhead_all as $interactionhead){
                $interactionhead->subjet = $interactionhead->subjet()->first();
                $interactionhead->message_not_read = $interactionhead->messages()->where('read', false)->count();
                $interactionhead->menssage_total = $interactionhead->messages()->count();
            }
                        
            return view('admin.consultas', compact('publicacion', 'interactionhead_all','user'));
            
        }
        else{
            session::flash('message', 'No está autorizado para esta acción');
            return redirect('/');
        }
    }

    public function admin_visitas($publicacion_hash){
        //dd($publicacion_hash);
        $user = User::find(Auth::user()->id);
        $user->avatar = Storage::disk('avatares')->url($user->avatar);
        $publicacion = Publicacion::where('hash', $publicacion_hash)->first();
        $publicacion->titulo = Titulo::where('id', $publicacion->titulo_id)->first();
        $publicacion->categoria = Categoria::where('id', $publicacion->categoria_id)->first();
        $publicacion->user = $publicacion->user()->first();
        $publicacion->visitas_all = $publicacion->visita()->get();
        $user->permisos = $user->user_type()->first();
        if($user->permisos->name == "Administrador" ){
            //$evento_all = Evento::where('fecha_evento', '<=',$date)->orderby('fecha_evento')->paginate(10);
            $visitas_all = Publicacion_Visita::where('publicacion_id', $publicacion->id)->orderby('id', 'DESC')->paginate(10);
                        
            return view('admin.visitas', compact('publicacion', 'visitas_all','user'));
            
        }
        else{
            session::flash('message', 'No está autorizado para esta acción');
            return redirect('/');
        }
    }

    public function admin_whatsapp($publicacion_hash){
        //dd($publicacion_hash);
        $user = User::find(Auth::user()->id);
        $user->avatar = Storage::disk('avatares')->url($user->avatar);
        $publicacion = Publicacion::where('hash', $publicacion_hash)->first();
        $publicacion->titulo = Titulo::where('id', $publicacion->titulo_id)->first();
        $publicacion->categoria = Categoria::where('id', $publicacion->categoria_id)->first();
        $publicacion->user = $publicacion->user()->first();
        $publicacion->whatsapp_all = $publicacion->visita()->get();
        $user->permisos = $user->user_type()->first();
        if($user->permisos->name == "Administrador" ){
            //$evento_all = Evento::where('fecha_evento', '<=',$date)->orderby('fecha_evento')->paginate(10);
            $whatsapp_all = Publicacion_Whatsapp::where('publicacion_id', $publicacion->id)->orderby('id', 'DESC')->paginate(10);
                        
            return view('admin.whatsapp', compact('publicacion', 'whatsapp_all','user'));
            
        }
        else{
            session::flash('message', 'No está autorizado para esta acción');
            return redirect('/');
        }
    }

    public function admin_mensajes($hash){
        $user = User::find(Auth::user()->id);
        $user->avatar = Storage::disk('avatares')->url($user->avatar);
        $user->permisos = $user->user_type()->first();
        if($user->permisos->name == "Administrador"){
            $interactionhead = Interactionhead::where('hash', $hash)->first();
            $mensajes_all = Interactionmessage::where('head_id', $interactionhead->id)->get();
            $publicacion = Publicacion::where('id', $interactionhead->publicacion_id)->first();
            //dd($publicacion);
            $publicacion->user = $publicacion->users()->first();
            $categoria = Categoria::where('id', $publicacion->categoria_id)->first();
            
            foreach($mensajes_all as $mensaje){
                $mensaje->imagenes = Interactionimage::where('message_id', $mensaje->id)->get();
                $mensaje->date = str_replace('/','-',  $mensaje->date );
                $mensaje->date = date('d-m-Y H:i:s', strtotime($mensaje->date));
                foreach($mensaje->imagenes as $imagen){
                    $imagen->url = Storage::disk('interaction')->url($imagen->url);
                }
            }
            return view('/admin.mensajes', compact('interactionhead', 'mensajes_all', 'publicacion', 'user'));
        }else{
            return redirect('/');
        }

    }

    public function admin_categorias(){
        $user = User::find(Auth::user()->id);
        $user->avatar = Storage::disk('avatares')->url($user->avatar);
        $user->permisos = $user->user_type()->first();
        $categoria_all = Categoria::where(['categoria_tipo_id' => 1])->orderby('name', 'ASC')->paginate(10);
        if($user->permisos->name == "Administrador"){
            foreach($categoria_all as $categoria){
                $categoria->icon = Storage::disk('categorias')->url($categoria->icon);
            }

            return view('/admin.categorias', compact('categoria_all', 'user'));
        }else{
            session::flash('message', 'No está autorizado');
            return redirect('/');
        }
    }    

    public function admin_categoria_activar_desactivar($id){
        $user = User::find(Auth::user()->id);
        $user->avatar = Storage::disk('avatares')->url($user->avatar);
        $user->permisos = $user->user_type()->first();
        $categoria = Categoria::where('id', $id)->first();
        if($user->permisos->name == "Administrador"){
            if($categoria->active==1){
                $categoria->active=0;
                $categoria->save();
                session::flash('message', 'La categoría se desactivo con éxito');
            }else{
                $categoria->active=1;
                $categoria->save();
                session::flash('message', 'La categoría se activo con éxito');
            }
            return back();
        }else{
            session::flash('message', 'No está autorizado');
            return redirect('/');
        }
    }
    
    public function admin_categoria_icon(){
        $user = User::find(Auth::user()->id);
        $user->permisos = $user->user_type()->first();
        $data = request()->validate([
            'categoria_id' => '',
            'file' => ['required','image','max:2048'],
        ],[
            'file.required' =>'Debe subir una imagen válida',
        ]);
        
        if($user->permisos->name == "Administrador"){
            $categoria = Categoria::where('id', $data['categoria_id'])->first();
            //borro la imagen actual
            
            Storage::disk('categorias')->delete($categoria->icon);

            $carpetas = Storage::disk('categorias')->directories();
            $directorio_existe = false;
            foreach($carpetas as $carpeta){
                if($carpeta == $categoria->id){   
                    $directorio_existe = true;
                }
            }
            if($directorio_existe == false){
                //$resultado = Storage::makeDirectory('publicaciones/'. $publicacion->id, 0755, true);
                $resultado = Storage::disk('categorias')->makeDirectory($categoria->id, 0777, true);
            }
        
            $path = Storage::disk('categorias')->putFILE($categoria->id, request()->file('file'));
            $categoria->icon = $path;
            $categoria->save(['icon']);

            session::flash('message', 'La imagen se cambió con éxito');
            return back();
        }else{
            session::flash('message', 'No está autorizado');
            return redirect('/');
        }
    }
  

}
