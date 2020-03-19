// address all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


// INICIA MAPA CON LAT Y LONG //
function my_map_add() {
var myMapCenter = new google.maps.LatLng(28.5383866, 77.34916609);
var myMapProp = {center:myMapCenter, zoom:12, scrollwheel:false, draggable:false, mapTypeId:google.maps.MapTypeId.ROADMAP};
var map = new google.maps.Map(document.getElementById("my_map_add"),myMapProp);
var marker = new google.maps.Marker({position:myMapCenter});
marker.setMap(map);
}
