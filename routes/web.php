<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MedicineController;
use App\Http\Controllers\DiseaseController;
use App\Http\Controllers\BodiesController;
use App\Http\Controllers\BodiesDetailController;
use App\Http\Controllers\SlidesController;
use App\Http\Controllers\CategoriesNewController;


/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::get('/api/slides', [SlidesController::class, 'index']);
Route::get('/api/medicines', [MedicineController::class, 'read']);
Route::post('/api/users', [MedicineController::class, 'create']);
Route::get('/api/diseases', [DiseaseController::class, 'index']);
Route::get('/api/bodies', [BodiesController::class, 'index']);
Route::get('/api/bodies/{id}', [BodiesDetailController::class, 'index']);
Route::get('/api/categories', [CategoriesNewController::class, 'index']);

Route::get('/api/history/{id}', [MedicineController::class, 'show']);
Route::post('/api/history', [MedicineController::class, 'insert']);

Route::get('/api/covid/vn', [MedicineController::class, 'apicovid']);

Route::get('/api/historyscan/{id}', [MedicineController::class, 'showscan']);
Route::post('/api/historyscan', [MedicineController::class, 'insertscan']);

Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
