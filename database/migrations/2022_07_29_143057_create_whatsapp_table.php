<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateWhatsappTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('whatsapp', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->bigInteger('publicacion_id')->unsigned();
            $table->bigInteger('celular')->unsigned();
            $table->timestamps();
            $table->foreign('publicacion_id')->references('id')->on('publicacion')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('whatsapp');
    }
}
