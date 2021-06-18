<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Diseaseweather;

class DiseaseController extends Controller
{
    public function index() {
        return Diseaseweather::all();
    }

}
