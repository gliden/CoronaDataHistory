<?php
    function GetDateFromFeature($feature) {
        $dateStr = $feature -> attributes -> last_update;
        $date = substr($dateStr, 0,10);
        $time = substr($dateStr, 12,5);
        $date = DateTime::createFromFormat('d.m.Y H:i', $date." ".$time);
        if ($date === false) {
            return null;
        } else {
            return $date;
        }
    }

    function GetMaxDateFromObjectId($maxDates, $objectId) {
        foreach($maxDates as $objectDate) {
            if ($objectDate['objectId'] == $objectId) {
                return new DateTime($objectDate['datum']);
            }
        }
        return null;
    }
    $user = 'corona';
    $pass = 'corona';
    $dbh = new PDO('mysql:host=localhost;dbname=corona', $user, $pass, array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8") );
    
    $data = file_get_contents('https://services7.arcgis.com/mOBPykOjAyBO2ZKk/arcgis/rest/services/RKI_Landkreisdaten/FeatureServer/0/query?where=1%3D1&outFields=*&returnGeometry=false&outSR=4326&f=json');
    $jsonData = json_decode($data);

    $sql = "SELECT objectId, Max(Datum) as datum FROM `landkreis_werte` GROUP by objectId";
    $sth = $dbh->prepare($sql);
    $sth->execute();
    $maxDates = $sth->fetchAll(PDO::FETCH_ASSOC);

    try {
        $dbh->beginTransaction();
        foreach($jsonData->features as $feature) {
            $datum = GetDateFromFeature($feature);
            if ($datum != null) {
                $dateStr = $datum->format('Y-m-d');
            } else {
                $dateStr = 0;
            }
            $maxDate = GetMaxDateFromObjectId($maxDates, $feature -> attributes -> OBJECTID);
            
            $sth = $dbh->prepare("INSERT IGNORE INTO `landkreis`(`objectId`, `bezeichnung`) VALUES (:objectId, :bezeichnung)");
            $sth->bindParam(':objectId', $feature -> attributes -> OBJECTID, PDO::PARAM_INT);
            $sth->bindParam(':bezeichnung', $feature -> attributes -> county, PDO::PARAM_STR, 100);
            $sth->execute();
            
            if ((sizeOf($maxDates)==0) || ($maxDate < $datum)) {
                $sth = $dbh->prepare("INSERT INTO `landkreis_werte`(`objectId`, `datum`, `wert`) VALUES (:ObjectId, :Datum, :Wert)");
                /* $sth = $dbh->prepare('Insert Into landkreis_werte 
                    (ObjectId, Wert, Datum) 
                    VALUES (:ObjectId, :Bezeichnung, :Wert, :Datum)'); */
                $sth->bindParam(':ObjectId', $feature -> attributes -> OBJECTID, PDO::PARAM_INT);
                $sth->bindParam(':Wert', $feature -> attributes -> cases7_per_100k, PDO::PARAM_STR);
                $sth->bindParam(':Datum', $dateStr, PDO::PARAM_STR, 100);
                $sth->execute();
            }
        }
        $dbh->commit();
    } catch(PDOException $e) {
        $data->rollBack();
    }

