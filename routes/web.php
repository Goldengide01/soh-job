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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();
Route::group(['middleware' => 'auth'], function() {
	// Route::get('/member/test', 'MemberController@index');
	Route::get('/member', 'MemberController@index');
	Route::get('/member/phones.csv', 'MemberController@phoneiNcsv');
	Route::get('/member/phones.tsv', 'MemberController@phoneiNtsv');
	Route::get('/member/phones.txt', 'MemberController@phoneiNtxt');
	Route::get('/member/phones.json', 'MemberController@phoneiNjson');
	Route::get('/member/phones/update', 'MemberController@updatePhoneNumber');
	
	Route::post('/member/pics/update', 'MemberController@updatePics');
	Route::get('/member/merge/{update}', 'MemberController@mergeDuplicated');
	Route::get('/member/merge', 'MemberController@mergeAllDuplicated');
	
	/*
	Route::get('/member/normalize/phone', 'MemberController@addZerotoPhoneNumbersThatDoNotHave');
	Route::get('/member/normalize/birthday', 'MemberController@normalizeBirthdaysToSameFormat');
	Route::get('/member/normalize/wedding', 'MemberController@normalizeWeddingAnniversaryToSameFormat');
	Route::get('/member/normalize/reverse/birthday', 'MemberController@reverseBirthDateFormat');
	Route::get('/member/normalize/reverse/wedding', 'MemberController@reverseWeddingDateFormat');
	Route::get('/member/normalize/reverse/test', 'MemberController@reversedate');
	Route::get('/member/normalize/remove/birthday/dot', 'MemberController@removeDotFromBirthdays');
	Route::get('/member/normalize/remove/wedding/dot', 'MemberController@removeDotFromWeddingAnniversary');

	Route::get('/member/normalize/add/zero', 'MemberController@addZerotoDatesThatHaveSingleNumbers');
	
	Route::get('/member/truncate/test/{f}/{g}/{h}', 'MemberController@truncate');
	Route::get('/member/truncate/birthday-month', 'MemberController@truncateBirthDateFormat');
	Route::get('/member/truncate/wedding-month', 'MemberController@truncateWeddingDateFormat');

	*/

	Route::get('/member/folder/test', 'MemberController@createFolderIfNotExist');
	
	Route::get('/member/emails.csv', 'MemberController@emailiNcsv');
	Route::get('/member/emails.tsv', 'MemberController@emailiNtsv');
	Route::get('/member/emails.txt', 'MemberController@emailiNtxt');
	Route::get('/member/emails.json', 'MemberController@emailiNjson');

	Route::get('/member/contacts.csv', 'MemberController@lisTiNcsv');
	Route::get('/member/contacts.tsv', 'MemberController@lisTiNtsv');
	Route::get('/member/contacts.json', 'MemberController@lisTiNjson');
	
	Route::get('/member/view/{id}', 'MemberController@view');
	Route::get('/member/delete/{id}', 'MemberController@delete');
	Route::get('/member/edit/{id}', 'MemberController@editGet');
	Route::post('/member/edit', 'MemberController@editPost');
	Route::get('/member/add', 'MemberController@addget');
	Route::post('/member/add', 'MemberController@addPost');
	Route::get('/member/contacts.txt', 'MemberController@lisTiNtxt');
	Route::get('/home', 'HomeController@index');
});

	Route::get('/member/permission', 'MemberController@check');

 // The only thing remaining is the authentication
// FInd a way for every file extension to download automatically without going to the page
// Also optimize the edit functionalty
// 

// blob:https%3A//www.youtube.com/e29e3313-e8bd-4019-a1a4-d01cc37516ad