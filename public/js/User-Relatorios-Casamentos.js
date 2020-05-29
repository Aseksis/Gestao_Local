
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
                
                alert('Não há aniversariantes no mês: ' + mes);
                
  				

            }else{
            	montarTabela(data,aniversariantes);
            }



              
     
          
            },
            error: function(error) {
                console.log(error);
            }
        });


}
