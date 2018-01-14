<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class House extends Model
{
    //忽略ID
    protected $guarded=['id'];
    protected $table='house';

}
