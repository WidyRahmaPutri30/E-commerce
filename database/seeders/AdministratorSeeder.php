<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class AdministratorSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \DB::table('administrators')->insert([
	       [
                'name' => 'Admin',
                'email' => 'admin@example.org',
                'password' => bcrypt('12345678'),
            ],
	    ]);
    }
}
