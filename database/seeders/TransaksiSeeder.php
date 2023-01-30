<?php

namespace Database\Seeders;

use App\Models\Transaksi;
use Carbon\Carbon;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class TransaksiSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $transaksi1 = Transaksi::firstOrCreate([
            'provinsi_id' => 17,
            'mobil_id' => 1,
            'customers_id' => 2,
            'sales_id' => 1,
            'code_transaksi' => 'ODR-20220312-923',
            'harga' => 350000000,
            'ppn' => 38500000,
            'total' => 388500000,
            'lokasi' => 'Jakarta',
            'metode_pembayaran' => 'Transfer',
            'status' => 'lunas',
            'paid_at' => Carbon::now(),
        ]);

        $transaksi2 = Transaksi::firstOrCreate([
            'provinsi_id' => 17,
            'mobil_id' => 2,
            'customers_id' => 1,
            'sales_id' => 2,
            'code_transaksi' => 'ODR-20220312-921',
            'harga' => 150000000,
            'ppn' => 16500000,
            'total' => 166500000,
            'lokasi' => 'Jakarta',
            'metode_pembayaran' => 'Transfer',
            'status' => 'lunas',
            'paid_at' => Carbon::now(),
        ]);

        $transaksi3 = Transaksi::firstOrCreate([
            'provinsi_id' => 17,
            'mobil_id' => 3,
            'customers_id' => 3,
            'sales_id' => 1,
            'code_transaksi' => 'ODR-20220312-924',
            'harga' => 400000000,
            'ppn' => 44000000,
            'total' => 444000000,
            'lokasi' => 'Jakarta',
            'metode_pembayaran' => 'Transfer',
            'status' => 'lunas',
            'paid_at' => Carbon::now(),
        ]);
    }
}
