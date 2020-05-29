@extends('layouts.app')

@section('content')

<script type="text/javascript" src="<?php echo asset('js/Adm-Relatorios-Inicio.js')?>"></script>

<div id="wrapper">

        <!-- Sidebar -->
        <div id="sidebar-wrapper">
            <ul class="sidebar-nav">
                <li>
                    <a href="/admin">Início</a>
                </li>
                
                <li>
                    <a href="/admin/pessoas">Pessoas</a>
                </li>
                <li>
                    <a href="/admin/familias">Familias</a>
                </li>
                <li>
                    <a href="/admin/usuarios">Usuários</a>
                </li>
                <li>
                    <a href="/admin/administradores">Administradores</a>
                </li>
                <li>
                    <a href="/admin/regionais">Regionais</a>
                </li>
                <li>
                    <a href="/admin/congregacoes">Congregacões</a>
                </li>
               <li>
                    <a href="/admin/relatorios">Relatórios</a>
                </li>
            </ul>
        </div>
        <!-- /#sidebar-wrapper -->

          <!-- Page Content -->
        <div id="page-content-wrapper" style="padding-left:2%;">
        
            <div class="card-deck">
  <div class="card  border-top-0  border-right-0 border-left-0 rounded-0" style='border-color:#3490dc; border-bottom-width:5px;'>
    <div class="card-body">
       <a href="/admin/relatorios/aniversariantes" class="stretched-link"></a>
<p class="text-left" style='color:#a4a8ab; font-family: monospace; letter-spacing: .1rem; margin-bottom:1%;'><strong></strong></p>
     
      <div class='form-inline'>
  <div class="spinner-grow text-primary spinner-grow-sm" role="status">
  <span class="sr-only">Loading...</span>
</div>
      <p id='Qaniversariantes' style='margin-left:2%;padding-left:8%; margin-bottom:0px; font-size:40px;'></p>
         <img src="../imagens/aniversario.png" class="img-responsive" style="margin-left:25%;width: 20%">
          
    
      </div>
      
    </div>
    
   
  </div>
  <div class="card  border-top-0  border-right-0 border-left-0 rounded-0" style='border-color:#38c172; border-bottom-width:5px;'>
    <div class="card-body">
       <a href="/admin/familias" class="stretched-link"></a>
    <p class="text-left" style='color:#a4a8ab; font-family: monospace; letter-spacing: .1rem; margin-bottom:1%;'><strong></strong></p>
        <div class='form-inline'>
  <div class="spinner-grow  spinner-grow-sm" style='color:#38c172; 'role="status">
  <span class="sr-only">Loading...</span>
</div>
      <p id='QaniversariosCasamento' style='margin-left:2%; padding-left:8%; margin-bottom:0px; font-size:40px;'></p>
          
            <img src="../imagens/aniversario_casamento.png" class="img-responsive" style="margin-left:25%;width: 20%">
      </div>
    </div>
  </div>
               <div class="card   border-top-0  border-right-0 border-left-0 rounded-0"   style='border-color:#ff9933; border-bottom-width:5px;'>
    <div class="card-body">
       <a href="/admin/usuarios"  class="stretched-link"></a>
     <p class="text-left" style='color:#a4a8ab; font-family: monospace; letter-spacing: .1rem; margin-bottom:1%;'><strong></strong></p>
         <div class='form-inline'>
  <div class="spinner-grow spinner-grow-sm" style='color:#ff9933'role="status">
  <span class="sr-only">Loading...</span>
</div>
      <p id='Qusuarios' style='margin-left:2%; padding-left:8%; margin-bottom:0px; font-size:40px;'></p>
             <img src="../../imagens/user.png" class="img-responsive" style="margin-left:25%;width: 20%">
          
      </div>
    </div>
  </div>
               <div class="card  border-top-0  border-right-0 border-left-0 rounded-0"  style='border-color:#e3342f; border-bottom-width:5px;'>
    <div class="card-body">
        <a href="/admin/regionais"  class="stretched-link"></a>
     <p class="text-left" style='color:#a4a8ab; font-family: monospace; letter-spacing: .1rem; margin-bottom:1%;'><strong></strong></p>
      <div class='form-inline'>
  <div class="spinner-grow spinner-grow-sm"  style='color:#e3342f;'role="status">
  <span class="sr-only">Loading...</span>
</div>
      <p id='Qregionais' style='margin-left:2%;padding-left:8%; margin-bottom:0px; font-size:40px;'></p>
          <img src="../imagens/nao-membros.png" class="img-responsive" style="margin-left:25%;width: 20%">
          
      </div>
    </div>
  </div>

</div>

             
                
            
        </div>
        <!-- /#page-content-wrapper -->

    </div>
    <!-- /#wrapper -->

    
@endsection





















