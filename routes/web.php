<?php

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


//All listings
Route::get('/', function () {
    return view('listings', [
        'heading'=>'Latest Listings',
        'listings' => Listing::all()
    ]);
});

//Single listing
Route::get('/listings/{listing}',function (Listing $listing){

    return view('listing',[
        'listing'=> $listing
    ]);
});


