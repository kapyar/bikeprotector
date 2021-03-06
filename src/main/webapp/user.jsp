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
    <link rel="stylesheet" href="css/bootstrap.css">


    <script
            src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDY0kkJiTPVd2U7aTOAwhc9ySH6oHxOIYM&sensor=false">
    </script>

    <script>
        var myCenter = new google.maps.LatLng(50.4650932,30.5205125);

        function initialize() {
            var mapProp = {
                center: myCenter,
                zoom: 18,
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
<div class="left-nav-my">
    <a href="/">
        <div id="logo">
            Protect Your Bike
        </div>
    </a>

    <div id="stolen">Stolen</div>
    <div id="find">Find</div>
    <div id="setting">Setting</div>
    <div id="trips">Trips</div>
    <div class="inside-my">
        <ul>
            <a href="#" onclick="moveOffAllFind(); $('#find').slideToggle(500);"><span
                    class="glyphicon glyphicon-search"></span>

                <p>Find my bike</p></a>
            <a href="#" onclick="moveOffAllStolen(); $('#stolen').slideToggle(500);"><span
                    class="glyphicon glyphicon-asterisk"></span>

                <p>Turn on stolen mode</p></a>

            <a href="#" onclick="moveOffAllSetting(); $('#setting').slideToggle(500);"><span
                    class="glyphicon glyphicon-cog"></span>

                <p>Device setting</p></a>

            <a href="#" onclick="moveOffAllTrips(); $('#trips').slideToggle(500);"><span
                    class="glyphicon glyphicon-road"></span>

                <p>My trips</p></a>
            <a href="/"><span
                    class="glyphicon glyphicon-arrow-left"></span>

                <p>Go back to main</p></a>
        </ul>
    </div>

</div>
<div id="googleMap">

</div>

<script type="text/javascript" src="js/jquery-1.10.2.js"></script>
<script type="text/javascript">


    function moveOffAllFind() {
        $(" #stolen, #setting, #trips ").slideUp(1);
    }

    function moveOffAllStolen() {
        $(" #find, #setting, #trips ").slideUp(1);
    }

    function moveOffAllSetting() {
        $(" #find, #stolen, #trips ").slideUp(1);
    }
    function moveOffAllTrips() {
        $(" #find, #stolen, #setting ").slideUp(1);
    }

</script>


</body>
</html>