$.ajaxSetup({

    headers: {
        'X-CSRF-TOKEN': "{{  csrf_token() }}"
    }

});

$(document).ready(function($) {

    $("#dlgCadastro").submit(function(event) {
        event.preventDefault();
        if ($("#id").val() == "") {
            criarUsuario();
        } else {
            salvarUsuario();
        }
    });
     
     carregarCongregacoes();
     carregarUsuarios();

    $('#dlgCadastroFamilia').on('hide.bs.modal', function (event) {
        
        console.log('O Modal Fechou');
        
    })

});

 function viewUsuario(id) {

    $("#dlgViewUsuario").modal('show');

    
         $.getJSON('/api/users/' + id, function(user) {

            $("#view_situacao").text(user.situacao);
            $("#view_nome").text(user.name);

            if(user.congregacao_id==null){
                $("#view_congregacao").text('Não é Membro');
            }else{
                  $.getJSON('/api/congregacoes/' + user.congregacao_id, function(cong) {

                $("#view_congregacao").text(cong.congregação);

            });

            }
          
            $("#view_email").text(user.email);

        });
 

 }

function montarTabela(data) {

$('#tabelaUsuarios>tbody>tr').remove();
console.log(data.data.length);

for (i = 0; i < data.data.length; i++) {
s = montarLista(data.data[i]);
$('#tabelaUsuarios>tbody').append(s);
}

}

function montarLista(u) {
    
    linha = '<tr>' +
        '<td >' + u.id + '</td>' +
        '<td>' + u.situacao + '</td>' +
        '<td>' + 'Usuario' + '</td>' +
        '<td>' + u.email + '</td>' +
        '<td>' +

        '<div>' +
        '<button type="button"' + 'class="btn btn-sm btn-primary" style="background:#ff9933; border-color:#ff9933;"' + 'onclick="viewUsuario(' + u.id + ')"> <font color="#000000">Visualizar</font>  </button>' +
        '</div>' +
        '</td>'

    "<tr>";

    return linha;

}

function showViewCadastroUsuario(){

    $("#nome").val('');
    
    $("#permissao").val('')
    $("#congregacao").val('');
    $("#email").val('');
    $("#senha").val('')
   
    $("#dlgCadastro").modal('show');
}

function salvarRegional(){

    regional = {
        
        regional: $("#regional_nome").val(),
        pastor_regional: $("#pastor_regional").val(),
        
        cep: $("#cep").val(),
        rua: $("#rua").text(),
        bairro: $("#bairro").text(),
        cidade: $("#cidade").text(),
        uf: $("#uf").text(),

        endereco_nro: $("#endereco_nro").val(),
        ponto_referencia: $("#ponto_referencia").val(),


    }

    if(validaRegional()){

        $.ajax({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
        type: "PUT",
        url: "/api/regionais/" + $("#id").val(),
        context: this,
        data: regional,
        success: function(data) {
            
            $("#dlgCadastro").modal('hide');
            
            regional = JSON.parse(data);

                linhas = $("#tabelaRegionais>tbody>tr");


                e = linhas.filter(function(i, e) {
                    return (e.cells[0].textContent == regional.id);
                });

                if (e) {
                    e[0].cells[0].textContent = regional.id;
                    e[0].cells[1].textContent = regional.regional;
                }

        },
        error: function(error) {
            console.log(error);
        }
        });

    }

}

function criarUsuario(){
  
    novoUsuario = {
        
        nome: $("#nome").val(),
        
        congregacao: $("#congregacao").val(),
        email: $("#email").val(),
        senha: $("#senha").val(),
   
    }

            $.ajax({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                },
            type: "POST",
            url: "/api/users",
            context: this,
            data: novoUsuario,
            success: function(data) {

                $("#dlgCadastro").modal('hide');
                s = montarLista(data);
                $('#tabelaUsuarios>tbody').append(s);

            },
            error: function(error) {
                console.log(error);
            }
            });
        

    



}

  function carregarCongregacoes() {

    $("#congregacao").empty();

    $.getJSON('/api/congregacoes', function(reg) {

        for (i = 0; i < reg.data.length; i++) {

            if (i == 0) {
                $('#congregacao').append("<option value='' disabled selected hidden>Congregação</option>");
            }

            $('#congregacao').append($('<option>', {
                value: reg.data[i].id,
                text: reg.data[i].congregação
            }));

            console.log('entrou aqui');
        }

        console.log(reg);

    });

}




function carregarUsuarios(){

      $.ajax({

            type: "get",
            url: "/api/users",
            context: this,
            success: function(data) {
                
                    montarTabela(data)
                    montarPagination(data);
            },
            error: function(error) {
                console.log(error);
            }
        });
}


function getItem(data, i) {

if (i == data.current_page)
s = '<li class="page-item active">';
else
s = '<li class="page-item">';

s += '<a class="page-link"' + ' onClick = "carregarPessoas(' + i + ')">' + i + '</a></li>';

return s;

}

function getItemAnterior(data) {

if (1 == data.current_page)
s = '<li class="page-item disabled">';
else
s = '<li class="page-item">';

s += '<a class="page-link"' + ' " onClick = carregarPessoas(' + (data.current_page - 1) + ')>' + "Anterior</a></li>";

return s;

}

function getItemProximo(data) {

if (data.last_page == data.current_page)
s = '<li class="page-item disabled">';
else
s = '<li class="page-item">';

s += '<a class="page-link"' + ' " onClick = carregarPessoas(' + (data.current_page + 1) + ')>' + "Proximo</a></li>";

return s;

}

function montarPagination(data) {

$('#paginator_usuario>ul>li').remove();

$('#paginator_usuario>ul').append(getItemAnterior(data));

for (i = 1; i <= data.last_page; i++) {
s = getItem(data, i);
$('#paginator_usuario>ul').append(s);
}

$('#paginator_usuario>ul').append(getItemProximo(data));

}



function buscarUsuario(){

filtro = {
nome: $("#pesquisar").val()
}

$.ajax({

type: "GET",
url: "/buscar/user",
context: this,
data: filtro,
success: function(data) {

    if(data.total==0){

        alert('Usuario Não Encontrada!');

    }else{

        montarTabela(data);
        montarPagination(data);

    }
    

},
error: function(error) {
    console.log(error);
}
});

}




