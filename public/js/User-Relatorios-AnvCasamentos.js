
function buscarAnv(n){
  
  $.ajax({

            type: "GET",
            url: "/api/casais",
            context: this,
            data: n,
            success: function(data) {
              console.log('ssssssss');
              var aniversariantes = [];
              
              
              var dataHoje = new Date();
              
              var datasMeses = [];
              
                for(var i=0;i<data.total;i++) {
              	
                  datasMeses.push(data.data[i].data_casamento.split("/"));
                  
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
            
              console.log(aniversariantes);

              
              
              if(aniversariantes.length == 0){
                
  				$('#tabelaAniversariantes>tbody>tr').remove();
                
                alert('Não há aniversarios de casamento no mês: ' + n);
                
  				

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
        '<td>' + p.Esposa + '</td>' +
      
        '<td>' + p.Esposo + '</td>' +

       '<td>' + p.data_casamento + '</td>' +
      '<td >' +
        '<div>' +

        '<button type="button"' + 'class="btn btn-sm btn-primary"' + 'onclick="viewFamilia(' + p.id + ')"> Visualizar</button>' +

        '</div>' +
        '</td>'

    "<tr>";

    return linha;

    }


function montarTabela(data,aniversariantes) {

  $('#tabelaAnvCasamentos>tbody>tr').remove();
var n = 0;
  for (i = 0; i < aniversariantes.length; i++) {
    
    n = aniversariantes[i][2];
    
      s = montarLista(data.data[n]);
      $('#tabelaAnvCasamentos>tbody').append(s);
  }
}


function viewFamilia(id) {

    $.getJSON('/api/casais/' + id, function(cas) {


        $('#dlgViewFamilia').modal('show');
      
    	var pai = cas.Esposo.split(' ')[0];
      	var mae = cas.Esposa.split(' ')[0];
      
      	var sobrenome = mae+pai;
      
        $('#view_sobrenome').text(sobrenome);
        $('#view_pai').text('Pai: ' + cas.Esposo);
        $('#view_mae').text('Mãe: ' + cas.Esposa);
        $('#view_data_casamento').text(cas.data_casamento);

    });
}



