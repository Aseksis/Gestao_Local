<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('User/Paginas/Inicio/Principal');
    }
  
     public function paginaPessoas(){
        
        return view('User/Paginas/Pessoas/principal');
        
    }

    public function paginaFamilias(){
        
        return view('User/Paginas/Familias/familias');
        
    }

    public function paginaRegionais(){
        
        return view('User/Paginas/Regionais/regionais');
        
    }

    public function paginaCongregacoes(){
        
        return view('User/Paginas/Congregacoes/congregacoes');
        
    }
  
   public function paginaRelatorios(){
        
        return view('User/Paginas/Relatorios/Inicio/principal');
        
    }
  
    public function paginaAniversariantes(){
  
    return view('User/Paginas/Relatorios/Aniversariantes/aniversariantes');
  }
  
   public function paginaAniversariosCasamentos(){
  
    return view('User/Paginas/Relatorios/Casamentos/casamentos');
  }
  
   public function paginaMembros(){
  
    return view('User/Paginas/Relatorios/Membros/membros');
  }
  
    public function paginaNmembros(){
  
    return view('User/Paginas/Relatorios/Nmembros/Nmembros');
  }
  
  
}






