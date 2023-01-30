<?php

namespace Database\Seeders;

use App\Models\Sales;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class SalesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        $sales1 = Sales::firstOrCreate([
            'no_karyawan' => 'IL29070128',
            'name' => 'Zulkifli Raihan',
            'gender' => 'Laki - Laki',
        ]);

        $sales2 = Sales::firstOrCreate([
            'no_karyawan' => 'IL21010828',
            'name' => 'Fadhil D Maulanan',
            'gender' => 'Laki - Laki',
        ]);

        $sales3 = Sales::firstOrCreate([
            'no_karyawan' => 'FK82912HYQ',
            'name' => 'Jasmine',
            'gender' => 'Perempuan',
        ]);
    }
}
