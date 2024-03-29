<?php

namespace App\Http\Controllers;

use App\User_Cfp;
use App\User_type;
use App\User;
use App\User_Profile;
use App\Publicacion;
use Illuminate\Http\Request;
use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\Hash;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {   
        $user = User::find(Auth::user()->id);
        $user->type = $user->user_type()->first();
       
        $miszonas = $user->zonas()->get();
        $user_profile = User_Profile::where('user_id',$user->id)->first();
        $user_type_all = User_type::all();
        $user_cfp_all = User_Cfp::all();
        return view('perfil', compact('user', 'user_type_all','user_cfp_all', 'user_profile', 'miszonas'));
    }
    
}
