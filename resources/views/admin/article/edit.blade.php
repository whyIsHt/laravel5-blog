@extends('layouts.app')

@section('content')
<div class="container">
<div class="row">
<div class="col-md-10 col-md-offset-1">
<div class="panel panel-default">
<div class="panel-heading">编辑 Page</div>

		<div class="panel-body">
@if (count($errors) > 0)
		<div class="alert alert-danger">
		<strong>编辑失败</strong> 输入不符合要求<br><br>
{!! implode('<br>', $errors->all()) !!}
</div>
@endif

<form action="{{ url('admin/article/'.$articles->id) }}" method="POST">
<input name="_method" type="hidden" value="PUT">
<input type="hidden" name="_token" value="{{ csrf_token() }}">
<input type="text" name="title" class="form-control" required="required" value="{{ $articles->title }}">
<br>
<textarea name="body" rows="10" class="form-control" required="required">{{ $articles->body }}</textarea>
<br>
<button class="btn btn-lg btn-info">编辑 Page</button>
</form>

</div>
</div>
</div>
</div>
</div>
@endsection
