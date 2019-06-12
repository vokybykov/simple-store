<?php
    header("Access-Control-Allow-Origin: *");
    header("Access-Control-Allow-Headers: access");
    header("Access-Control-Allow-Methods: GET");
    header("Access-Control-Allow-Credentials: true");
    header('Content-Type: application/json');

    include_once '../config/dbConnection.php';
    include_once '../models/order.php';

    $database = new Database();
    $db = $database->getConnection();

    $order = new Order($db);

    $idOrder = isset($_GET['id']) ? $_GET['id'] : die();

    $order->getOrderStatus($idOrder);

    if($order->status != null) {
        $status = $order->status;

        http_response_code(200);
        echo json_encode($status);
    } else {

        http_response_code(404);
        echo json_encode(array("message" => "Заказа не существует"));
    }
?>