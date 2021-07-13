<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

// TransactionDetail untuk menyimpan data detail seperti username, tgl expired passport, dan lain lain
class TransactionDetail extends Model
{
    use SoftDeletes;

    protected $fillable = [
        'transactions_id', 'username', 'nationality', 'is_visa', 'doe_passport'
    ];

    protected $hidden = [

    ];

    //untuk melihat transaction yg dipilih
    public function transaction(){
        return $this->belongsTo( Transaction::class, 'transactions_id', 'id' );
    }
}
