$(document).on('ready turbolinks:load', function() {

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


  
  var $carousel = $('.PriceBlocks-slider').flickity({
    cellSelector: '.PriceBlock-container',
    initialIndex: 3
  });
  
  var flkty = $carousel.data('flickity');
  
  $carousel.on('staticClick.flickity', function(event, pointer, cellElement, cellIndex) {
    if (typeof cellIndex == 'number') {
      $carousel.flickity('selectCell', cellIndex);
    }
  });
  
  $carousel.on('select.flickity', function() {
    flkty.getCellElements().forEach(function(cellElem) {
      cellElem.classList['remove']('is-next');
      cellElem.classList['remove']('is-previous');
    });
  
    var previousSlide = flkty.slides[flkty.selectedIndex - 1];
    var nextSlide = flkty.slides[flkty.selectedIndex + 1];
  
    nextSlide.getCellElements().forEach(function(cellElem) {
      cellElem.classList['add']('is-next');
    });
    previousSlide.getCellElements().forEach(function(cellElem) {
      cellElem.classList['add']('is-previous');
    });
  })
  
  function changeSlideClasses(slide, method, className) {
    slide.flickity('getCellElements').forEach(function(cellElem) {
      cellElem.classList[method](className);
    });
  }
    

})

