<?php

use App\User_type;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class User_typeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        User_type::create([
            'name'=>'Profesional',
        ]);
        User_type::create([
            'name'=>'Cliente',
        ]);
        User_type::create([
            'name'=>'Docente',
        ]);
        User_type::create([
            'name'=>'Referente',
        ]);

    }
}
