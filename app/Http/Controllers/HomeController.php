<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Helper\RandomUser;
use App\Models\HasilResponse;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{

    public function index() {
        $data = HasilResponse::with(['jenisKelamin','profesi'])->get();
        return response()->json(['data' => $data]);
    }

    public function store(){
        $randomUser = new RandomUser();
        $users = $randomUser->fetch(25);
        HasilResponse::truncate();
        $data = [];
        foreach ($users as $user) {
            $tmp = [
                'jenis_kelamin' => ($user['gender'] === 'male') ? '1' : '2',
                'nama' => $user['name']['first'] . ' ' . $user['name']['last'],
                'nama_jalan' => $user['location']['street']['name'],
                'email' => $user['email'],
                'angka_kurang' => $randomUser->countNumbersLessThanSeven($user),
                'angka_lebih' => $randomUser->countNumbersMoreThanSeven($user),
                'profesi' => $randomUser->generateRandomProfession(),
                'plain_json' => json_encode($user)
            ];
            $newUser = HasilResponse::create($tmp);
            array_push($data,$tmp);
        }

        return response()->json($data);
    }

    public function data(){
        $professionsCount = HasilResponse::with(['profesi'])->select('profesi', DB::raw('COUNT(*) as total'))
                                        ->groupBy('profesi')
                                        ->get();

        return response()->json(['data'=>$professionsCount]);
    }


}
