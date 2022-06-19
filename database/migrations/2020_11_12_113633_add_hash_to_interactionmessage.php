<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddHashToInteractionmessage extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('interactionmessage', function (Blueprint $table) {
            $table->string('hash')->nullable()->after('is_reply');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('interactionmessage', function (Blueprint $table) {
            $table->dropColumn('hash');
        });
    }
}
