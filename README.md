# Dokumentasi API

API ini menyediakan endpoint untuk mengelola data pengguna dan inventaris barang.

## Instalasi

Sebelum menggunakan API ini, pastikan Anda telah menginstal dependensi yang diperlukan. Jalankan perintah berikut di terminal:

```bash
composer install
npm install
npm run build
```

# Dokumentasi API

API ini menyediakan endpoint untuk mengelola data pengguna dan inventaris barang.

## Endpoint

### 1. Dapatkan Data Pengguna

- **URL:** `/`
- **Metode:** `GET`
- **Deskripsi:** Akses endpoint ini untuk melihat data pengguna.

### 2. Hasilkan Pengguna Acak

- **URL:** `/api/user/store`
- **Metode:** `GET`
- **Deskripsi:** Akses endpoint ini untuk menghasilkan pengguna acak.

### 3. Lihat Jumlah Profesi

- **URL:** `/data`
- **Metode:** `GET`
- **Deskripsi:** Akses endpoint ini untuk melihat jumlah profesi.

### 4. Lihat Inventaris

- **URL:** `/barang`
- **Metode:** `GET`
- **Deskripsi:** Akses endpoint ini untuk melihat inventaris barang.

### 5. Tambah Barang ke Inventaris

- **URL:** `/barang/simpan`
- **Metode:** `POST`
- **Deskripsi:** Akses endpoint ini untuk menambahkan barang ke inventaris.

## Penggunaan

- Untuk melihat data pengguna, buat permintaan `GET` ke `/`.
- Untuk menghasilkan pengguna acak, buat permintaan `GET` ke `/api/user/store`.
- Untuk melihat jumlah profesi, buat permintaan `GET` ke `/data`.
- Untuk melihat inventaris barang, buat permintaan `GET` ke `/barang`.
- Untuk menambahkan barang ke inventaris, buat permintaan `POST` ke `/barang/simpan`.

