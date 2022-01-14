<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class blog_post_comment extends Model
{
    use HasFactory;

    public $fillable = [
        'comment',
        'blog_post_id',
        'user_id'
    ];
    
    public function showById($data){
        if (is_array($data)) {
            foreach ($data as $key => $value) {
                $result = $this->where($key, $value)->get();
            }
            return $result;
        }
        return $this->find($data);

    }
}
