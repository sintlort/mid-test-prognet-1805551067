<?php

namespace App\Http\Controllers;

use App\penduduk;
use Illuminate\Http\Request;

class penduduks extends Controller
{
    public function openPenduduk(){
        $dataPenduduk = penduduk::all();
        return view('insert',compact('dataPenduduk'));
    }

    public function insertPenduduk(Request $request){
        penduduk::create([
            'nama'=>$request->nama,
            'umur'=>$request->umur,
            'alamat'=>$request->alamat,
            'negara'=>$request->negara,
            'pekerjaan'=>$request->pekerjaan,]);
        return redirect(route('show.penduduk'));
    }
    public function deletePenduduk($id){
        $deletedData = penduduk::find($id);
        $deletedData->delete();
        return redirect(route('show.penduduk'));
    }
    public function updatePenduduk(Request $request){
        penduduk::where('id',$request->id)->update([
            'nama'=>$request->nama,
            'umur'=>$request->umur,
            'alamat'=>$request->alamat,
            'negara'=>$request->negara,
            'pekerjaan'=>$request->pekerjaan
        ]);
        return redirect(route('show.penduduk'));
    }
}
