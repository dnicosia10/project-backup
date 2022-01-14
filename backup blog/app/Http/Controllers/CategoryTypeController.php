<?php

namespace App\Http\Controllers;

use App\Models\category_type;
use Illuminate\Http\Request;
use Illuminate\Validation\Factory;

class CategoryTypeController extends Controller
{


    public function store(Request $request,Factory $validator)
    {
        $validation = $validator->make(
            $request->all(),
            [
                'name' => 'required|min:1',
            ]
        );
        if ($validation->fails()) {
            return redirect()->back()->withErrors($validation);
        }

        $result = new category_type(
            [
                'name' => $request->input('name'),
            ]
        );

        $result->save();
        return redirect()
        ->route('admin.category')
        ->with('notif', 'new created Blog: ');
    }


    public function show(category_type $category_type)
    {
        $data = $category_type->FindAll();
        return view('admin.blog-post',['cData' => $data]);

    }


    public function showById($id,category_type $category_type)
    {
        $data = array(
            'id' => $id
        );
        $category_type->FindById($data);
    }


    public function showInCategoryPage(category_type $category_type){
        $data = $category_type::all();
        return view('admin.category', ['cData' => $data]);
    }


    public function update(Request $request, category_type $category_type, Factory $validator)
    {
        $validation = $validator->make(
            $request->all(),
            [
                'name' => 'required|min:2',
            ]
        );
        if ($validation->fails()) {
            return redirect()->back()->withErrors($validation);
        }
        $category_type->where('id',$request->input('id'))->update(['name' => $request->input('name')]);
        return redirect()->route('admin.category');
    }


    public function delete(Request $request, category_type $category_type){
        $category_type->where('id', $request->id)->where('name', $request->name)->delete(); 
        return redirect()->route('admin.category');

    }

}
