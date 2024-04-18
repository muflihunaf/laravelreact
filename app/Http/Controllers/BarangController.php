<?php

namespace App\Http\Controllers;

use App\Models\Barang;
use App\Models\KategoriBarang;
use App\Models\SatuanBarang;
use Error;
use Illuminate\Http\Request;

class BarangController extends Controller
{
    public function getKategoriBarang(){
        // dd("hello");
        $data = KategoriBarang::all();
        return response()->json(['data' => $data]);
    }

    public function generateId(){
        $random_string = substr(str_shuffle(md5(microtime())), 0, 6);
        return response()->json(['data' => $random_string]);
    }
    public function getBarang(){
        // dd("hello");
        $data = Barang::with(['kategori','satuan'])->get();
        return response()->json(['data' => $data]);
    }

    public function getSatuanBarang(){
        // dd("hello");
        $data = SatuanBarang::all();
        return response()->json(['data' => $data]);
    }
    public function simpanBarang(Request $request)
        {
            try {
                // Validasi data yang diterima dari request
            $validatedData = $request->validate([
                'nama_barang' => 'required|string|unique:tabel_barang,nama|min:2|max:20',
                'id_user_input' => 'required|integer',
                'kode_kategori_barang' => 'required|string',
                'satuan_barang' => 'required|string|exists:tabel_satuan_barang,kode',
                'jumlah' => 'nullable|integer|min:0|max:100',
                'kode_barang' => 'required|string|unique:tabel_barang,kode|min:6|max:6', // Pastikan kode barang unik dan panjangnya 6 karakter
            ]);

            // Buat dan simpan data barang ke dalam database
            $barang = new Barang();
            $barang->nama = $validatedData['nama_barang'];
            $barang->id_user_insert = $validatedData['id_user_input'];
            $barang->kd_kategori = $validatedData['kode_kategori_barang'];
            $barang->kd_satuan = $validatedData['satuan_barang'];
            $barang->jumlah = $validatedData['jumlah'];
            $barang->kode = $validatedData['kode_barang'];
            $barang->save();

            // Kirim respons JSON yang berisi data barang yang berhasil disimpan
            return response()->json(['message' => 'Data barang berhasil disimpan', 'barang' => $request->all()], 201);

            } catch (Error $err) {
                throw $err;
            }
            }
}
