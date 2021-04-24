<?php
    require_once('landkreis.php');

    
    $user = 'corona';
    $pass = 'corona';
    $dbh = new PDO('mysql:host=localhost;dbname=corona', $user, $pass, array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8") );
    
    $sth = $dbh->prepare("SELECT l.objectId, l.bezeichnung, l.farbe, w.wert, w.datum FROM `landkreis` l 
        left join `landkreis_werte` w on (l.objectId=w.objectId) 
        where l.objectId in (".getallheaders()['objectIds'].")
        order by l.objectId, w.datum");
    $sth->execute();
    $rows = $sth->fetchAll();

    $data = [];
    $landkreis = null;
    foreach($rows as $row) {
        if (($landkreis == null) || ($landkreis->objectId != $row['objectId'])) {
            $landkreis = new Landkreis($row['objectId']);
            $landkreis -> label = $row['bezeichnung'];
            $landkreis -> borderColor = $row['farbe'];
            $data[] = $landkreis;
        }
        $landkreis->data[] = new InzidenzValue($row['datum'], $row['wert']);
    }

    echo json_encode($data);
    