<?php

class Order
{
    private $con;
    private $table_name = "orders";

    public $id;
    public $status;
    public $idUser;

    public function __construct($db) {
        $this->con = $db;
    }

    function createOrder() {
        $query = "INSERT INTO orders(idUser, status) VALUES (1,'Новый')";

        $stmt = $this->con->prepare( $query );
        $stmt->execute();
        return $this->con->lastInsertId();
    }

    function setGoodToOrder($idGood, $idOrder) {
        $query = "INSERT INTO goods_in_order (good_id, order_id) VALUES (".$idGood.", ".$idOrder.")";

        $stmt = $this->con->prepare( $query );
        $stmt->execute();
    }
}