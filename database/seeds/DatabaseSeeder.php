<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);
        // ya lo ejecute$this->call(User_CfpSeeder::class);
        $this->call(User_typeSeeder::class);
    }
}
