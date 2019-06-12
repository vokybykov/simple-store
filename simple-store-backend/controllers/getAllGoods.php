<?php

    header("Access-Control-Allow-Origin: *");
    header("Access-Control-Allow-Headers: access");
    header("Access-Control-Allow-Methods: GET");
    header("Access-Control-Allow-Credentials: true");
    header('Content-Type: application/json');

    include_once '../config/dbConnection.php';
    include_once '../models/good.php';

    $database = new Database();
    $db = $database->getConnection();

    $good = new Good($db);

    $stmt = $good->getAllGoods();
    $num = $stmt->rowCount();

    if($num > 0) {

        $goods_arr = array();
        $goods_arr["records"] = array();

        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            extract($row);

            $good_item = array(
                "id" => $id,
                "title" => $title,
                "description" => $description,
                "image" => $image,
                "price" => $price
            );
            array_push($goods_arr["records"], $good_item);
        }

        http_response_code(200);
        echo json_encode($goods_arr, JSON_UNESCAPED_UNICODE);

    } else {
        http_response_code(404);
        echo json_encode(array("message" => "Товары не найдены"));
    }
?>