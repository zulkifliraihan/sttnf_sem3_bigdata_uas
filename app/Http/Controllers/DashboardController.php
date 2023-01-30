<?php

namespace App\Http\Controllers;

use App\Models\Merk;
use App\Models\Mobil;
use App\Models\Provinsi;
use App\Models\Transaksi;
use Carbon\Carbon;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index()
    {

        $provinsi = $this->perProvinsi();
        $transaksiByMerk = $this->transaksiByMerk();
        $transaksiCustomerByGender = $this->transaksiCustomerByGender();
        $transaksiSalesByGender = $this->transaksiSalesByGender();
        $transaksiByYear = $this->transaksiByYear();

        $data = [
            'provinsi' => $provinsi,
            'transaksiCustomerByGender' => $transaksiCustomerByGender,
            'transaksiSalesByGender' => $transaksiSalesByGender,
            'transaksiByMerk' => $transaksiByMerk,
            'transaksiByYear' => $transaksiByYear,
        ];

        // dd($data);
        return view('dashboard.content', $data);
    }

    public function perProvinsi()
    {
        $provinsi = Provinsi::with('transaksi')->get();

        $total = [];
        foreach ($provinsi as $key => $value) {
            array_push($total, $value->transaksi->count());
        }

        $names = [];
        foreach ($provinsi as $key => $value) {
            array_push($names, ucwords($value->name));
        }

        $data = [
            'total' => $total,
            'names' => $names,
        ];

        return $data;

    }

    public function transaksiByMerk()
    {
        $merk = Merk::with('mobil')->get();

        $total = [];
        foreach ($merk as $key => $value) {
            $mobil = Mobil::where('merk_id', $value->id)->where('status', 'sold')->count();
            array_push($total, $mobil);
        }

        $names = [];
        foreach ($merk as $key => $value) {
            array_push($names, ucwords($value->name));
        }

        $data = [
            'names' => $names,
            'total' => $total,
        ];

        return $data;

    }

    public function transaksiByYear()
    {
        $transaksi = Transaksi::all();

        $transaksi = Transaksi::
                get()
                ->groupBy(function($val) {
                    return Carbon::parse($val->paid_at)->format('Y');
                });

        $years = [];
        $total = [];
        foreach ($transaksi as $key => $value) {
            array_push($years, $key);
            array_push($total, $value->count());
        }

        $data = [
            'years' => $years,
            'total' => $total,
        ];

        return $data;

    }

    public function transaksiCustomerByGender()
    {
        $transaksi = Transaksi::with('customer')->get();

        $gender = ['Laki - Laki', 'Perempuan'];

        $total = [];
        $totalLakiLaki = 0;
        $totalPerempuan = 0;

        foreach ($transaksi as $value) {
            if ($value->customer->gender == "Laki - Laki") {
                $totalLakiLaki += 1;
            } else {
                $totalPerempuan += 1;
            }

        }

        array_push($total, $totalLakiLaki, $totalPerempuan);

        $data = [];

        $itemLaki = (object) [
            'name' => 'Laki - Laki',
            'total' => $totalLakiLaki
        ];

        $itemPerempuan = (object) [
            'name' => 'Perempuan',
            'total' => $totalPerempuan
        ];

        array_push($data, $itemLaki, $itemPerempuan);

        return [
            'gender' => $gender,
            'total' => $total,
            'alldata' => $data
        ];
    }

    public function transaksiSalesByGender()
    {
        $transaksi = Transaksi::with('sales')->get();

        $gender = ['Laki - Laki', 'Perempuan'];

        $total = [];
        $totalLakiLaki = 0;
        $totalPerempuan = 0;

        foreach ($transaksi as $value) {
            if ($value->sales->gender == "Laki - Laki") {
                $totalLakiLaki += 1;
            } else {
                $totalPerempuan += 1;
            }

        }

        array_push($total, $totalLakiLaki, $totalPerempuan);

        $data = [];

        $itemLaki = (object) [
            'name' => 'Laki - Laki',
            'total' => $totalLakiLaki
        ];

        $itemPerempuan = (object) [
            'name' => 'Perempuan',
            'total' => $totalPerempuan
        ];

        array_push($data, $itemLaki, $itemPerempuan);

        return [
            'gender' => $gender,
            'total' => $total,
            'alldata' => $data
        ];
    }
}
