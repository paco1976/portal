<?php

use App\Categoria;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class Categoria_ProductosSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Categoria::create([
            'name'=>'Productos de Carpintería',
            'icon'=>'storage/icon/producto_carpinteria.jpg',
            'categoria_tipo_id'=>'2',
            'active'=>'1',
        ]);
        Categoria::create([
            'name'=>'Productos de Herrería',
            'icon'=>'storage/icon/producto_herreria.jpg',
            'categoria_tipo_id'=>'2',
            'active'=>'1',
        ]);
        Categoria::create([
            'name'=>'Artefactos para el hogar ( aire/electrodomésticos)',
            'icon'=>'storage/icon/producto_hogar.jpg',
            'categoria_tipo_id'=>'2',
            'active'=>'1',
        ]);
        Categoria::create([
            'name'=>'Productos Gráficos (Diseño gráfico y serigrafía)',
            'icon'=>'storage/icon/producto_graficos.jpg',
            'categoria_tipo_id'=>'2',
            'active'=>'1',
        ]);
        Categoria::create([
            'name'=>'Belleza y cuidados personales (Packs peluquería, masajes, estética facial)',
            'icon'=>'storage/icon/producto_belleza.jpg',
            'categoria_tipo_id'=>'2',
            'active'=>'1',
        ]);
        Categoria::create([
            'name'=>'Indumentaria',
            'icon'=>'storage/icon/producto_indumentaria.jpg',
            'categoria_tipo_id'=>'2',
            'active'=>'1',
        ]);
        Categoria::create([
            'name'=>'Gastronomía / Exquisiteces',
            'icon'=>'storage/icon/producto_gastronomia.jpg',
            'categoria_tipo_id'=>'2',
            'active'=>'1',
        ]);
        Categoria::create([
            'name'=>'Alfarería / Cerámica',
            'icon'=>'storage/icon/producto_alfareria.jpg',
            'categoria_tipo_id'=>'2',
            'active'=>'1',
        ]);

    }
}
