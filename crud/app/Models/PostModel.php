<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use PostModels;

class PostModel extends Model
{
    use HasFactory;
    protected $fillable = ['email', 'desc'];

    public function RetreiveData($data){
        return $data;
    }
    public function findAll(){
        $data = $this::all();
        return $data;
    }
}
