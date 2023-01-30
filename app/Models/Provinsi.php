<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Provinsi extends Model
{
    use HasFactory;

    protected $table = 'provinsi';

    protected $fillable = [
        'name',
    ];

    public function transaksi()
    {
        return $this->hasMany(Transaksi::class, 'mobil_id', 'id');
    }
}
