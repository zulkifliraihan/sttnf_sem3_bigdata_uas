<?php

namespace Database\Seeders;

use App\Models\Customer;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class CustomersSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $customer1 = Customer::firstOrCreate([
            'name' => 'Zulkifli Raihan',
            'phone' => '085691166309',
            'address' => 'DKI Jakarta',
            'gender' => 'Laki - Laki',
        ]);

        $customer2 = Customer::firstOrCreate([
            'name' => 'Fadhil D Maulanan',
            'phone' => '08127593728',
            'address' => 'Jawa Barat',
            'gender' => 'Laki - Laki',
        ]);

        $customer3 = Customer::firstOrCreate([
            'name' => 'Jasmine',
            'phone' => '08189423321',
            'address' => 'Palembang',
            'gender' => 'Perempuan',
        ]);
    }
}
