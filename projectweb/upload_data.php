<?php

require ('connect.php');

if(isset($_POST['buttonImport'])){
    copy($_FILES['jsonFile']['tmp_name'], 'jsonFiles/'.$_FILES['jsonFile']['name']);
    $json = file_get_contents('jsonFiles/'.$_FILES['jsonFile']['name']);
    $pois = json_decode($json, true);
    //print_r($pois);

    $stmt = $db->prepare('INSERT INTO pois(id,name,address,rating,rating_n,latitude,longitude) VALUES (?,?,?,?,?,?,?)');
    $stmt->bind_param('sssssss', $id,$name,$address,$rating,$rating_n,$latitude,$longitude); 
    
    foreach($pois as $poi){ 
        $id = $poi["id"];
        $name = $poi["name"];
        $address = $poi["address"];
        $rating = $poi["rating"];
        $rating_n = $poi["rating_n"];
        $latitude = $poi["coordinates"]["lat"];
        $longitude = $poi["coordinates"]["lng"];
        $stmt->execute();
    }
}
?>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <title>Import JSON File</title>
    </head>
    <body>
        <form method="POST" enctype="multipart/form-data">
            JSON File <input type = "file" name = "jsonFile">
            <br>
                <input type="submit" value="Import" name="buttonImport">
        </form>
    </body>

</html>