<?php
// Initialize the session
session_start();
 
// Check if the user is logged in, if not then redirect him to login page
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: login.php");
    exit;
}
?>
 
<!DOCTYPE html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>    
    <title>Welcome</title>
    
    <link rel="stylesheet" href="welcome.css">
    <style>
        body{ font: 14px sans-serif; text-align: center; }
    </style>
    
    <!-osm_maps->
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css" integrity="sha512-xodZBNTC5n17Xt2atTPuE1HxjVMSvLVW9ocqUKLsCC5CXdbqCmblAshOMAS6/keqq/sMZMZ19scR4PsZChSR7A==" crossorigin="" />
    <style>
        body { margin: 0px; padding: 20px; }
        #map{
            width: 100%;
            height: 80vh;
        }
    </style>

    <!-locate->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/leaflet.locatecontrol@0.76/dist/L.Control.Locate.min.css" />
    
</head>
<body>
    <h1 class="my-5">Hi, <b><?php echo htmlspecialchars($_SESSION["username"]); ?></b>.</h1>
    <div id = "map"> </div>

    <div class="form-group">
        <a class = "logout_button"  href = "logout.php">Logout</a>
        <a class = "profile_button" href = "profile.php">Profile</a>
    </div>

</body>
</html>

<!-leaflet.js->
<script src="https://unpkg.com/leaflet@1.7.1/dist/leaflet.js" integrity="sha512-XQoYMqMTK8LvdxXYG3nZ448hOEQiglfqkJs1NOQV44cWnUrBc8PkAOcXy20w0vlaXaVUearIOBhiXZ5V3ynxwA==" crossorigin=""></script>
<script src="https://cdn.jsdelivr.net/npm/leaflet.locatecontrol@0.76/dist/L.Control.Locate.min.js" charset="utf-8"></script>



<script>

    var map = L.map('map').setView([38.2466, 21.7346], 13);

    L.control.locate().addTo(map);

    //osm layer
    var osm = L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
    });

    osm.addTo(map);

    
    
</script>


