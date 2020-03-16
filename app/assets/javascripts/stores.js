var initializeAutocomplete;
$(document).on('ready turbolinks:load', function() {
    initializeAutocomplete = function(){
    
    $("#lista_address").each(function(index) {
        var input = $(this).find(".autocomplete")[0]
        debugger
        var autocomplete = new google.maps.places.Autocomplete(input, {});
        google.maps.event.addListener(autocomplete, 'place_changed', function() {
            var place = autocomplete.getPlace();
            var lat = place.geometry.location.lat();
            var lng = place.geometry.location.lng();
            // to set city name, using the locality param
            document.getElementById("latitude").value = lat;
            document.getElementById("longitude").value = lng;
        })
    } )
    
}
});