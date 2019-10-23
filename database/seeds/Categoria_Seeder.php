<?php

use App\Categoria;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class Categoria_Seeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Categoria::create([
            'name'=>'Carpintero/a',
            'icon'=>'storage/icon/carpintero.jpg',
            'categoria_tipo_id'=>'1',
            'active'=>'1',
        ]);
        Categoria::create([
            'name'=>'Electricista',
            'icon'=>'storage/icon/electricista.jpg',
            'categoria_tipo_id'=>'1',
            'active'=>'1',
        ]);
        Categoria::create([
            'name'=>'Gasista',
            'icon'=>'storage/icon/gasista.jpg',
            'categoria_tipo_id'=>'1',
            'active'=>'1',
        ]);
        Categoria::create([
            'name'=>'Herrero/a',
            'icon'=>'storage/icon/herrero.jpg',
            'categoria_tipo_id'=>'1',
            'active'=>'1',
        ]);
        Categoria::create([
            'name'=>'Plomero/a',
            'icon'=>'storage/icon/plomero.jpg',
            'categoria_tipo_id'=>'1',
            'active'=>'1',
        ]);
        Categoria::create([
            'name'=>'Soldador/a',
            'icon'=>'storage/icon/soldador.jpg',
            'categoria_tipo_id'=>'1',
            'active'=>'1',
        ]);
        Categoria::create([
            'name'=>'Técnico/a aire acondicionado',
            'icon'=>'storage/icon/acondicionado.jpg',
            'categoria_tipo_id'=>'1',
            'active'=>'1',
        ]);
        Categoria::create([
            'name'=>'Técnico/a de electrodomesticos',
            'icon'=>'storage/icon/electrodomesticos.jpg',
            'categoria_tipo_id'=>'1',
            'active'=>'1',
        ]);
        Categoria::create([
            'name'=>'Esteticista corporal',
            'icon'=>'storage/icon/estetica.jpg',
            'categoria_tipo_id'=>'1',
            'active'=>'1',
        ]);
        Categoria::create([
            'name'=>'Esteticista facial',
            'icon'=>'storage/icon/estetica.jpg',
            'categoria_tipo_id'=>'1',
            'active'=>'1',
        ]);
        Categoria::create([
            'name'=>'Manicura y depilador/a',
            'icon'=>'storage/icon/manicura.jpg',
            'categoria_tipo_id'=>'1',
            'active'=>'1',
        ]);
        Categoria::create([
            'name'=>'Maquillador/a',
            'icon'=>'storage/icon/maquilladora.jpg',
            'categoria_tipo_id'=>'1',
            'active'=>'1',
        ]);
        Categoria::create([
            'name'=>'Peluquero/a',
            'icon'=>'storage/icon/peluquera.jpg',
            'categoria_tipo_id'=>'1',
            'active'=>'1',
        ]);
        Categoria::create([
            'name'=>'Diseñador/a web y gráfico',
            'icon'=>'storage/icon/grafico.jpg',
            'categoria_tipo_id'=>'1',
            'active'=>'1',
        ]);
        Categoria::create([
            'name'=>'Técnico/a de PC',
            'icon'=>'storage/icon/pc.jpg',
            'categoria_tipo_id'=>'1',
            'active'=>'1',
        ]);
        Categoria::create([
            'name'=>'Bicicletero/a',
            'icon'=>'storage/icon/bicicleta.jpg',
            'categoria_tipo_id'=>'1',
            'active'=>'1',
        ]);
        Categoria::create([
            'name'=>'Diseño, costura, arreglos y otros',
            'icon'=>'storage/icon/costura.jpg',
            'categoria_tipo_id'=>'1',
            'active'=>'1',
        ]);
        Categoria::create([
            'name'=>'Marroquinero/a',
            'icon'=>'storage/icon/marroquinero.jpg',
            'categoria_tipo_id'=>'1',
            'active'=>'1',
        ]);
        Categoria::create([
            'name'=>'Realizador/a de video',
            'icon'=>'storage/icon/video.jpg',
            'categoria_tipo_id'=>'1',
            'active'=>'1',
        ]);
        Categoria::create([
            'name'=>'Sonidista',
            'icon'=>'storage/icon/sonidista.jpg',
            'categoria_tipo_id'=>'1',
            'active'=>'1',
        ]);
        Categoria::create([
            'name'=>'Catering, repostería y otros',
            'icon'=>'storage/icon/repostera.jpg',
            'categoria_tipo_id'=>'1',
            'active'=>'1',
        ]);

    }
}
