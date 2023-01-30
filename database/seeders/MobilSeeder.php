<?php

namespace Database\Seeders;

use App\Models\Mobil;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class MobilSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $mobil1 = Mobil::firstOrCreate([
            'merk_id' => 1,
            'name' => 'Honda CRV',
            'bensin' => 'bensin',
            'tahun' => '2021',
            'grade_condition' => 'A',
            'harga' => 350000000,
            'harga_label' => '350.000.000',
        ]);

        $mobil2 = Mobil::firstOrCreate([
            'merk_id' => 2,
            'name' => 'Wuling Almaz',
            'bensin' => 'bensin',
            'tahun' => '2020',
            'grade_condition' => 'B',
            'harga' => 150000000,
            'harga_label' => '150.000.000',
        ]);

        $mobil3 = Mobil::firstOrCreate([
            'merk_id' => 4,
            'name' => 'Toyota Fortuner',
            'bensin' => 'diesel',
            'tahun' => '2019',
            'grade_condition' => 'C',
            'harga' => 400000000,
            'harga_label' => '400.000.000',
        ]);
    }
}
