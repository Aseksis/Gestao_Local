
  $.ajax({

            type: "GET",
            url: "/api/pessoas",
            context: this,
            data: '',
            success: function(data) {
              	
            	montarTabela(data);
          
            },
            error: function(error) {
                console.log(error);
            }
        });




 function montarLista(p) {

    linha = '<tr>' +
        '<td >' + p.id + '</td>' +
        '<td>' + p.nome + '</td>' +

       '<td>' + p.data_nasc + '</td>' +
      '<td >' +
        '<div>' +

        '<button type="button"' + 'class="btn btn-sm btn-primary"' + 'onclick="viewPessoa(' + p.id + ')"> Visualizar</button>' +

        '</div>' +
        '</td>'

    "<tr>";

    return linha;

    }


function montarTabela(data) {

  $('#tabelaNmembros>tbody>tr').remove();
  
  for (i = 0; i < data.total; i++) {
    
      s = montarLista(data.data[i]);
    
    if(data.data[i].situacao_membro=='NM'){
    
      $('#tabelaNmembros>tbody').append(s);
    
    }
  }
}




function viewPessoa(id) {

    $('.nav-tabs a[href="#view_dados_pessoais"]').tab('show');

    $.getJSON('/api/pessoas/' + id, function(data) {

        $("#view_nome").text(data.nome),
            $("#view_data_nasc").text(data.data_nasc),
            $("#view_sexo").text(data.sexo),

            $("#view_pai").text(data.pai),
            $("#view_mae").text(data.mae),

            $("#view_estado_civil").text(data.estado_civil),
            $("#view_email").text(data.email),
            $("#view_telefone").text(data.telefone),
            $("#view_celular").text(data.celular),
            $("#view_endereco_nro").text(data.endereco_nro),
            $("#view_endereco_tipo").text(data.endereco_tipo),
            $("#view_endereco_complemento").text(data.endereco_complemento),
            $("#view_codigoTc").text(data.codigo_tc)

        if (data.congregacao_id == null) {
            $("#view_situacao").text('Não Membro');
            $("#form_view_regional").hide();
            $("#form_view_congregracao").hide()
            $("#form_view_relacao_igreja").hide()
            $("#form_view_codigoTc").hide();
        } else {

            $("#view_situacao").text('Membro');
            $("#form_view_congregracao").show();
            $("#form_view_relacao_igreja").show()
            $("#form_view_regional").show();
            $("#form_view_codigoTc").show();


            $.getJSON('/api/congregacoes/' + data.congregacao_id, function(cong) {

                $.getJSON('/api/regionais/' + cong.regional_id, function(reg) {

                    $("#view_regional").text(reg.regional);
                    $("#form_view_regional").show();


                });

                $("#view_congregacao").text(cong.congregação);
                $("#form_view_congregracao").show();

            });

            $.getJSON('/api/funcoes/' + data.funcao_id, function(func) {

                $("#view_relacao_igreja").text(func.funcao);
                $("#form_view_relacao_igreja").show();

            });


        }

      
        $.getJSON('/api/enderecos/' + data.endereco_id, function(end) {

            $("#view_cep").text(end.cep);
            $("#view_rua").text(end.rua);
            $("#view_bairro").text(end.bairro);
            $("#view_cidade").text(end.cidade);
            $("#view_uf").text(end.estado);

        });

    });

    $("#dlgViewPessoa").modal('show');

}


function criarExel(){

    data = {
        regional: $("#regional").val(),
        congregacao:  $("#congregacao").val()
    }

    $.ajax({

        type: "GET",
        url: "/relatorios/nao-membros/excel",
        context: this,
        data: data,
        success: function(d) {

            window.open('/relatorios/nao-membros/excel',d);
      
        },
        error: function(error) {
            console.log(error);
        }
    });

}




