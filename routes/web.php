<?php

use App\Http\Controllers\ListingController;
use App\Http\Controllers\UserController;
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


//Show Create Job form
Route::get('/listings/create',[ListingController::class,'create'])->middleware('auth');

//Store Listing data
Route::post('/listings',[ListingController::class,'store'])->middleware('auth');

//Show edit form
Route::get('/listings/{listing}/edit', [ListingController::class, 'edit'])->middleware('auth');

//Update listing
Route::put('/listings/{listing}', [ListingController::class, 'update'])->middleware('auth');

//Delete listing
Route::delete('/listings/{listing}', [ListingController::class, 'destroy'])->middleware('auth');

//Manage listings
Route::get('/listings/manage',[ListingController::class,'manage'])->middleware('auth');

//Show register form
Route::get('/register',[UserController::class, 'create'])->middleware('guest');

//Create new user
Route::post('/users',[UserController::class, 'store']);

//Log user out
Route::post('/logout',[UserController::class,'logout'])->middleware('auth');

//Show login form
Route::get('/login', [UserController::class,'login'])->name('login')->middleware('guest');//name renames the route to 'login' so that way the Authenticate.php knows who to reroute

//Log in user
Route::post('/users/authenticate',[UserController::class,'authenticate']);



//Single listing <- this Route has to be on the bottom of the page
Route::get('/listings/{listing}',[ListingController::class,'show']);



