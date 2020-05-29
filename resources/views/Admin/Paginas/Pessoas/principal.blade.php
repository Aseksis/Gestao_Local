@extends('layouts.app', ["opcao" => "Cadastrar Pessoas"])

@section('content')

<script type="text/javascript" src="<?php echo asset('js/Adm-Pessoas.js')?>"></script>

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

            <button class="btn" id='btnCadastra' onclick="showViewCadastro()" style="background:#3490dc"><i id='icons'class="fa fa-user-plus"></i></button>

            <input type="text"  width="" class="form-control mr-1" placeholder="Nome: " id="pesquisar" aria-label="Search" autocomplete="off">
            <button type="button" onClick='buscarPessoa()' id="pesquisar-btn" class="btn btn-primary btn"> Buscar </button>

        </div>

       <div class="table-responsive">
  <table class="table" style=" text-align: center; zoom:88%;"   id="tabelaPessoas">
    <thead class="thead-dark">
      <tr>
        <th scope="col">#</th>
        <th scope="col">Nome</th>
        <th scope="col">Celular</th>
        <th scope="col">Telefone</th>
        <th scope="col">Ações</th>
      </tr>
    </thead>
    <tbody>

    </tbody>
  </table>
</div>

        <div style="zoom:88%;" class="card-footer position-static-bottom">

            <nav id="paginator">

                <ul class="pagination">

                </ul>
            </nav>

        </div>
    </div>

    <!-- /#page-content-wrapper -->

</div>
<!-- /#wrapper -->


    @component('Admin/Paginas/Pessoas/view_cadastro')
    @endcomponent 

    @component('Admin/Paginas/Pessoas/view_pessoa')
    @endcomponent 
    

@endSection














