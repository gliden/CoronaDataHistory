<?php
    class Landkreis {
        public $objectId;
        public $label;
        public $data=[];
        public $fill = false;
        public $backgroundColor;

        public function __construct($objectId) {
            $this -> objectId = $objectId;
            $this -> backgroundColor = 'rgb(255, 99, 132)';
            $this -> borderColor = 'rgb(255, 99, 132)';
        }
    }

    class InzidenzValue {
        public $x;
        public $y;

        public function __construct($datum, $wert) {
            $d = DateTime::createFromFormat('Y-m-d', $datum);
            $this -> x = $d->format('d.m.Y');
            $this -> y = $wert;
        }
    }