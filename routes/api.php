<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/api/medicines', [MedicineController::class, 'read']);
Route::post('/api/medicines', [MedicineController::class, 'create']);
Route::get('/api/medicines/{id}', [MedicineController::class, 'show']);
Route::put('/api/medicines/{id}', [MedicineController::class, 'update']);
Route::get('/api/medicines/delete/{id}', [MedicineController::class, 'destroy']);
