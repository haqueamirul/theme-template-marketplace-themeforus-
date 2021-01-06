<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::get('/', 'HomeController@index')->name('home');
Route::post('subscriber','SubscriberController@store')->name('subscriber.store');
Route::get('post{slug}','PostController@PostDetails')->name('post.details');
Route::get('/allpost','PostController@allPost')->name('all.posts');
Route::get('/category/{slug}','PostController@categoryByPost')->name('category.posts');
Route::get('/tag/{slug}','PostController@tagByPost')->name('tag.posts');
Route::get('/about','Aboutcontroller@index')->name('abouts');
Route::get('/contact','ContactController@create')->name('contact.create');
Route::post('/contact','ContactController@store')->name('contact.store');


// Route::get('file-download/{id}', 'PostController@downloadproject')->name('project.download');
// Route::post('file-download/{id}', 'PostController@downloadproject');



Route::get('/search','SearchController@search')->name('search');

Auth::routes();

Route::group(['middleware'=>['auth']], function(){
    Route::post('favorite/{post}/add','FavoriteController@add')->name('post.favorite');
    Route::post('review/{id}/add','ReviewController@review')->name('review');
    Route::get('file-download/{id}', 'PostController@downloadproject')->name('project.download');
    Route::post('file-download/{id}', 'PostController@downloadproject');
});

// for Admin Route Group
Route::group(['as'=>'admin.','prefix'=>'admin','namespace'=>'Admin','middleware'=>['auth','admin']], function (){
    Route::get('dashboard','DashboardController@index')->name('dashboard');
    Route::resource('tag','TagController');
    Route::resource('category','CategoryController');
    Route::resource('post','PostController');
    Route::resource('about','AboutusController');
    Route::resource('service','ProtfolioController');
    Route::resource('contact','ContactController');
    Route::resource('email','AuthoEmailContactController');
    Route::resource('vedio','VedioController');


    Route::get('pending/post','Postcontroller@pending')->name('post.pending');
    Route::put('/post/{id}/approved','Postcontroller@approvel')->name('post.approvel');

    Route::get('/subscriber','SubscriberController@index')->name('subscriber.index');
    Route::delete('/subscriber/{subscriber}','SubscriberController@destroy')->name('subscriber.destroy');

    Route::get('/setting','SettingsController@index')->name('settings.settings');
    Route::put('/updateprofile','SettingsController@Updateprofile')->name('profile.update');
    Route::put('/updatepassword','SettingsController@Updatepassword')->name('password.update');
    Route::get('/favorite','FavoriteController@index')->name('favorite.index');

    Route::get('authour','AuthorController@index')->name('author.index');
    Route::delete('author/{id}','AuthorController@destroy')->name('author.destroy');

    Route::get('review','ReviewController@index')->name('review.index');
    Route::delete('review/delete/{id}','ReviewController@destroy')->name('review.destroy');

    Route::get('logo','LogoController@index')->name('logo.index');
    Route::get('logo/edit/{id}','LogoController@edit')->name('logo.edit');
    Route::put('/logo/update/{id}','LogoController@update')->name('logo.update');

    Route::get('/download','DownLoadController@index')->name('download.index');
    Route::get('/download/{id}','DownLoadController@destroy')->name('download.destroy');

    Route::get('file-download/{id}', 'DownLoadController@downloadproject')->name('project.download');


    View::composer('layouts.backend.app',['as'=>'admin.','prefix'=>'admin','namespace'=>'Admin','middleware'=>['auth','admin']],function ($view){
        $logo = App\Logo::all();
        $view->with('logo',$logo);

    });


});

// for Author Route Group
Route::group(['as'=>'user.','prefix'=>'user','namespace'=>'Author','middleware'=>['auth','user']], function (){
    Route::get('dashboard','DashboardController@index')->name('dashboard');
    Route::resource('post','PostController');

    Route::get('/setting','SettingsController@index')->name('settings.settings');
    Route::put('/updateprofile','SettingsController@Updateprofile')->name('profile.update');
    Route::put('/updatepassword','SettingsController@Updatepassword')->name('password.update');
    Route::get('/favorite','FavoriteController@index')->name('favorite.index');
    Route::get('review','ReviewController@index')->name('review.index');
    Route::delete('review/delete/{id}','ReviewController@destroy')->name('review.destroy');

    Route::get('/download','DownLoadController@index')->name('download.index');
    Route::get('/download/{id}','DownLoadController@destroy')->name('download.destroy');

    View::composer('layouts.backend.app',['as'=>'user.','prefix'=>'user','namespace'=>'Author','middleware'=>['auth','user']],function ($view){
        $logo = App\Logo::all();
        $view->with('logo',$logo);

    });
});


View::composer('layouts.frontend.partial.header',function ($view){
    $categories = App\Category::all();
    $tags = App\Tag::all();
    $view->with('categories',$categories);
    $view->with('tags',$tags);

});

View::composer('layouts.frontend.partial.footer',function ($view){
    $categories = App\Category::latest()->take(6)->get();
    $tags = App\Tag::latest()->take(6)->get();
    $view->with('categories',$categories);
    $view->with('tags',$tags);

});
View::composer('layouts.frontend.partial.footer',function ($view){
    $emails = App\Authoremail::latest()->take(1)->get();
    $view->with('emails',$emails);

});

View::composer('layouts.frontend.partial.header',function ($view){
    $emails = App\Authoremail::latest()->take(1)->get();
    $view->with('emails',$emails);

});

// View::composer('layouts.frontend.partial.meta',function ($view){
//     $logo = App\Logo::all();
//     $view->with('logo',$logo);


// });
