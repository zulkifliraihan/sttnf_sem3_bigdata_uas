<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
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
        $this->call(ProvinsiSeeder::class);
        $this->call(CustomersSeeder::class);
        $this->call(SalesSeeder::class);
        $this->call(MerkSeeder::class);
        $this->call(MobilSeeder::class);
        $this->call(TransaksiSeeder::class);
    }
}
