$(document).ready(function(){
    $('#getButton').click(function() {
      
        //fetch comments from server
        $.ajax({
            type: "GET",
            url: "/products",
            dataType: "script"
        });
        
    })



    $('[name=q]').on('keyup',function (){
        //console.log($(this).val())
        //$('h1')[0].innerHTML = $(this).val()
        if ($(this).val().length > 2){
            $.ajax({
                type: "get",
                url: "/products",
                data: { q: $(this).val() },
                dataType: "script"
            });
        }

        if ($(this).val().length == 0){
            $.ajax({
                type: "get",
                url: "/products",
                data: { q: $(this).val() },
                dataType: "script"
            });
        }
    })

})