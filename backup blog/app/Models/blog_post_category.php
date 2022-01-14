<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class blog_post_category extends Model
{
    use HasFactory;

    protected $fillable =
    [
        'category_id',
        'blog_post_id',
        'created_at',
        'updated_at'
    ];

    public function FindAll()
    {
        return $this->all()->sortByDesc('id');
    }
    public function FindById($data)
    {
        if (is_array($data)) {
            foreach ($data as $key => $value) {
                $result= $this->where($key, $value)->get();
            }
            return $result ;
        }
        return $this->find($data);
        
    }
}
