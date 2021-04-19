<?php
    function GetDateFromFeature($feature) {
        $dateStr = $feature -> attributes -> last_update;
        $date = substr($dateStr, 0,10);
        $time = substr($dateStr, 12,5);
        $date = DateTime::createFromFormat('d.m.Y H:i', $date." ".$time);
        if ($date === false) {
            return 0;
        } else {
            return $date->format('Y-m-d H:i');
        }
    }

    $user = 'corona';
    $pass = 'corona';
    $dbh = new PDO('mysql:host=localhost;dbname=corona', $user, $pass, array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8") );
    
    $data = file_get_contents('https://services7.arcgis.com/mOBPykOjAyBO2ZKk/arcgis/rest/services/RKI_Landkreisdaten/FeatureServer/0/query?where=1%3D1&outFields=*&returnGeometry=false&outSR=4326&f=json');
    $jsonData = json_decode($data);

    foreach($jsonData->features as $feature) {
        $datum = GetDateFromFeature($feature);
        $sth = $dbh->prepare('Select count(*) as Anzahl from landkreise where ObjectId=:ObjectId
            and Datum=:Datum');
        $sth->bindParam(':ObjectId', $feature -> attributes -> OBJECTID, PDO::PARAM_INT);
        $sth->bindParam(':Datum', $datum, PDO::PARAM_STR, 100);
        $sth->execute();
        $rows = $sth->fetchAll();
        if ($rows[0][0]==0) {
            $sth = $dbh->prepare('Insert Into landkreise 
                (ObjectId, Bezeichnung, Wert, Datum) 
                VALUES (:ObjectId, :Bezeichnung, :Wert, :Datum)');
            $sth->bindParam(':ObjectId', $feature -> attributes -> OBJECTID, PDO::PARAM_INT);
            $sth->bindParam(':Bezeichnung', $feature -> attributes -> county, PDO::PARAM_STR, 100);
            $sth->bindParam(':Wert', $feature -> attributes -> cases7_per_100k, PDO::PARAM_STR);
            $sth->bindParam(':Datum', $datum, PDO::PARAM_STR, 100);
            $sth->execute();
        }
    }

