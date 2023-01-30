<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Sales extends Model
{
    use HasFactory;

    protected $table = 'sales';

    protected $fillable = [
        'no_karyawan',
        'name',
        'gender',
    ];

    public function transaksi()
    {
        return $this->hasMany(Transaksi::class, 'mobil_id', 'id');
    }
}
