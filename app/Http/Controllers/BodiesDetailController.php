<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use App\Bodiesdetail;

class BodiesdetailController extends Controller
{
    public function index($id) {
        return Bodiesdetail::query()->where('id_bodies', $id)->get();;
    }
}
