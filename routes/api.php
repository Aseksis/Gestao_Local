<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::resource('/pessoas','PessoaController');

Route::resource('/familias','FamiliaController');

Route::resource('/casais','CasaisController');

Route::resource('/enderecos','EnderecoController');

Route::resource('/regionais','RegionalController');

Route::resource('/congregacoes','CongregacaoController');

Route::resource('/funcoes','FuncaoController');

Route::resource('/users','UsersController');

Route::resource('/admins','AdminsController');



