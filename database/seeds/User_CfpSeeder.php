<?php

use App\User_Cfp;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class User_CfpSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User_Cfp::create([
            'name'=>'CFP N°01',
            'email'=>'cefeperes01@cefeperes.com.ar',
        ]);
        User_Cfp::create([
            'name'=>'CFP N°04',
            'email'=>'cefeperes04@cefeperes.com.ar',
        ]);
        User_Cfp::create([
            'name'=>'CFP N°06',
            'email'=>'cefeperes06@cefeperes.com.ar',
        ]);
        User_Cfp::create([
            'name'=>'CFP N°07',
            'email'=>'cefeperes07@cefeperes.com.ar',
        ]);
        User_Cfp::create([
            'name'=>'CFP N°09',
            'email'=>'cefeperes09@cefeperes.com.ar',
        ]);
        User_Cfp::create([
            'name'=>'CFP N°24',
            'email'=>'cefeperes24@cefeperes.com.ar',
        ]);
        User_Cfp::create([
            'name'=>'CFP N°36',
            'email'=>'cefeperes36@cefeperes.com.ar',
        ]);
        User_Cfp::create([
            'name'=>'No corresponde',
            'email'=>'no-relay@mail.com',
        ]);

    }
}
