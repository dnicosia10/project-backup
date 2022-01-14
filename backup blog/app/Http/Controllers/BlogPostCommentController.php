<?php

namespace App\Http\Controllers;

use App\Models\blog_post_comment;
use Illuminate\Http\Request;
use Illuminate\Validation\Factory;

class BlogPostCommentController extends Controller
{

    
    public function store(Request $request, Factory $validator)
    {
        $validation = $validator->make(
            $request->all(),
            [
                'comment' => 'required|min:1'
            ]
        );
        if ($validation->fails()) {
            return redirect()->back()->withErrors($validation);
        }
        $blogPostCommentObj = new blog_post_comment([
            'comment' => $request->input('comment'),
            'user_id' => $request->input('user_id'),
            'blog_post_id' => $request->input('blog_post_id')
        ]);
        $blogPostCommentObj->save();
        return redirect()
                ->route('blog.article', ['id' => $request->input('blog_post_id')])
                ->with('notif', 'new created Blog: ' . $request->input('title'));
    }

}
