<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Transaksi extends Model
{
    use HasFactory;

    protected $table = 'transaksi';

    protected $fillable = [
        'provinsi_id',
        'mobil_id',
        'customers_id',
        'sales_id',
        'code_transaksi',
        'harga',
        'ppn',
        'total',
        'lokasi',
        'metode_pembayaran',
        'status',
        'paid_at',
    ];

    public function provinsi()
    {
        return $this->belongsTo(Provinsi::class, 'provinsi_id', 'id');
    }

    public function mobil()
    {
        return $this->belongsTo(Mobil::class, 'mobil_id', 'id');
    }

    public function customer()
    {
        return $this->belongsTo(Customer::class, 'customers_id', 'id');
    }

    public function sales()
    {
        return $this->belongsTo(Sales::class, 'sales_id', 'id');
    }
}
