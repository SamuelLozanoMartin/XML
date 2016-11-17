<?php
$options = array('uri' => 'http://localhost/CURSO-PHP/XML/phpsoap/ej2Soap/',
    'trace' => 1,
    'location' => 'http://localhost/CURSO-PHP/XML/phpsoap/ej2Soap/indexsoap.php');

try{
$client = new SoapClient(NULL, $options);

    $response = $client->eightBall();
    echo $response;

} catch (SoapFault $e) {
    echo "ERROR: " . $e->getMessage();
}

