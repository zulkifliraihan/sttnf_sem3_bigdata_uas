<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Mobil extends Model
{
    use HasFactory;

    protected $table = 'mobil';

    protected $fillable = [
        'merk_id',
        'name',
        'bensin',
        'tahun',
        'grade_condition',
        'harga',
        'harga_label',
        'status'
    ];

    public function merk()
    {
        return $this->belongsTo(Merk::class, 'merk_id', 'id');
    }

    public function transaksi()
    {
        return $this->hasOne(Transaksi::class, 'mobil_id', 'id');
    }
}
