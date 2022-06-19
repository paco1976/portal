<?php

namespace App\Http\Controllers\Auth;

use App\User;
use App\User_Profile;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Session\Store;
use Illuminate\Support\Facades\Storage;
use Illuminate\Http\File;
use Intervention\Image\Image;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = '/perfil';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => ['required', 'string', 'max:255'],
            'last_name' => ['required', 'string', 'max:255'],
            'dni' => ['required', 'string', 'max:255'],
            'avatar' => ['required','image','max:2048'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
            'user_type' => ['required'],
            'user_cfp' => ['required'],
        ]);

    }


    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */
    protected function create(array $data)
    {

        //$path = request()->file('avatar')->store('avatares');
        //$path = Storage::disk('avatares')->putFILE($publicacion->id, request()->file('avatar'));
        //$path = Storage::url($path);
        //$path = 'storage/'. $path;
        //dd($path);
        
        //$image = request()->file('avatar');
        //dd($path);

        //$img = Image::make($image->getRealPath());
        //$img->resize(100, 100, function ($constraint) {
        //       $constraint->aspectRatio();
         //   });
        //$path = request()->file('avatar')->store('avatares');
        //$path = Storage::url($path);

        //$image = $request()->file('image');
        //$destinationPath = public_path('/thumbnail');
        //$img = Image::make($image->getRealPath());
        //$img->resize(100, 100, function ($constraint) {
		//    $constraint->aspectRatio();
		//})->save($destinationPath.'/'.$input['imagename']);
        //dd($data);

        $user = User::create([
            'name' => $data['name'],
            'last_name' => $data['last_name'],
            'dni' => $data['dni'],
            'email' => $data['email'],
            'password' => Hash::make($data['password']),
            'type_id' => $data['user_type'],
            'cfp_id' => $data['user_cfp'],
        ]);

        $user->hash = md5($user->id);
        $user->save();
        
        
        //creo la carpeta con el numero de id
        $resultado = Storage::disk('avatares')->makeDirectory($user->id, 0777);
        //subo el archivo y guardo el path
        $path = Storage::disk('avatares')->putFILE($user->id, request()->file('avatar'));
        //actualizo el path del avatar
        $user->avatar = $path;
        //guardo el path del avatar
        $user->save(['avatar']);
        //dd($user->avatar);
        return  $user;

    }
}
