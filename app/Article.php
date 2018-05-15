<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
		//
		public function index()
		{
				return view('admin/article/index')->withArticles(Article::all());
		}
		public function hasManyComments()
		{
				return $this->hasMany('App\Comment', 'article_id', 'id');
		}
}
