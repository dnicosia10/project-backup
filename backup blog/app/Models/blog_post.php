<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class blog_post extends Model
{
    use HasFactory;

    protected $fillable = 
    [
        'content',
         'title',
          'description',
           'img_link',
            'created_by',
             'created',
              'updated'
    ];

    public function findAll()
    {
        return $this->all();
    
    }

    public function findPagination($data)
    {
        // return $this->all()->sortByDesc('id');
        return $this->orderByDesc('id')->paginate($data);
    }

    public function findById($data)
    {
        
        if (is_array($data)) {
            foreach ($data as $key => $value) {
                $result[] = $this->where($key, $value)->get();
            }
            return $result;
        }
        return $this->find($data);

    }
    public function user(){
        return $this->belongsTo('App/user');
    }

}
