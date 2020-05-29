$.ajax({

            type: "GET",
            url: "/api/casais",
            context: this,
            data: '',
            success: function(data) {
              
               var aniversariantes = 0;
              
               var datasMeses = [];
              
               for(var i=0;i<data.total;i++) {
              	
                 if(data.data[i].situacao=='A'){
                   
                  datasMeses.push(data.data[i].data_casamento.split("/"));
                   
                 }
                 
    
               }
              
                var meses = [];
              
              
              for(var i = 0; i<Object.keys(datasMeses).length;i++){
                
                  meses.push(datasMeses[i][1]);
              	
              }
              
              
              
              var dataHoje = new Date();
              
              for(var i = 0; i< Object.keys(datasMeses).length;i++){
              
                
                if(meses[i] == dataHoje.getMonth()+1){
                  
                  aniversariantes++;
                }
              
              }
              
              console.log(meses);

              $('#QaniversariosCasamento').text(aniversariantes);
              
              
             
     
          
            },
            error: function(error) {
                console.log(error);
            }
});


$.ajax({

            type: "GET",
            url: "/api/pessoas",
            context: this,
            data: '',
            success: function(data) {
             
             var qMembros = 0;
             var qNmembros = 0;
              
             for(i=0;i<data.total;i++){
                 
                if(data.data[i].congregacao_id!=null){
             
               		qMembros++;
                  
             	}else{
                
                  qNmembros++
                  
                }
                 
             }
              
              
              $('#Qmembros').text(qMembros);
              $('#QNmembros').text(qNmembros);
  
              
          
            },
            error: function(error) {
                console.log(error);
            }
});




$(document).ready(function($) {
  
   $.ajax({

            type: "GET",
            url: "/api/pessoas",
            context: this,
            data: '',
            success: function(data) {
              
              var aniversariantes = 0;
              
              var datasMeses = [];
              
                for(var i=0;i<data.total;i++) {
              	
                  datasMeses.push(data.data[i].data_nasc.split("/"));
    
              	}
              
              var meses = [];
              
              for(var i = 0; i<data.total;i++){
                
                
                  meses.push(datasMeses[i][1]);
              	
              }
              
              var dataHoje = new Date();
              
              for(var i = 0; i< data.total;i++){
              
                if(meses[i] == dataHoje.getMonth()+1){
                  
                  aniversariantes++;
                }
              
              }
              
               
             if(aniversariantes<10&&aniversariantes>0){
              aniversariantes = '0'+aniversariantes;
              }

              $('#Qaniversariantes').text(aniversariantes);
              
          
            },
            error: function(error) {
                console.log(error);
            }
        });
  
  


});











