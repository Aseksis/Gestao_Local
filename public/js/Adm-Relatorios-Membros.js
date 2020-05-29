
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

  $('#tabelaMembros>tbody>tr').remove();
  
  for (i = 0; i < data.total; i++) {
    
      s = montarLista(data.data[i]);
    
    
      console.log(i);
    
    if(data.data[i].congregacao_id!=null){
      
    
      $('#tabelaMembros>tbody').append(s);
    
    }
  }
}





