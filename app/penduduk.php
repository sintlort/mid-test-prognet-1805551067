<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Notifications\Notifiable;

class penduduk extends Model
{
    use Notifiable;
    use SoftDeletes;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'nama','umur','alamat','pekerjaan',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [

    ];

    /**
     * The attributes for notifiable
     *
     * @var array
     */
    public $timestamps=true;

    /**
     * This is for SoftDeletes
     * @var array
     */
    protected $dates = [
        'deleted_at',
    ];
}
