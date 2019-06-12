<?php
    header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset=UTF-8");
    header("Access-Control-Allow-Methods: POST");
    header("Access-Control-Max-Age: 3600");
    header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

    include_once '../config/dbConnection.php';

    $database = new Database();
    $db = $database->getConnection();

    $data = json_decode(file_get_contents("php://input"));

    $idGood = $data->idGood;
    $idUser = $data->idUser;

    http_response_code(200);
    echo json_encode(array("message" => "Товар успешно добавлен в корзину"));

?>