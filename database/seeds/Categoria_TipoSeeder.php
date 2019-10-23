<?php

use App\Categoria_Tipo;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class Categoria_TipoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Categoria_Tipo::create([
            'name'=>'Servicio',
        ]);
        Categoria_Tipo::create([
            'name'=>'Producto',
        ]);
    }
}
