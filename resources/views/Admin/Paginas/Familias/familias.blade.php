@extends('layouts.app')

@section('content')

<script type="text/javascript" src="<?php echo asset('js/Adm-Familias.js')?>"></script>

<div id="wrapper">

    <!-- Sidebar -->
    <div id="sidebar-wrapper">
        <ul class="sidebar-nav">
            <li>
                <a href="/admin/">Inicio</a>
            </li>

            <li>
                <a href="/admin/pessoas">Pessoas</a>
            </li>
            <li>
                <a href="/admin/familias">Familias</a>
            </li>
            <li>
                <a href="/admin/usuarios">Usuarios</a>
            </li>
            <li>
                <a href="/admin/administradores">Administradores</a>
            </li>
            <li>
                <a href="/admin/regionais">Regionais</a>
            </li>
            <li>
                <a href="/admin/congregacoes">Congregacoes</a>
            </li>
             <li>
                    <a href="/admin/relatorios">Relatórios</a>
                </li>
        </ul>
    </div>
    <!-- /#sidebar-wrapper -->

    <!-- Page Content -->
    <div id="page-content-wrapper">

        <div class="form-inline" style="padding-bottom:2%;">

            <button class="btn" id='btnCadastra' onclick="showViewCadastro()" style="background:#38c172"><i id='icons'class="fa fa-users"></i><i id='plus-icon' class="fa fa-plus"></i></button>

            <input type="text"  width="" class="form-control mr-1" placeholder="Nome: " id="pesquisar" aria-label="Search" autocomplete="off">
            <button type="button" onClick='buscarPessoa()' id="pesquisar-btn" class="btn btn-success btn"> Buscar </button>

        </div>

       <div class="table-responsive">
  <table class="table" style=" text-align: center; zoom:88%;"   id="tabelaFamilias">
    <thead class="thead-dark">
      <tr>
      <th>#</th>
                        <th width="15%;">Sobrenome</th>
                        <th width="28%;">Mãe</th>
                        <th width="28%;" >Pai</th>
                        <th>Açoes</th>
      </tr>
    </thead>
    <tbody>

    </tbody>
  </table>
</div>

        <div style="zoom:88%;" class="card-footer position-static-bottom">

          <nav id="paginator_familia" >

                <ul class="pagination">

                </ul>
            </nav>

        </div>
    </div>

    <!-- /#page-content-wrapper -->

</div>
<!-- /#wrapper -->


    @component('Admin/Paginas/Familias/view_cadastro_familia')
    @endcomponent 

    @component('Admin/Paginas/Familias/view_familia')
    @endcomponent 
    

@endSection











