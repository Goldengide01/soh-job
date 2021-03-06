<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMembersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('members', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name')->nullable();
            $table->string('phone')->nullable();
            $table->string('email')->nullable();
            $table->string('birthday')->nullable();
            $table->string('unit')->nullable();
            $table->string('token')->default("excuseMeMiOGboyinbo");
            // $table->string('role_in_the_unit')->nullable();
            // $table->string('role_in_the_church')->nullable();
            $table->string('original_pics_url')->nullable();
            $table->string('square_pics_url')->nullable();
            $table->string('wedding_anniversary')->nullable();
            $table->string('gepi_partner');

            
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('members');
    }
}
