<?php

namespace App\Helper;

use Illuminate\Support\Facades\Http;

class RandomUser
{
    protected $apiUrl;

    public function __construct()
    {
        $this->apiUrl = 'https://randomuser.me/api/';
    }

    public function fetch($results = 1)
    {
        $response = Http::get($this->apiUrl, ['results' => $results]);

        if ($response->failed()) {
            // Handle jika gagal mengambil data dari API
            return null;
        }

        $users = $response->json()['results'];

        return $users;
    }

    public function countNumbersLessThanSeven($user)
    {
        $totalLessThanSeven = 0;

            // Dapatkan hash MD5 dari nama pertama pengguna
            $md5Hash = md5($user['name']['first']);

            // Hitung jumlah angka yang nilainya < 7
            for ($i = 0; $i < strlen($md5Hash); $i++) {
                $char = $md5Hash[$i];
                if (is_numeric($char) && intval($char) < 7) {
                    $totalLessThanSeven++;
                }
            }

        return $totalLessThanSeven;
    }


    public function countNumbersMoreThanSeven($user)
    {
        $totalMoreThanSeven = 0;

            // Dapatkan hash MD5 dari nama pertama pengguna
            $md5Hash = md5($user['name']['first']);

            // Hitung jumlah angka yang nilainya > 7
            for ($i = 0; $i < strlen($md5Hash); $i++) {
                $char = $md5Hash[$i];
                if (is_numeric($char) && intval($char) > 7) {
                    $totalMoreThanSeven++;
                }
            }

        return $totalMoreThanSeven;
    }



    public function generateRandomProfession()
    {
        $professions = ['A', 'B', 'C', 'D', 'E'];
        $randomIndex = array_rand($professions);
        return $professions[$randomIndex];
    }
}
