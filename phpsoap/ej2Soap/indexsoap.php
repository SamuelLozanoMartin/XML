<?php

include('Library.php');

$options = array('uri' => 'http://localhost/CURSO-PHP/XML/phpsoap/ej2Soap');
$server = new SoapServer(NULL, $options);
$server->setClass('Library');

$server->handle();
