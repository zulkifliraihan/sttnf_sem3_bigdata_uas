<?php

namespace Database\Seeders;

use App\Models\Merk;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class MerkSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $merks = [
            'honda',
            'wuling',
            'hyundai',
            'toyota',
            'daihatsu',
        ];

        foreach ($merks as $merk) {
            $toMerk = Merk::firstOrCreate(['name' => $merk]);
        }
    }
}
