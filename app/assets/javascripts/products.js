
    /*FILTRO DE PRODUCTOS*/

    
    var searchRequest = null;
    
    $(function () {
        var minlength = 3;
        
        $("[name=q]").on('keyup',function () {
            var that = this,
            value = $(this).val();
            
            if (value.length >= minlength ) {
                if (searchRequest != null) 
                searchRequest.abort();
                searchRequest = $.ajax({
                    type: "get",
                    url: "/products",
                    data: { q: $(this).val() },
                    dataType: "script",
                    success: function(msg){
                        //we need to check if the value is the same
                        if (value==$(that).val()) {
                            //Receiving the result of search here
                        }
                    }
                });
            }
        });
    });
    
