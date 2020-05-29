<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Admin;

class AdminsController extends Controller
{
    public function index(){
      
        $admins = Admin::paginate(20);
  
        return $admins;
  
      }
  
      
      public function buscar(Request $request){
  
  
        return Admin::where('name', 'LIKE', '%' . $request->nome . '%')->paginate(20);
  
        
      }
  
    
  
      public function store(Request $request){
  
          $admin = new Admin();
  
          $admin->situacao = 'A';
  
          $admin->name = $request->nome;
          $admin->email = $request->email;
  
          $admin->congregacao_id = $request->congregacao;
          $admin->password = Hash::make($request->senha);
  
          $admin->save();  
      
          return $admin;
      }

      public function show($id)
    {
        $admin =  Admin::find($id);
                
        if(isset($admin)){
            
            return json_encode($admin);
       }
         
       return response('Administrador não encontrado.',404);
          
    }
  
    
}
