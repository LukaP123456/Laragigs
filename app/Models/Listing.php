<?php

namespace App\Models;

class Listing{
    public static function all(){
        return [
            [
                'id'=>1,
                'title'=>'Listing One',
                'description'=>'Lorem ipsum dolor sit amet, consecte
                tur adipisicing elit. Ab aliquid amet consequatur consequuntur dicta
                ducimus esse, eveniet ex laudantium molestiae molestias neque nihil numquam p
                raesentium, quod ratione repellendus tenetur vero.'
            ],
            [
                'id'=>2,
                'title'=>'Listing Two',
                'description'=>'Lorem ipsum dolor sit amet, consecte
                tur adipisicing elit. Ab aliquid amet consequatur consequuntur dicta
                ducimus esse, eveniet ex laudantium molestiae molestias neque nihil numquam p
                raesentium, quod ratione repellendus tenetur vero.'
            ]
        ];
    }

    public static function find($id){
        $listings = self::all();

        foreach ($listings as $listing){
            if ($listing['id'] == $id){
                return $listing;
            }
        }

    }

}
