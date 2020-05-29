$.ajaxSetup({

    headers: {
        'X-CSRF-TOKEN': "{{  csrf_token() }}"
    }

});

$(document).ready(function($) {

    $("#formCadastroRegional").submit(function(event) {
        event.preventDefault();
        if ($("#id").val() == "") {
            criarAdministrador();
        } else {
            salvarAdministrador();
        }
    });
     
     carregarCongregacoes();
     carregarAdministradores();

    $('#dlgCadastroFamilia').on('hide.bs.modal', function (event) {
        
        console.log('O Modal Fechou');
        
    })

});

function montarTabela(data) {

$('#tabelaAdministradores>tbody>tr').remove();
console.log(data.data.length);

for (i = 0; i < data.data.length; i++) {
s = montarLista(data.data[i]);
$('#tabelaAdministradores>tbody').append(s);
}

}

function montarLista(u) {
    
    linha = '<tr>' +
        '<td >' + u.id + '</td>' +
        '<td>' + u.situacao + '</td>' +
        '<td>' + 'Administrador' + '</td>' +
        '<td>' + u.email + '</td>' +
        '<td>' +

        '<div>' +
        '<button type="button"' + 'class="btn btn-sm btn-primary" style="background:#c4ff4d; border-color:#c4ff4d;"' + 'onclick="viewAdministrador(' + u.id + ')"> <font color="#000000">Visualizar</font>  </button>' +
        '</div>' +
        '</td>'

    "<tr>";

    return linha;

}

function showViewCadastroAdministrador(){

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

                linhas = $("#tabelaAdministradores>tbody>tr");


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

function criarAdministrador(){

    novoAdministrador = {
        
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
            url: "/api/admins",
            context: this,
            data: novoAdministrador,
            success: function(data) {

                $("#dlgCadastro").modal('hide');
                s = montarLista(data);
                $('#tabelaRegionais>tbody').append(s);

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




function carregarAdministradores(){

      $.ajax({

            type: "get",
            url: "/api/admins",
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

$('#paginator_administrador>ul>li').remove();

$('#paginator_administrador>ul').append(getItemAnterior(data));

for (i = 1; i <= data.last_page; i++) {
s = getItem(data, i);
$('#paginator_administrador>ul').append(s);
}

$('#paginator_administrador>ul').append(getItemProximo(data));

}



function buscarAdministrador(){

filtro = {
nome: $("#pesquisar").val()
}

$.ajax({

type: "GET",
url: "/buscar/admin",
context: this,
data: filtro,
success: function(data) {

    if(data.total==0){

        alert('Administrador Não Encontrado!');

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

function viewAdministrador(id) {

$("#dlgViewAdministrador").modal('show');


 $.getJSON('/api/admins/' + id, function(adm) {

    $("#view_situacao").text(adm.situacao);
    $("#view_nome").text(adm.name);

    if(adm.congregacao_id==null){
        $("#view_congregacao").text('Não é Membro');
    }else{
          $.getJSON('/api/congregacoes/' + adm.congregacao_id, function(cong) {

        $("#view_congregacao").text(cong.congregação);

    });

    }
  
    $("#view_email").text(adm.email);

});


}

