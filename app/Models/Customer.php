<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Customer extends Model
{
    use HasFactory;

    protected $table = 'customers';

    protected $fillable = [
        'name',
        'phone',
        'address',
        'gender',
    ];

    public function transaksi()
    {
        return $this->hasMany(Transaksi::class, 'mobil_id', 'id');
    }
}
