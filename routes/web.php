<?php

use App\Http\Controllers\ListingController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Models\Listing;
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
//Basic stuff
//Route::get('/hello',function (){
//   return response( '<h1>Hello World</h1>', 200);
//});
//
//Route::get('/posts/{id}',function ($id){
//    //dd($id); -> die and dump
//    //ddd($id); -> die,dump and debug
//    return response('Post '.$id);
//})->where('id','[0-9]+');
//
////http://127.0.0.1:8000/search?name=Brad&city=Boston
//Route::get('/search', function (Request $request){
//    dd($request->name .' '.$request->city);
//});

//Common Resource Routes:
//index - Show all listings
//show - Show single listing
//create - Show for to create new listing
//store - Store new listing
//edit - Show for to edit listing
//update - Update listing
//destroy - Delete listing

//All listings
Route::get('/', [ListingController::class, 'index']);

//Single listing
Route::get('/listings/{listing}',[ListingController::class,'show']);


