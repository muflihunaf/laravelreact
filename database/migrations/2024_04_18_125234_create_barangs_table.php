<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('tabel_barang', function (Blueprint $table) {
            $table->id();
            $table->string('kode');
            $table->string('kd_kategori');
            $table->string('nama');
            $table->string('jumlah');
            $table->string('kd_satuan');
            $table->string('id_user_insert');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('tabel_barang');
    }
};
