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

/*Route::get('/', function () {
    return view('welcome');
});*/

// Route::get('/', function () {
//     return view('welcome');
// });

Auth::routes();
Route::group(['middleware' => 'auth'], function() {
	// Route::get('/member/test', 'MemberController@index');
	Route::get('/member', 'MemberController@lisTiNtables');
	Route::get('/member/list.csv', 'MemberController@lisTiNcsv');
	Route::get('/member/list.tsv', 'MemberController@lisTiNtsv');
	Route::get('/member/list.txt', 'MemberController@lisTiNtxt');
	Route::get('/member/list.json', 'MemberController@lisTiNjson');
	Route::get('/member/view/{id}', 'MemberController@view');
	Route::get('/member/delete/{id}', 'MemberController@delete');
	Route::get('/member/edit/{id}', 'MemberController@editGet');
	Route::post('/member/edit', 'MemberController@editPost');
	Route::get('/member/add', 'MemberController@addget');
	Route::post('/member/add', 'MemberController@addPost');
	Route::get('/home', 'HomeController@index');
});


 // The only thing remaining is the authentication
// FInd a way for every file extension to download automatically without going to the page
// Also optimize the edit functionalty
// 

// blob:https%3A//www.youtube.com/e29e3313-e8bd-4019-a1a4-d01cc37516ad