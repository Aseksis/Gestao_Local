
  $.ajax({

            type: "GET",
            url: "/pessoas/all",
            context: this,
            data: '',
            success: function(data) {
              
              var aniversariantes = [];
              
              
              var dataHoje = new Date();
              
              
              var datasMeses = [];
              
                for(var i=0;i<data.length;i++) {
              	
                  datasMeses.push(data[i].data_nasc.split("/"));
                  
                  datasMeses[i].push(i);
                  
                  datasMeses[i].splice(2,1);
              	}
              
              
              for(i=0;i<datasMeses.length;i++) {
               
              
                if( datasMeses[i][1] == dataHoje.getMonth()+1) {
                  
                  
              console.log(i);
                  
                  aniversariantes.push(datasMeses[i]);
                	
                }
               
              
              }
              
             aniversariantes.sort(function(a, b){

                  return a > b;

              });

              
              
              
               var mes = dataHoje.getMonth() + 1;
              
        $('#mes').val(mes);
      
              
              if(aniversariantes.length == 0){
                
  				

            }else{
            	montarTabela(data,aniversariantes);
            }



              
     
          
            },
            error: function(error) {
                console.log(error);
            }
        });


function buscarAnv(n){
  
  $.ajax({

            type: "GET",
            url: "/pessoas/all",
            context: this,
            data: n,
            success: function(data) {
              
              var aniversariantes = [];
              
              
              var dataHoje = new Date();
              
              var datasMeses = [];
              
                for(var i=0;i<data.total;i++) {
              	
                  datasMeses.push(data.data[i].data_nasc.split("/"));
                  
                  datasMeses[i].push(i);
                  
                  datasMeses[i].splice(2,1);
              	}
              
              for(i=0;i<datasMeses.length;i++) {
                
                if( datasMeses[i][1] == parseInt(n)) {
                  
                  aniversariantes.push(datasMeses[i]);
                	
                  console.log('ok');
                }
               
              
                
              }
              
              
              
              
             aniversariantes.sort(function(a, b){

                  return a > b;

              });
            

              
              
              if(aniversariantes.length == 0){
                
  				$('#tabelaAniversariantes>tbody>tr').remove();
                
                var mes = dataHoje.getMonth() + 1;
                
                alert('Não há aniversariantes no mês: ' + n);
                
  				

            }else{
            	montarTabela(data,aniversariantes);
            }



              
     
          
            },
            error: function(error) {
                console.log(error);
            }
        });


}

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


function montarTabela(data,aniversariantes) {

  $('#tabelaAniversariantes>tbody>tr').remove();
var n = 0;
  for (i = 0; i < aniversariantes.length; i++) {
    
    n = aniversariantes[i][2];
    
      s = montarLista(data.data[n]);
      $('#tabelaAniversariantes>tbody').append(s);
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







