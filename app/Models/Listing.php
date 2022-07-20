<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Listing extends Model
{
    use HasFactory;

    //$fillable is needed when you want to submit a form. Or go to app->Providers->AppServiceProvider.php and do the part in the boot() function
    //protected $fillable = ['title','company','location','website','email','description','tags'];

    public function scopeFilter($query, array $filters){
        if($filters['tag'] ?? false){
            $query->where('tags','like','%'.request('tag').'%');
        }

        if($filters['search'] ?? false){
            $query->where('title','like','%'.request('search').'%')
                ->orWhere('description','like','%'.request('search').'%')
                ->orWhere('tags','like','%'.request('search').'%')
                ->orWhere('location','like','%'.request('search').'%')
                ->orWhere('company','like','%'.request('search').'%');
        }
    }


    //Realtionship to user
    public function user(){
        return $this->belongsTo(User::class, 'user_id');
    }
}
