<?php

use App\Interactionsubjet;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class InteractionsubjetSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Interactionsubjet::create([
            'name'=>'Consulta general',
        ]);
        Interactionsubjet::create([
            'name'=>'Pedir presupuesto',
        ]);
        Interactionsubjet::create([
            'name'=>'Programar visita',
        ]);
        
    }
}
