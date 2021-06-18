<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Body;

class BodiesController extends Controller
{
    public function index() {
        return Body::all();
    }

}
