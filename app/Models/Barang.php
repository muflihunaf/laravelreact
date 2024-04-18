<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class Barang extends Model
{
    use HasFactory;
    protected $table = 'tabel_barang';

    public function kategori(): BelongsTo
    {
        return $this->belongsTo(KategoriBarang::class,'kd_kategori','kode');
    }

    public function satuan(): BelongsTo
    {
        return $this->belongsTo(SatuanBarang::class,'kd_satuan','kode');
    }
}
