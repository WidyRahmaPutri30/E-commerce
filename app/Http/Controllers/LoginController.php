<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Session;

class LoginController extends Controller
{
    public function index()
    {
        return view ('login');
    }

    public function login()
    {
        if (Auth::check()) {
            return redirect('home');
        }else{
            return view('login');
        }
    }

    public function actionlogin(Request $request)
    {
        $this->validate($request, [
            'email' => 'required|email',
            'password' => 'required'
        ]);
        if(auth()->guard('adminMiddle')->attempt(['email' => $request->email, 'password' => $request->password]))
        {
            \Session::put('success', 'Anda berhasil login!');
            return redirect()->route('admin.homes.index');
        }else {
            return back()->with('error', 'Email atau Password salah!');
        }
    }

    public function actionlogout()
    {
        Auth::logout();
        return redirect('/');
    }
}
