<?php

namespace App\Http\Controllers;

use App\Member;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Laracasts\Flash\Flash;
use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\File;
use DB;

class MemberController extends Controller
{
    //
    public function addPost(Request $request){
    	$member = new Member();
    	$member->name = $request['name'];
    	$member->email = $request['email'];
        $member->phone = $request['phone'];
        $member->birthday = $request['birthday'];
        $member->unit = $request['unit'];
        // $member->role_in_un = $request['unit'];
        $member->gepi_partner = $request['gepi_partner'];
    	$member->wedding_anniversary = $request['wedding_anniversary'];
    	// $member->sex = $request['sex'];
        $reportSUffix = "Contact the IT Department";
        $uniqueEntity;
        $checkExistingMembersEmail = Member::where('email', $request['email'])->count();
        $checkExistingMembersPhone = Member::where('phone', $request['phone'])->count();
        $checkExistingMembers = Member::where('email', $request['email'])->orWhere('phone', $request['phone'])->count();
        if($request['email'] || $request['phone']) {
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
        else {
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
    	$member->name = $request['name'];
        $member->email = $request['email'];
        $member->phone = $request['phone'];
        $member->birthday = $request['birthday'];
        $member->unit = $request['unit'];
        $member->gepi_partner = $request['gepi_partner'];
        $member->wedding_anniversary = $request['wedding_anniversary'];        // $reportSuffix = "Contact the IT Department";
        $isSaved = $member->save();
        if ($isSaved) {
            return Redirect::to('/member')->withInput($request->session()->flash('alert-success', "Biodata information of $memberCheck->name has been updated.."));
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


    public function index(){
        // $members = Member::whereRaw('wedding_anniversary NOT LIKE "NO"')->whereRaw('wedding_anniversary NOT LIKE ""')->whereRaw('wedding_anniversary NOT LIKE " "')->get();
        // $members = Member::whereRaw('birthday NOT LIKE "NO"')->whereRaw('birthday NOT LIKE ""')->whereRaw('birthday NOT LIKE " "')->get();
    	$members = Member::all();
    	// return $members;
    	return view('index')->with('members', $members);
    }
    public function lisTiNcsv(){
    	$members = Member::orderBy('name', 'asc')->get();
    	$txtContent = array();
    	$txtContent[0] = "name, phone, email, birthday, wedding_anniversary,gepi_partner"; 
    	foreach ($members as $key => $member) {
    		$txtContent[] = $member->name. ",". $member->phone. ",". $member->email. ",". $member->birthday. ",". $member->wedding_anniversary. ",". $member->gepi_partner; 
    	}
    	$list = implode("\n", $txtContent);
    	return response($list)
                    ->header('Content-Type', 'text/csv')
                    ->header('Content-type', 'application/force-download')
                    ->header('X-Header-One', 'Header Value');
    }

    public function lisTiNtsv(){
        $members = Member::all();
        $txtContent = array();
        $txtContent[0] = "name\t phone\t email\t birthday\t wedding_anniversary\t gepi_partner"; 
        foreach ($members as $key => $member) {
            $tsvContent[] = $member->name. "\t". $member->phone. "\t". $member->email. "\t". $member->birthday. "\t". $member->wedding_anniversary. "\t". $member->gepi_partner; 
        }
        $list = implode("\n", $tsvContent);
        return response($list)
                    ->header('Content-Type', 'text/tsv')
                    ->header('Content-type', 'application/force-download')
                    ->header('X-Header-One', 'Header Value');
    }

    public function lisTiNjson(){
        $members = Member::all();
        // $list = $members;
        $list = json_encode($members);
        return response($list)
                    ->header('Content-Type', 'text/json')
                    ->header('Content-type', 'application/force-download')
                    ->header('X-Header-One', 'Header Value');
    }

    public function listiNtxt(){
        $members = Member::all();
        $txtContent = array();
        $txtContent[0] = "Name Phone Email Birthday WeddingAnniversary GEPIPartner"; 
        foreach ($members as $key => $member) {
            $tsvContent[] = $member->name. " ". $member->phone. " ". $member->email. " ". $member->birthday. " ". $member->wedding_anniversary. " ". $member->gepi_partner; 
        }
        $list = implode("\n", $tsvContent);
        return response($list)
                    ->header('Content-Type', 'text/tsv')
                    ->header('Content-type', 'application/force-download')
                    ->header('X-Header-One', 'Header Value');
    }
    public function phoneiNcsv(){
        $members = Member::all();
        $txtContent = array();
        foreach ($members as $key => $member) {
            $txtContent[] = $member->phone; 
        }
        $list = implode(",", $txtContent);
        return response($list)
                    ->header('Content-Type', 'text/csv')
                    ->header('Content-type', 'application/force-download')
                    ->header('X-Header-One', 'Header Value');
    }

    public function phoneiNtsv(){
        $members = Member::all();
        $txtContent = array();
        foreach ($members as $key => $member) {
            $txtContent[] = $member->phone; 
        }
        $list = implode("\t", $tsvContent);
        return response($list)
                    ->header('Content-Type', 'text/tsv')
                    ->header('Content-type', 'application/force-download')
                    ->header('X-Header-One', 'Header Value');
    }

    public function phoneiNjson(){
        $members = Member::select('phone')->get();
        // $list = $members;
        $list = json_encode($members);
        return response($list)
                    ->header('Content-Type', 'text/json')
                    ->header('Content-type', 'application/force-download')
                    ->header('X-Header-One', 'Header Value');
    }

    public function phoneiNtxt(){
        $members = Member::all();
        $txtContent = array();
        foreach ($members as $key => $member) {
            $txtContent[] = $member->phone; 
        }
        $list = implode(" ", $txtContent);
        return response($list)
                    ->header('Content-Type', 'text/txt')
                    ->header('Content-type', 'application/force-download')
                    ->header('X-Header-One', 'Header Value');
    }

     public function emailiNcsv(){
        $members = Member::all();
        $txtContent = array();
        foreach ($members as $key => $member) {
            $txtContent[] = $member->email; 
        }
        $list = implode(",", $txtContent);
        return response($list)
                    ->header('Content-Type', 'text/csv')
                    ->header('Content-type', 'application/force-download')
                    ->header('X-Header-One', 'Header Value');
    }

    public function emailiNtsv(){
        $members = Member::all();
        $txtContent = array();
        foreach ($members as $key => $member) {
            $txtContent[] = $member->email; 
        }
        $list = implode("\t", $tsvContent);
        return response($list)
                    ->header('Content-Type', 'text/tsv')
                    ->header('Content-type', 'application/force-download')
                    ->header('X-Header-One', 'Header Value');
    }

    public function emailiNjson(){
        $members = Member::select('email')->get();
        // $list = $members;
        $list = json_encode($members);
        return response($list)
                    ->header('Content-Type', 'text/json')
                    ->header('Content-type', 'application/force-download')
                    ->header('X-Header-One', 'Header Value');
    }

    public function emailiNtxt(){
        $members = Member::all();
        $txtContent = array();
        foreach ($members as $key => $member) {
            $txtContent[] = $member->email; 
        }
        $list = implode(" ", $txtContent);
        return response($list)
                    ->header('Content-Type', 'text/txt')
                    ->header('Content-type', 'application/force-download')
                    ->header('X-Header-One', 'Header Value');
    }
    public function addZerotoPhoneNumbersThatDoNotHave() {
        // $startWithZero
        $membersPhones = Member::all();
        foreach ($membersPhones as $membersPhone) {
            if (str_split($membersPhone->phone)[0] != 0) {
                DB::table('members')->where('id', $membersPhone->id)->update(['phone' => "0".$membersPhone->phone]);
            }
        }
       
        return Redirect::to('/member');
    }

    public function addZerotoDatesThatHaveSingleNumbers() {
        // $startWithZero
        $membersPhones = Member::whereRaw('birthday NOT LIKE "NO"')->whereRaw('birthday NOT LIKE ""')->whereRaw('birthday NOT LIKE " "')->get();
        foreach ($membersPhones as $membersPhone) {
            $dateArr = explode("-", $membersPhone->birthday);
            if (strlen(trim($dateArr[1])) < 2) {
                DB::table('members')->where('id', $membersPhone->id)->update(['birthday' => $dateArr[0]."-0".$dateArr[1]]);
            }
            
        }
       
        return Redirect::to('/member');
    }

    public function normalizeBirthdaysToSameFormat() {
        $unwantedFormatDelimiterArray= array("th ", "st ", "nd ", "/", "rd ", "th");
        $desiredFormatDelimiter= "-";
        $members = Member::all();
        for ($i=0; $i < count($unwantedFormatDelimiterArray); $i++) { 
            foreach ($members as $member) {
                if (count(explode($unwantedFormatDelimiterArray[$i],$member->birthday)) == 2) {
                    DB::table('members')->where('id', $member->id)->update(['birthday' => trim(implode($desiredFormatDelimiter,explode($unwantedFormatDelimiterArray[$i],$member->birthday)))]);
                }
            }
            # code...
        }
        // return $members;
    }

    public function normalizeWeddingAnniversaryToSameFormat() {
        $unwantedFormatDelimiterArray= array("th ", "st ", "nd ", "/", "rd ", "th");
        $desiredFormatDelimiter= "-";
        $members = Member::all();
        for ($i=0; $i < count($unwantedFormatDelimiterArray); $i++) { 
            foreach ($members as $member) {
                if (count(explode($unwantedFormatDelimiterArray[$i],$member->wedding_anniversary)) == 2) {
                    DB::table('members')->where('id', $member->id)->update(['wedding_anniversary' => trim(implode($desiredFormatDelimiter,explode($unwantedFormatDelimiterArray[$i],$member->wedding_anniversary)))]);
                }
            }
            # code...
        }
        // return $members;
    }

    public function removeDotFromBirthdays() {
        $unwantedFormatDelimiterArray= array(".");
        $desiredFormatDelimiter= "";
        $members = Member::all();
        for ($i=0; $i < count($unwantedFormatDelimiterArray); $i++) { 
            foreach ($members as $member) {
                if (count(explode($unwantedFormatDelimiterArray[$i],$member->birthday)) == 2) {
                    DB::table('members')->where('id', $member->id)->update(['birthday' => trim(implode($desiredFormatDelimiter,explode($unwantedFormatDelimiterArray[$i],$member->birthday)))]);
                }
            }
            # code...
        }
        // return $members;
    }
    public function removeDotFromWeddingAnniversary() {
        $unwantedFormatDelimiterArray= array(".");
        $desiredFormatDelimiter= "";
        $members = Member::all();
        for ($i=0; $i < count($unwantedFormatDelimiterArray); $i++) { 
            foreach ($members as $member) {
                if (count(explode($unwantedFormatDelimiterArray[$i],$member->wedding_anniversary)) == 2) {
                    DB::table('members')->where('id', $member->id)->update(['wedding_anniversary' => trim(implode($desiredFormatDelimiter,explode($unwantedFormatDelimiterArray[$i],$member->wedding_anniversary)))]);
                }
            }
            # code...
        }
        // return $members;
    }

    public function reverseBirthDateFormat() {
        $members = Member::all();
        foreach ($members as $member) {
            if (count(explode("-",$member->birthday)) == 2 && is_numeric(explode("-",$member->birthday)[0])) {
                DB::table('members')->where('id', $member->id)
                ->update(['birthday' => $this->reversedate("-", $member->birthday)]);
            }
        }
    }

    public function reverseWeddingDateFormat() {
        $members = Member::all();
        foreach ($members as $member) {
            if (count(explode("-",$member->wedding_anniversary)) == 2 && is_numeric(explode("-",$member->wedding_anniversary)[0])) {
                DB::table('members')->where('id', $member->id)
                ->update(['wedding_anniversary' => $this->reversedate("-", $member->wedding_anniversary)]);
            }
        }
    }

    public function truncateBirthDateFormat() {
        $members = Member::whereRaw('birthday NOT LIKE "NO"')->whereRaw('birthday NOT LIKE ""')->whereRaw('birthday NOT LIKE " "')->get();
        // $members = Member::all();
        foreach ($members as $member) {
            DB::table('members')->where('id', $member->id)
                ->update(['birthday' => $this->truncate($member->birthday, "-", 3)]);
        }
    }

    public function truncateWeddingDateFormat() {
        $members = Member::whereRaw('wedding_anniversary NOT LIKE "NO"')->whereRaw('wedding_anniversary NOT LIKE ""')->whereRaw('wedding_anniversary NOT LIKE " "')->get();
        // $members = Member::all();
        foreach ($members as $member) {
            DB::table('members')->where('id', $member->id)
                ->update(['wedding_anniversary' => $this->truncate($member->wedding_anniversary, "-", 3)]);
        }
    }

    public function truncate($string, $delimiter, $length) {
        /*$string = " April-24";
        $delimiter = "-";
        $length = 3;*/
        $firstWord = explode($delimiter, ltrim($string));
        $truncate = str_split($firstWord[0]);
        $truncated = "";
        for($i = 0; $i<$length; $i++) {
            $truncated = $truncated . $truncate[$i];
        }
        return trim($truncated . "-" . $firstWord[1]);
    }

    public function reversedate($delimiter, $string) {
        /*$delimiter ="-";
        $string = "31-Dec";*/
        $arrayString = explode($delimiter, $string);
        $reversedArray = array_reverse($arrayString);
        $reversedString = implode($delimiter, $reversedArray);
        return $reversedString;
    }


    public function mergeDuplicated($email) {
        $countMembers = Member::where('email', $email)->count();
        $mergeInfo = DB::table('members')->where('email', $email)->orderBy('id', 'desc')->take($countMembers-1)->delete();
        if ($mergeInfo) {
            return $mergeInfo;
            // return Redirect::to('/member');
        }
        else {
            return $mergeInfo;
        }
    }

    public function mergeAllDuplicated() {
        $members = array('a.akinsooto@yahoo.com', 
            );
        foreach ($members as $member) {
            $countMembers = Member::where('email', $member)->count();
            $mergeInfo = DB::table('members')->where('email', $member)->orderBy('id', 'desc')->take($countMembers-1)->delete();
        }
        if ($mergeInfo) {

            return $mergeInfo;            // return Redirect::to('/member');
        }
        else {
        return $mergeInfo;
        }
    }
    public function updatePics(Request $request) {
        // $
        /*$this->validate($request, [
            'photo' => 'required|image|mimes:jpeg,png,jpg,gif,svg|max:5048',
        ]);*/

        $id = $request['id'];

        $destinationPathOfOriginalPicture = "uploads\original";

        $destinationPathOfSquaredPicture = "uploads\square";

        // $destinationPathOfOriginalPicture = public_path("uploads\original");

        // $destinationPathOfSquaredPicture = public_path("uploads\square");

        $member = Member::find($id);

        $file = $request->file('photo');

        // $image = \Image::make($file);
        $filename = Member::where('id', $id)->first()->email . ".png";
        // $filename = Member::where('id', $id)->first()->email . "." . $file->getClientOriginalExtension();
        $image = \Image::make($file->getRealPath());

        if($request->hasFile('photo')) {
            if ($file->isValid()) {
                
                if($file->move($destinationPathOfOriginalPicture, $filename)) {

                    $this->cropImage($destinationPathOfOriginalPicture."/".$filename, $destinationPathOfSquaredPicture."/".$filename, $file->getClientOriginalExtension());
                    
                    $member->original_pics_url = $destinationPathOfOriginalPicture."/".$filename;

                    $member->square_pics_url = $destinationPathOfSquaredPicture."/".$filename;

                    if($member->save()) {
                        return Redirect::to('/member/view/'.$id)->with('alert-success', "Your Profile Pics has been updated");
                    }
                    else {
                        return Redirect::to('/member/view/'.$id)->with('alert-failure', "Error Updating Picture");
                    }
                    
                }

            }
            else {
                return Redirect::to('/member/view/'.$id)->with('alert-failure', "What you uploaded is not a valid picture");
                // echo "Wrong";
            }
        }
        else {
                return Redirect::to('/member/view/'.$id)->with('alert-failure', "Picture Size must not be greater than 2MB");
        }
    }

    public function cropImage($filepath, $destination, $extension) {
        // File and new size
        if (is_file($filepath)) {
            if ($extension == "png") {
                $im = imagecreatefrompng($filepath);
            }
            else if ($extension == "jpg") {
                $im = imagecreatefromjpeg($filepath);
            }
            elseif ($extension == "bmp") {
                $im = imagecreatefromwbmp($filepath);
            }
            elseif ($extension == "gif") {
                $im = imagecreatefromgif($filepath);
            }
            /*elseif ($extension == "webp") {
                $im = imagecreatefromwebp($filepath);
            }
            elseif ($extension == "webp") {
                $im = imagecreatefromwebp($filepath);
            }*/
            $size = min(imagesx($im), imagesy($im));
            $im2 = imagecrop($im, ['x' => 0, 'y' => 0, 'width' => $size, 'height' => $size]);
            if ($im2 !== FALSE) {
                imagepng($im2, $destination);
            }

        }
        elseif(!file_exists($filepath)) {
            echo "<h1>Invalid File path</h1>";
        }
         else {
            echo "<h1>This is not a file</h1>";
        }

    }
    
    public function createFolderIfNotExist() {
        $folder_path = "uploads/square";
        // $folder_path = "uploads/original";
        $segment = explode("/", $folder_path);
        foreach ($segment as $path) {
            if (!is_dir($path)) {
                mkdir($path, $mode=0777, $recursive = false);
                chdir($path);
            }
            elseif(is_dir($path)) {
                chdir($path);
            }
        }
    }

    public function check() {
        dd(is_writable(public_path("uploads/original")));
    }
}
