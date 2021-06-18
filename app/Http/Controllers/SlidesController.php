<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Sliehome;

class SlidesController extends Controller
{
    public function index() {
        return Sliehome::orderBy('id', 'DESC')->get();
		
    }

}
