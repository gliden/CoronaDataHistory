<?php
    require_once('landkreis.php');

    
    $user = 'corona';
    $pass = 'corona';
    $dbh = new PDO('mysql:host=localhost;dbname=corona', $user, $pass, array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8") );
    
    $sth = $dbh->prepare("Select ObjectId, Bezeichnung, Wert, Datum from landkreise where ObjectId in (".getallheaders()['objectIds'].") order by ObjectId, Datum");
    // $sth->bindParam(':ObjectId', getallheaders()['objectIds'], PDO::PARAM_INT);
    $sth->execute();
    $rows = $sth->fetchAll();

    $data = [];
    $landkreis = null;
    foreach($rows as $row) {
        if (($landkreis == null) || ($landkreis->objectId != $row['ObjectId'])) {
            $landkreis = new Landkreis($row['ObjectId']);
            $landkreis -> label = $row['Bezeichnung'];
            $data[] = $landkreis;
        }
        $landkreis->data[] = new InzidenzValue($row['Datum'], $row['Wert']);
    }

    echo json_encode($data);
    