<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Member extends Model
{
    //
    public function count($email) {
    	if ($email != "") {
    		return $countMember = Member::where('email', $email)->count();
    	}
    }
}
