<?php

namespace App\Http\Controllers;

use App\Models\blog_post;
use App\Models\blog_post_category;
use App\Models\blog_post_comment;
use App\Models\category_type;
use App\Models\User;
use Illuminate\Contracts\Validation\Validator;
use Illuminate\Database\DBAL\TimestampType;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Validation\Factory;

class blogPostController extends Controller
{


    public function store(Request $request, Factory $validator)
    {

        $user = Auth::user();
        $validation = $validator->make(
            $request->all(),
            [
                'title' => 'required|min:10',
                'description' => 'required|min:10',
                'content' => 'required|min:20',
                'img_link' => 'required|mimes:jpeg,jpg,png',
                'category' => 'required'
            ]
        );
        $imageNewName = time() . '-' . strtok($user->name, " ") . '.' . $request->img_link->extension();
        $request->img_link->move(public_path('assets/images'), $imageNewName);
        if ($validation->fails()) {
            return redirect()->back()->withErrors($validation);
        }

        if (!$user) {
            return redirect()->back();
        }
        $blog = new blog_post(
            [
                'content' => $request->input('content'),
                'title' => $request->input('title'),
                'description' => $request->input('description'),
                'img_link' => $imageNewName,
                'created_by' => $user->id,
            ]
        );
        $blog->save();

        $BPC = new BlogPostCategoryController();
        $BPC->store($blog->id, $request);

        return redirect()
            ->route('admin.blog-post')
            ->with('notif', 'new created Blog: ' . $request->input('title'));
    }


    public function show(blog_post $blog_post, Request $request)
    {
        
        if (isset($request->search)) {
            return view(
                'blog.welcome',
                [
                    'data' =>  $blog_post->findPagination(5),
                    'sData' =>  $blog_post->where('title', 'LIKE', '%' . $request->input('search') . '%')->get(),
                    'cData' => $this->CategoryData,
                    'cardData' => $blog_post->findAll()
                ]
            );
        } else {
            return view(
                'blog.welcome',
                [
                    'data' =>  $blog_post->findPagination(5),
                    'cData' => $this->CategoryData,
                    'cardData' => $blog_post->findAll()
                ]
            );
        }
    }


    public function showById($id, blog_post $blog_post)
    {
        $data =  $blog_post->findById($id);
        $articleCategoryData = new blog_post_category();
        $bpcData = array(
            'blog_post_id' => $id
        );
        $blogCategoryData = $articleCategoryData->FindById($bpcData);
        $blogPostCommentObj = new blog_post_comment();
        $blogPostCommentdata = $blogPostCommentObj->showById($bpcData);
        $userObj = new User();
        $userData = $userObj->all();
        return view(
            'blog.article',
            [
                'data' => $data,
                'cData' => $this->CategoryData,
                'bcData' => $blogCategoryData,
                'bpcData' => $blogPostCommentdata,
                'userData' => $userData
            ]
        );
    }
}
