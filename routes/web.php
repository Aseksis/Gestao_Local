<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});


Route::get('/', 'Auth\LoginController@showLoginForm');


Auth::routes();

////////////////////////////////// ADMIN ROTAS /////////////////////////////////////////

// Rotas Controle Login

Route::get('password/reset/{token}', 'Auth\ResetPasswordController@showResetForm')->name('password.reset'); 

Route::get('/admin/login', 'Auth\AdminLoginController@index')->name('admin.login');

Route::post('/admin/login', 'Auth\AdminLoginController@login')->name('admin.login.submit');

// Rotas Paginas

Route::get('/admin', 'AdminController@index')->name('admin');

Route::get('/admin/pessoas', 'AdminController@paginaPessoas')->name('admin.pessoas');

Route::get('/admin/familias', 'AdminController@paginaFamilias')->name('admin.familias');

Route::get('/admin/regionais', 'AdminController@paginaRegionais')->name('admin.regionais');

Route::get('/admin/congregacoes', 'AdminController@paginaCongregacoes')->name('admin.congregacoes');

Route::get('/admin/usuarios', 'AdminController@paginaUsuarios')->name('admin.usuarios');

Route::get('/admin/administradores', 'AdminController@paginaAdministradores')->name('admin.administradores');

Route::get('/admin/relatorios', 'AdminController@paginaRelatorios')->name('admin.relatorios');

Route::get('/admin/relatorios/aniversariantes', 'AdminController@paginaAniversariantes')->name('admin.relatorios.aniv');

Route::get('/regional/congregacoes','RegionalController@congregacoes');

// Rotas De Busca

Route::get('/buscar/pessoas/familia','PessoaController@buscarPessoasFamilia'); // Busca Membros da familia.

Route::get('/buscar/pessoa','PessoaController@buscar');

Route::get('/buscar/familia','FamiliaController@buscar');

Route::get('/buscar/congregacao','CongregacaoController@buscar');

Route::get('/buscar/regional','RegionalController@buscar');

Route::get('/buscar/user','UsersController@buscar');

Route::get('/buscar/admin','AdminsController@buscar');


// Rotas Usuarios Comuns:

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/pessoas', 'HomeController@paginaPessoas')->name('pessoas');

Route::get('/familias', 'HomeController@paginaFamilias')->name('familias');

Route::get('/regionais', 'HomeController@paginaRegionais')->name('regionais');

Route::get('/congregacoes', 'HomeController@paginaCongregacoes')->name('congregacoes');

Route::get('/relatorios', 'HomeController@paginaRelatorios')->name('relatorios');

Route::get('/relatorios/aniversariantes', 'HomeController@paginaAniversariantes')->name('relatorios.aniv');

Route::get('/relatorios/aniversarios/casamentos', 'HomeController@paginaAniversariosCasamentos')->name('relatorios.aniv.casam');

Route::get('/relatorios/membros', 'HomeController@paginaMembros')->name('relatorios.membros');

Route::get('/relatorios/membros-c/excel', 'Excel_Controller@membrosCExcel')->name('R-MC-Excel');

Route::get('/relatorios/nao-membros', 'HomeController@paginaNmembros')->name('relatorios.Nmembros');

Route::get('/relatorios/nao-membros/excel', 'Excel_Controller@nMembrosExcel')->name('R-NM-Excel');

// Desfaz relacionamento

Route::get('/relacionameno/pessoa-familia/excluir', 'PessoaController@excluiFamilia');





// Retorna Toda tabela Banco de Dados

Route::get('/pessoas/all','PessoaController@all');

Route::get('/casais/all','CasaisController@all');





// Relatorios


Route::get('/criar/pdf', 'PDF_Controller@criar')->name('cria_pdf');








