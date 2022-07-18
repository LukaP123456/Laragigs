<?php

namespace App\Http\Controllers;

use App\Models\Listing;
use Illuminate\Http\Request;

class ListingController extends Controller
{
    //Show all listings with the clicked tag
    public function index(){
        return view('listings.index', [
            'listings' => Listing::latest()->filter(request(['tag','search']))->get()
        ]);
    }

    //Show single listing on it's own page
    public function show(Listing $listing){
        return view('listings.show',[
            'listing'=> $listing
        ]);

    }
}
