<?php
    header("Access-Control-Allow-Origin: *");
    header("Content-Type: application/json; charset=UTF-8");
    header("Access-Control-Allow-Methods: POST");
    header("Access-Control-Max-Age: 3600");
    header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

    include_once '../config/dbConnection.php';
    include_once '../models/order.php';

    $database = new Database();
    $db = $database->getConnection();

    $order = new Order($db);

    $data = json_decode(file_get_contents("php://input"));

    $idOrder = $order->createOrder();

    if($idOrder > 0) {
        foreach ($data as $item) {
            $idItem = $item->id;
            $order->setGoodToOrder($idItem, $idOrder);
        }

        http_response_code(200);
        echo json_encode(array("idOrder" => $idOrder));
    } else {
        http_response_code(404);
        echo json_encode(array("message" => "Заказ не создан"));
    }

?>