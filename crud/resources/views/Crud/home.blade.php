@extends('layout.user')

@section('content')
<form action="{{route('post')}}" method="POST">
<div class="mb-3">
    <label for="exampleFormControlInput1" class="form-label">Email address</label>
    <input type="email" name="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
  </div>
  <div class="mb-3">
    <label for="exampleFormControlTextarea1" class="form-label">Example textarea</label>
    <textarea class="form-control" name="desc" id="exampleFormControlTextarea1" rows="3"></textarea>
  </div>
  <div class="mb-3">
    <button class="btn-success sm" type="submit" name="PostBttn">Submit</button>
  </div>
  {{ csrf_field() }}
</form>
@endsection