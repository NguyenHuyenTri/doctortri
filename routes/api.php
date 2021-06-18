<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MedicineController;
use App\Http\Controllers\DiseaseController;
use App\Http\Controllers\BodiesController;
use App\Http\Controllers\BodiesDetailController;
use App\Http\Controllers\CategoriesNewController;
use App\Http\Controllers\SlidesController;


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
Route::get('/api/diseases', [DiseaseController::class, 'index']);
Route::get('/api/bodies', [DiseaseController::class, 'index']);
Route::get('/api/bodies/{id}', [BodiesDetailController::class, 'index']);
Route::get('/api/categories', [CategoriesNewController::class, 'index']);
Route::get('/api/slides', [SlidesController::class, 'index']);

Route::get('/api/history/{id}', [MedicineController::class, 'show']);
Route::post('/api/history', [MedicineController::class, 'insert']);

Route::get('/api/historyscan/{id}', [MedicineController::class, 'showscan']);
Route::post('/api/historyscan', [MedicineController::class, 'insertscan']);

Route::get('/api/covid/vn', [MedicineController::class, 'apicovid']);



Route::post('/api/medicines', [MedicineController::class, 'create']);
Route::get('/api/medicines/{id}', [MedicineController::class, 'show']);
Route::put('/api/medicines/{id}', [MedicineController::class, 'update']);
Route::get('/api/medicines/delete/{id}', [MedicineController::class, 'destroy']);
