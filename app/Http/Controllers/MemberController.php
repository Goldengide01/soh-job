<?php

namespace App\Http\Controllers;

use App\Member;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Laracasts\Flash\Flash;
use Illuminate\Support\Facades\View;

class MemberController extends Controller
{
    //
    public function addPost(Request $request){
    	$member = new Member();
    	$member->firstname = $request['firstname'];
    	$member->lastname = $request['lastname'];
    	$member->email = $request['email'];
    	$member->phone = $request['phone'];
    	$member->sex = $request['sex'];
        $reportSUffix = "Contact the IT Department";
        $uniqueEntity;
        $checkExistingMembersEmail = Member::where('email', $request['email'])->count();
        $checkExistingMembersPhone = Member::where('phone', $request['phone'])->count();
        $checkExistingMembers = Member::where('email', $request['email'])->orWhere('phone', $request['phone'])->count();
        if ($checkExistingMembersEmail > 0) {
            $uniqueEntity = "Email already exist";
        }
        if ($checkExistingMembersPhone > 0) {
            $uniqueEntity = "Phone already exist";
        }
        if ($checkExistingMembersEmail>0 && $checkExistingMembersPhone > 0) {
            $uniqueEntity = "Both Email and Phone Already Exist";
        }
        if ($checkExistingMembers > 0) {
            return Redirect::to('/member/add')->withInput($request->session()->flash('alert-failure', $uniqueEntity));
        }
        else{
        	$isSaved = $member->save();
        	if ($isSaved) {
        		return Redirect::to('/member')->withInput($request->session()->flash('alert-success', "Details added"));
        		// return Redirect::to('/memeber/add')->withInput();
        	}
        	else{

        	}
        }
    }

    public function addGet(){
    	return view('add');
    }

    public function editGet($id){
        $checkMemberExist = Member::where('id',$id)->count();
        $member = Member::where('id',$id)->first();
        if ($checkMemberExist == 0) {
            // return "<h2>Please go throught the front door and stop finding a backdoor cause you'll never see one!!!</h2>";
            return Redirect::to('/member');
            
        }
        else {
            return view('edit')->with('member', $member);
        }
    }

    public function editPost(Request $request){
        $id = $request['id'];
        $member = Member::find($id);
        // a kind of cobdition where id is excempted
        $memberCheck = Member::where('id',$id)->first();
    	$member->firstname = $request['firstname'];
        $member->lastname = $request['lastname'];
        $member->email = $request['email'];
        $member->phone = $request['phone'];
        $member->sex = $request['sex'];
        // $reportSuffix = "Contact the IT Department";
        $isSaved = $member->save();
        if ($isSaved) {
            return Redirect::to('/member')->withInput($request->session()->flash('alert-success', "Biodata information with $id has been updated.."));
            // return Redirect::to('/member/edit/'.$id)->withInput($request->session()->flash('alert-failure', "..."));
        }
    }

    public function delete(Request $request, $id){
        $member = Member::find($id);
        $isDeleted = $member->delete();
        if ($isDeleted) {
            return Redirect::to('/member')->withInput($request->session()->flash('alert-success', "Biodata information with $id has been deleted.."));
        }
        else {
            return Redirect::to('/member');
            // return Redirect::to('/member')->withInput($request->session()->flash('alert-failure', "Biodata information with $id couldn't be deleted.."));
        }
    }

    public function view($id){
        $checkMemberExist = Member::where('id',$id)->count();
    	$member = Member::where('id',$id)->first();
        if ($checkMemberExist == 0) {
            // return "<h2>Please go throught the front door and stop finding a backdoor cause you'll never see one!!!</h2>";
            return Redirect::to('/member');
            
        }
        else {
            return view('view')->with('member', $member);
        }
    }

    public function index() {
        return view('index');
    }

    public function lisTiNtables(){
    	$members = Member::all();
    	// return $members;
    	return view('index')->with('members', $members);
    }
    public function lisTiNcsv(){
    	$members = Member::all();
    	$txtContent = array();
    	$txtContent[0] = "S/N, Firstname, Lastname, Email, Phone No, Sex, Created_at, Updated_at"; 
    	foreach ($members as $key => $member) {
    		$txtContent[] = $member->id. ",". $member->firstnmae. ",". $member->lastname. ",". $member->email. ",". $member->phone. ",". $member->sex. ",". $member->created_at. ",". $member->updated_at; 
    	}
    	$list = implode("\n", $txtContent);
    	return response($list)
                    ->header('Content-Type', 'text/csv')
                    ->header('X-Header-One', 'Header Value');
    }

    public function lisTiNtsv(){
    	$members = Member::all();
    	$txtContent = array();
    	$txtContent[0] = "S/N\t Firstname\t Lastname\t Email\t Phone No\t Sex\t Created_at\t Updated_at"; 
    	foreach ($members as $key => $member) {
    		$txtContent[] = $member->id. "\t". $member->firstnmae. "\t". $member->lastname. "\t". $member->email. "\t". $member->phone. "\t". $member->sex. "\t". $member->created_at. "\t". $member->updated_at; 
    	}
    	$list = implode("\n", $txtContent);
    	return response($list)
                    ->header('Content-Type', 'text/tsv')
                    ->header('X-Header-One', 'Header Value');
    }

    public function lisTiNjson(){
    	$members = Member::all();
    	// $list = $members;
    	$list = json_encode($members);
    	return response($list)
                    ->header('Content-Type', 'text/json')
                    ->header('X-Header-One', 'Header Value');
    }

    public function lisTiNtxt(){
    	$members = Member::all();
    	$txtContent = array();
    	$txtContent[0] = "S/N Firstname Lastname Email Phone No Sex Created_at Updated_at"; 
    	foreach ($members as $key => $member) {
    		$txtContent[] = $member->id. " ". $member->firstnmae. " ". $member->lastname. " ". $member->email. " ". $member->phone. " ". $member->sex. " ". $member->created_at. " ". $member->updated_at; 
    	}
    	$list = implode("\n", $txtContent);
    	return response($list)
                    ->header('Content-Type', 'text/txt')
                    ->header('X-Header-One', 'Header Value');
    }
    
    
}
