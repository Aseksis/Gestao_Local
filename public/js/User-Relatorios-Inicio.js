$.ajax({

            type: "GET",
            url: "/casais/all",
            context: this,
            data: '',
            success: function(data) {
              
               var aniversariantes = 0;
              
               var datasMeses = [];
              
               for(var i=0;i<data.length;i++) {
              	
                 if(data[i].situacao=='A'){
                   
                  datasMeses.push(data[i].data_casamento.split("/"));
                   
                 }
                 
    
               }
              
                var meses = [];
              
              
              for(var i = 0; i<datasMeses.length;i++){
                
                  meses.push(datasMeses[i][1]);
              	
              }
              
              
              
              var dataHoje = new Date();
              
              for(var i = 0; i< datasMeses.length;i++){
              
                
                if(meses[i] == dataHoje.getMonth()+1){
                  
                  aniversariantes++;
                }
              
              }
              

              if(aniversariantes<10&&aniversariantes>0){
              aniversariantes = '0'+aniversariantes;
              }

              $('#QaniversariosCasamento').text(aniversariantes);
              
          
            },
            error: function(error) {
                console.log(error);
            }
});


$.ajax({

            type: "GET",
            url: "/pessoas/all",
            context: this,
            data: '',
            success: function(data) {
             
             var qMembros = 0;
             var qNmembros = 0;
              
              
             for(i=0;i<data.length;i++){
               
                if(data[i].congregacao_id!=null){
             
               		qMembros++;
                  
             	}else{
                
                  qNmembros++
                  
                }
                 
             }
              
                    
             if(qMembros<10&&qMembros>0){
              qMembros = '0'+qMembros;
              }
              
              if(qNmembros<10&&qNmembros>0){
              qNmembros = '0'+qNmembros;
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
            url: "/pessoas/all",
            context: this,
            data: '',
            success: function(data) {
              
              var aniversariantes = 0;
              
              var datasMeses = [];
              
              
                  console.log(data.length);
              
                for(var i=0;i<data.length;i++) {
                  
                  
              	
                  datasMeses.push(data[i].data_nasc.split("/"));
    
              	}
              
              var meses = [];
              
              for(var i = 0; i<data.length;i++){
                
                
                  meses.push(datasMeses[i][1]);
              	
              }
              
              var dataHoje = new Date();
              
              
              for(var i = 0; i< data.length;i++){
              
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
















