<?php

    header("Access-Control-Allow-Origin: *");
    header("Access-Control-Allow-Headers: access");
    header("Access-Control-Allow-Methods: POST");
    header("Access-Control-Allow-Credentials: true");
    header('Content-Type: application/json');

    include_once '../config/dbConnection.php';
    include_once '../models/order.php';

    $paymentGate = 'https://ya.ru';

	$database = new Database();
	$db = $database->getConnection();

	$order = new Order($db);

    $idOrder = json_decode(file_get_contents("php://input"));

    $ch = curl_init();

    curl_setopt($ch, CURLOPT_URL, $paymentGate);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    curl_setopt($ch, CURLOPT_HEADER, 0);

    $html = curl_exec($ch);
    $info = curl_getinfo($ch);

    if($info['http_code'] === 200) {
        $order->updateOrderStatus($idOrder);
        $order->getOrderStatus($idOrder);

        http_response_code(200);
        echo json_encode(array("code" => $info['http_code'], "status" => $order->status));
    } else {
        http_response_code(404);
        echo json_encode(array("message" => "Не удалось оплатить заказ"));
    }

    curl_close($ch);

?>
