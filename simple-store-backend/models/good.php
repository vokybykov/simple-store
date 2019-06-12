<?php

class Good
{
    private $con;
    private $table_name = "goods";

    public $id;
    public $title;
    public $description;
    public $image;
    public $price;

    public function __construct($db) {
        $this->con = $db;
    }

    function getAllGoods() {
        $query = "SELECT
						p.id, p.title, p.description, p.image, p.price
					FROM
						" . $this->table_name . " p";

        $stmt = $this->con->prepare($query);
        $stmt->execute();

        return $stmt;
    }
}