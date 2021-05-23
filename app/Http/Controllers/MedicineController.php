<?php

namespace App\Http\Controllers;

use App\Medicine;
use Illuminate\Http\Request;

class MedicineController extends Controller
{
    public function read() {
        return Medicine::all();
    }

    public function create(Request $request) {
        
    }

    public function show($id) {

    }

    public function update(Request $request, $id) {

    }

    public function destroy($id) {

    }
}
