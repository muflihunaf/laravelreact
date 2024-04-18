<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

class HasilResponse extends Model
{
    use HasFactory;
    protected $table = 'hasil_response';
    protected $guarded = [];

    public function jenisKelamin(): BelongsTo
    {
        return $this->belongsTo(JenisKelamin::class,'jenis_kelamin','kode');
    }

    public function profesi(): BelongsTo
    {
        return $this->belongsTo(Profesi::class,'profesi','kode');
    }
}
