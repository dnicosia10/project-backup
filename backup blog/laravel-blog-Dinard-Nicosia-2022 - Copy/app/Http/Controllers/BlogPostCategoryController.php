<?php

namespace App\Http\Controllers;

use App\Models\blog_post;
use App\Models\blog_post_category;
use Illuminate\Http\Request;

class BlogPostCategoryController extends Controller
{

    public $blog_post_category;


    public function store($id, Request $request)
    {
        if (is_array($request->input('category'))) {
            foreach ($request->input('category') as $category_item) {
                $bpcModel = new blog_post_category([
                    'category_id' => $category_item,
                    'blog_post_id' => $id,
                    'created_at' => time(),
                    'updated_at' => time()
                ]);
                $bpcModel->save();
            }
        } else {
            $bpcModel = new blog_post_category([
                'category_id' => $request->input('category'),
                'blog_post_id' => $id,
                'created_at' => time(),
                'updated_at' => time()
            ]);
            $bpcModel->save();
        }
    }


    public function show(blog_post_category $blog_post_category)
    {
        return $blog_post_category->all();
    }


    public function showByIdCategory($id, blog_post_category $blog_post_category)
    {
        $data = array(
            'blog_post_id' => $id
        );
        return $blog_post_category->find($data);
    }


    public function sortBlogPostByCategory($id)
    {
        $data = array(
            'category_id' => $id
        );
        $bpcModel = new blog_post_category();
        $bpcId = $bpcModel->FindById($data);
        $bpModel = new blog_post();

        return view('blog.welcome', [
            'bpcData' => $bpcId,
            'data' => $bpModel->findPagination(5),
            'cData' => $this->CategoryData,
            'cardData' => $bpModel->findAll()
        ]);
    }

}
