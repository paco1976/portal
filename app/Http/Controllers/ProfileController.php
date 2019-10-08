<?php

namespace App\Http\Controllers;

use App\User_Cfp;
use App\User_Profile;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Http\File;
use Intervention\Image\Image;
use Illuminate\Support\Facades\Session;

class ProfileController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function nuevo($id){
        $user = User::find($id);
        $user_cfp = User_Cfp::where('id',$user->cfp_id)->first();
        //$user_profile = User_Profile::find($user->_id);
        $user_cfp_all = User_Cfp::all();
        $user_profile ="";
        //$user_profile = User_Profile::find($id);
        //dd($user_profile);

        return view('perfil_new', compact('user', 'user_cfp','user_cfp_all', 'user_profile'));

    }

    public function store($id){

        $data = request()->validate([
            'mobile'=> 'required',
            'user_cfp'=> 'required',
            'phono'=> '',
            'twitter' => '',
            'facebook' => '',
            'instagram' => '',
            'linkedin' => '',
        ],[
            'mobile.required'=>'El campo celular es obligatorio',
            'user_cfp.required'=> 'CFP es obligatorio',
        ]);


        //obtenemos el campo file definido en el formulario
       // $file = request()->file('photo');


        //obtenemos el nombre del archivo
        //$nombre = $file->getClientOriginalName();
        //$path = request()->file('photo')->store($id);
        //$path = Storage::url($path);
        //dd($path);

        $user = User::find($id);
        $user->save(['user_cfp']);
        User_Profile::create([
            'user_id' => $id,
            'mobile' => $data['mobile'],
            'phone' => $data['phono'],
            'twitter' => $data['twitter'],
            'facebook' => $data['facebook'],
            'instagram' => $data['instagram'],
            'linkedin' => $data['linkedin'],
        ]);

        Session::flash('message', 'El perfil se actualizado con éxito');

        return redirect('perfil');


    }

    public function edit($id){
        $user = User::find($id);
        $user_profile = User_Profile::where('user_id',$user->id)->first();
        $user_cfp = User_Cfp::where('id',$user->cfp_id)->first();
        $user_cfp_all = User_Cfp::all();
        //$public_path = public_path();
        //dd($user_profile);
        //$url = Storage::url($user_profile->photo);
        //$user_profile->photo=$url;

        return view('perfil_edit', compact('user', 'user_cfp', 'user_profile', 'user_cfp_all'));
    }

    public function update($id){
        $user = User::find($id);
        $user_profile = User_Profile::where('user_id',$user->id)->first();
        $data = request()->validate([
            'mobile'=> 'required',
            'user_cfp'=>'required',
            'phono'=> '',
            'twitter' => '',
            'facebook' => '',
            'instagram' => '',
            'linkedin' => '',
        ],[
            'mobile.required'=>'El campo celular es obligatorio',
            'user_cfp.required'=>'El campo cfp es obligatorio',
        ]);

        $user->cfp_id = $data['user_cfp'];

        $user_profile->user_id=$user->id;
        $user_profile->mobile= $data['mobile'];
        $user_profile->phone= $data['phono'];
        $user_profile->twitter= $data['twitter'];
        $user_profile->facebook= $data['facebook'];
        $user_profile->instagram= $data['instagram'];
        $user_profile->linkedin= $data['linkedin'];
        $user->save(['user_cfp']);

        $user_profile->save(['mobile', 'phone', 'twitter', 'facebook', 'instagram', 'linkedin']);

        Session::flash('message', 'El perfil se actualizado con éxito');
        return redirect('perfil');
    }

}
