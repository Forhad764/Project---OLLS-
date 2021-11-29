<!DOCTYPE html>
<html>
  <head>
    <title>OLLS | Land Map</title>
    <script
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD14m0YIXObRpi1swiCu5W1WbwSdndtEdM&callback=initMap&libraries=&v=weekly"
      defer
    ></script>
    <style type="text/css">
      /* Set the size of the div element that contains the map */
      #map {
        height: 600px;
        /* The height is 400 pixels */
        width: 100%;
        /* The width is the width of the web page */
      }
    </style>
    <script>
      // Initialize and add the map
      function initMap() {
        // The location of Uluru
        const uluru = { lat: {{map_latitude}}, lng: {{map_longitude}} };
        // The map, centered at Uluru
        const map = new google.maps.Map(document.getElementById("map"), {
          zoom: 8,
          center: uluru,
        });
        // The marker, positioned at Uluru
        const marker = new google.maps.Marker({
          position: uluru,
          map: map,
        });
      }
    </script>
  </head>
  <body>
    <h3>Provided land location </h3>
    <h3> <a href=Projects >Go back </a> </h3>
    <!--The div element for the map -->
    <div id="map"></div>
  </body>
</html>