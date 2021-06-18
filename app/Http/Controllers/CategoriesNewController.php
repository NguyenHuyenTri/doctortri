<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Categorienews;

class CategoriesNewController extends Controller
{
    public function index() {
        return Categorienews::orderBy('id', 'DESC')->get();
    }

}
