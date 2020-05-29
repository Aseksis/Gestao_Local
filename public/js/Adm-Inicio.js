$(document).ready(function($) {

    
    $.getJSON('/api/pessoas', {
    }, function(resp) {
        
         if(resp.total<10){
      resp.total = '0'+resp.total;
      }
      
        console.log(resp);
        $("#Qpessoas").text(resp.total);
        
    });
    
    $.getJSON('/api/familias', {
    }, function(resp) {
      
               if(resp.total<10){
      resp.total = '0'+resp.total;
      }
        
        console.log(resp);
        $("#Qfamilias").text(resp.total);
        
    });

    $.getJSON('/api/regionais', {
    }, function(resp) {
      
           if(resp.total<10){
      resp.total = '0'+resp.total;
      }
        
        console.log(resp);
        $("#Qregionais").text(resp.total);
        
    });

    $.getJSON('/api/congregacoes', {
    }, function(resp) {
      
           if(resp.total<10){
      resp.total = '0'+resp.total;
      }
        
        console.log(resp);
        $("#Qcongregacoes").text(resp.total);
        
    });
  
   $.getJSON('/api/users', {
    }, function(resp) {
     
          if(resp.total<10){
      resp.total = '0'+resp.total;
      }
        
        console.log(resp);
        $("#Qusuarios").text(resp.total);
        
    });


});




