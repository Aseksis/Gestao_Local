<?php

namespace App\Http\Controllers;

use App\Models\Cadastro\Casais;
use Illuminate\Http\Request;

class CasaisController extends Controller
{
    public function index(){
     
        return Casais::paginate(20);
     }
  
  public function all(Request $request){


      return casais::all();

      
    }

    
    public function show($id)
    {
        $casais =  Casais::find($id);
                
        if(isset($casais)){
            
            return json_encode($casais);
       }
         
       return response('Casal não encontrado.',404);
          
    }

    public function carregaFamilias(){

        return Casal::paginate(20);

    }

    public function update(Request $request, $id){

        $familia = Familia::find($id);
        
        $familia->sobrenome = $request->sobrenome_familia;
        $familia->pai = $request->pai;
        $familia->mae = $request->mae;
        $familia->id_parente = $request->id_parente;
        $familia->nome_parente = $request->nome_parente;
        $familia->tipo = $request->tipo;

        $familia->save();  
    
        return json_encode($familia);

    }
    
     public function store(Request $request){
         
            $familia = new Familia();

            $familia->situacao = 'A';

            $familia->sobrenome = $request->sobrenome_familia;

            $familia->pai = $request->pai;
            $familia->id_pai = $request->id_pai;

            $familia->mae = $request->mae;
            $familia->id_mae = $request->id_mae;

            $familia->id_parente = $request->id_parente;
            $familia->nome_parente = $request->nome_parente;

            $familia->tipo = $request->tipo;

            $familia->save();  
        
            return $familia;
    }

    public function buscar(Request $request){


        return Familia::where('sobrenome', 'LIKE', '%' . $request->sobrenome . '%')->paginate(20);
  
        
    }

}

