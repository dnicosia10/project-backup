<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Validation\Factory;

class UserController extends Controller
{
    //
    public function store(Request $request, Factory $validator)
    {
        $validation = $validator->make(
            $request->all(),
            [
                'fname' => 'required|min:2',
                'lname' => 'required|min:2',
                'username' => 'required|min:2',
                'password' => 'required|min:10',
                'rpassword' => 'required|same:password|min:10',
                'email' => 'required',
                'img_link' => 'required|mimes:jpeg,jpg,png'
            ]
        );

        if ($validation->fails()) {
            return redirect()->back()->withErrors($validation);
        } else {
            $imageNewName = time() . '-' . $request->fname . "-" . $request->lname . '.' . $request->img_link->extension();
            $request->img_link->move(public_path('assets/images'), $imageNewName);

            $result = new User([
                'name' => $request->input('fname') . " " . $request->input('lname'),
                'username' => $request->input('username'),
                'email' => $request->input('email'),
                'password' => $request->input('password'),
                'img_link' => $imageNewName
            ]);
            return $result->save();
        }
    }
}
