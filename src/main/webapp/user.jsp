<%--
  Created by IntelliJ IDEA.
  User: yaroslav
  Date: 6/16/2014
  Time: 6:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Protect Your Bike | Admin</title>
    <link rel="stylesheet" href="css/user.css">


    <script
            src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDY0kkJiTPVd2U7aTOAwhc9ySH6oHxOIYM&sensor=false">
    </script>

    <script>
        var myCenter = new google.maps.LatLng(51.508742, 30.120850);

        function initialize() {
            var mapProp = {
                center: myCenter,
                zoom: 12,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };

            var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);

            var marker = new google.maps.Marker({
                position: myCenter
            });

            marker.setMap(map);
        }

        google.maps.event.addDomListener(window, 'load', initialize);
    </script>

</head>
<body>
<div class="left-nav">
    <a href="/">
        <div id="logo">
            Protect Your Bike
        </div>
    </a>

    <div class="inside">
        <ul>
            <a href="#">Find my bike</a>
            <a href="#">Turn on stolen mode</a>
            <a href="#">Device setting</a>
            <a href="#">My trips</a>
            <a href="/">Go back to main</a>


        </ul>
    </div>

</div>
<div id="googleMap">

</div>

</body>
</html>
