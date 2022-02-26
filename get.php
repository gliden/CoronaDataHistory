<?php
    require_once('landkreis.php');

    
    $user = 'corona';
    $pass = 'corona';
    $dbh = new PDO('mysql:host=localhost;dbname=corona', $user, $pass, array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8") );
    
	if (isset($_GET['today']) && ($_GET['today']=='1')) {
		$data = [];
		foreach(explode(',', getallheaders()['objectIds']) as $id) {
			$sth = $dbh->prepare("SELECT * FROM `landkreis_werte` w
								 left join landkreis l on (l.objectId=w.objectId)
								 WHERE w.objectId = :id order by datum DESC;");
			$sth->bindParam(':id', $id);
			$sth->execute();
			$rows = $sth->fetchObject();
			
			$data[] = $rows;
		}
	} else {
		$sql = "SELECT l.objectId, l.bezeichnung, l.farbe, w.wert, w.datum FROM `landkreis` l 
			left join `landkreis_werte` w on (l.objectId=w.objectId)
			where l.objectId in (".getallheaders()['objectIds'].")";
			
		if (isset($_GET['days'])) {
			$sql = $sql." and w.datum >= DATE_SUB(CURDATE(), INTERVAL ".$_GET['days']." Day)";
		}
		
		$sql = $sql." order by l.objectId, w.datum";
		
		$sth = $dbh->prepare($sql);
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
	}
	
	header('Content-Type: application/json');
    echo json_encode($data);
    