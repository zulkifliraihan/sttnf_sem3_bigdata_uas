<?php

namespace Database\Seeders;

use App\Models\Provinsi;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class ProvinsiSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $provinsis = [
            'Aceh',
            'Sumatera Utara',
            'Sumatera Selatan',
            'Sumatera Barat',
            'Bengkulu',
            'Riau',
            'Riau',
            'Jambi',
            'Lampung',
            'Bangka Belitung',
            'Kalimantan Barat',
            'Kalimantan Timur',
            'Kalimantan Selatan',
            'Kalimantan Tengah',
            'Kalimantan Utara',
            'Banten',
            'DKI Jakarta',
            'Jawa Barat',
            'Jawa Tengah',
            'Yogyakarta',
            'Jawa Timur',
            'Bali',
            'Nusa Tenggara Timur',
            'Nusa Tenggara Barat',
            'Gorontalo',
            'Sulawesi Barat',
            'Sulawesi Tengah',
            'Sulawesi Utara',
            'Sulawesi Tenggara',
            'Sulawesi Selatan',
            'Maluku Utara',
            'Maluku',
            'Papua Barat',
            'Papua',
            'Papua Tengah',
            'Papua Pegunungan',
            'Papua Selatan',
            'Papua Barat Daya',
        ];

        foreach ($provinsis as $provinsi) {
            $toMerk = Provinsi::firstOrCreate(['name' => $provinsi]);
        }
    }
}
