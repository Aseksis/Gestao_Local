@extends('layouts.app')

@section('content')

<style>

  div.a {
    white-space: nowrap; 
    width: 50px; 
    overflow: hidden;
    text-overflow: clip; 
    border: 1px solid #000000;
  }

</style>


<script type="text/javascript" src="<?php echo asset('js/User-Inicio.js')?>"></script>

<div id="wrapper">

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li>
                    <a href="/home">Início</a>
                </li>
                
                <li>
                    <a href="/pessoas">Pessoas</a>
                </li>
                <li>
                    <a href="/familias">Familias</a>
                </li>
                <li>
                    <a href="/regionais">Regionais</a>
                </li>
                <li>
                    <a href="/congregacoes">Congregacões</a>
                </li>

              <div class="panel-group" role="tablist">
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="collapseListGroupHeading1">
        <a class="collapsed" data-toggle="collapse" href="#collapseListGroup1" aria-expanded="false" aria-controls="collapseListGroup1" style='text-decoration: none; color:white; margin-left: 20px;'>
          Relatórios
        </a>
    
    <div id="collapseListGroup1" class="panel-collapse collapse" role="tabpanel" aria-labelledby="collapseListGroupHeading1">
      <ul class="list-group">
                       <li>
                      <a href="/relatorios/aniversariantes" style='text-decoration: none; color:#aaaaad; margin-left: 20px;'>Aniversariantes</a>
                </li>
           <li>
                    <a href="/relatorios/aniversarios/casamentos" style='text-decoration: none; color:#aaaaad; margin-left: 20px;'>Casamentos</a>
                </li>
           <li>
                    <a href="/relatorios/membros" style='text-decoration: none; color:#aaaaad; margin-left: 20px;'>Membros</a>
                </li>
           <li>
                    <a href="/relatorios/nao-membros" style='text-decoration: none; color:#aaaaad; margin-left: 20px;'>Não Membros</a>
                </li>
      </ul>
    </div>
  </div>
</div>
        
        </div>
                  </ul>
  </div>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper" style="padding-left:2%;">
        
            <div class="card-deck">
  <div class="card  border-top-0  border-right-0 border-left-0 rounded-0" style='border-color:#3490dc; border-bottom-width:5px;'>
    <div class="card-body">
       <a href="/pessoas" class="stretched-link"></a>
<p class="text-left" style='color:#a4a8ab; font-family: monospace; letter-spacing: .1rem; margin-bottom:1%;'><strong>PESSOAS</strong></p>
     
      <div class='form-inline'>
  <div class="spinner-grow text-primary spinner-grow-sm" role="status">
  <span class="sr-only">Loading...</span>
</div>
      <p id='Qpessoas' style='margin-left:2%;padding-left:8%; margin-bottom:0px; font-size:40px;'></p>
         <img src="imagens/pessoas.png" class="img-responsive" style="margin-left:25%;width: 20%">
          
    
      </div>
      
    </div>
    
   
  </div>
  <div class="card  border-top-0  border-right-0 border-left-0 rounded-0" style='border-color:#38c172; border-bottom-width:5px;'>
    <div class="card-body">
       <a href="/familias" class="stretched-link"></a>
    <p class="text-left" style='color:#a4a8ab; font-family: monospace; letter-spacing: .1rem; margin-bottom:1%;'><strong>FAMILIAS</strong></p>
        <div class='form-inline'>
  <div class="spinner-grow  spinner-grow-sm" style='color:#38c172; 'role="status">
  <span class="sr-only">Loading...</span>
</div>
      <p id='Qfamilias' style='margin-left:2%; padding-left:8%; margin-bottom:0px; font-size:40px;'></p>
          
            <img src="imagens/familia.png" class="img-responsive" style="margin-left:25%;width: 20%">
      </div>
    </div>
  </div>
               <div class="card   border-top-0  border-right-0 border-left-0 rounded-0"   style='border-color:#ff9933; border-bottom-width:5px;'>
    <div class="card-body">
       <a href="/relatorios"  class="stretched-link"></a>
     <p class="text-left" style='color:#a4a8ab; font-family: monospace; letter-spacing: .1rem; margin-bottom:1%;'><strong>RELATÓRIOS</strong></p>
         <div class='form-inline'>
  <div class="spinner-grow spinner-grow-sm" style='color:#ff9933'role="status">
  <span class="sr-only">Loading...</span>
</div>
      <p id='Qrelatorios' style='margin-left:2%; padding-left:8%; margin-bottom:0px; font-size:40px;'>04</p>
             <img src="imagens/relatorios.png" class="img-responsive" style="margin-left:25%;width: 20%">
          
      </div>
    </div>
  </div>
               <div class="card  border-top-0  border-right-0 border-left-0 rounded-0"  style='border-color:#e3342f; border-bottom-width:5px;'>
    <div class="card-body">
        <a href="/regionais"  class="stretched-link"></a>
     <p class="text-left" style='color:#a4a8ab; font-family: monospace; letter-spacing: .1rem; margin-bottom:1%;'><strong>REGIONAIS</strong></p>
      <div class='form-inline'>
  <div class="spinner-grow spinner-grow-sm"  style='color:#e3342f;'role="status">
  <span class="sr-only">Loading...</span>
</div>
      <p id='Qregionais' style='margin-left:2%;padding-left:8%; margin-bottom:0px; font-size:40px;'></p>
          <img src="imagens/localizacao.png" class="img-responsive" style="margin-left:25%;width: 20%">
          
      </div>
    </div>
  </div>
  <div class="card  border-top-0  border-right-0 border-left-0 rounded-0" style='border-color:#ffe019; border-bottom-width:5px;'>
    <div class="card-body">
        <a href="/congregacoes"  class="stretched-link"></a>
     <p class="text-left" style='color:#a4a8ab; font-family: monospace; letter-spacing: .1rem; margin-bottom:1%;'><strong>CONGREGAÇÕES</strong></p>
      <div class='form-inline'>
  <div class="spinner-grow  spinner-grow-sm" style='color:#ffe019;' role="status">
  <span class="sr-only">Loading...</span>
</div>
      <p id='Qcongregacoes' style='margin-left:2%;padding-left:8%; margin-bottom:0px; font-size:40px;'></p>
         <img src="imagens/congregacao.png" class="img-responsive" style="margin-left:25%;width: 20%">
      </div>
    </div>
  </div>
</div>

             
                
            
        </div>
        <!-- /#page-content-wrapper -->

    </div>
    <!-- /#wrapper -->

    
@endsection






















