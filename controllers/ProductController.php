<?php

$conn = new PDO('mysql:host=localhost;dbname=bookstore', 'root', '');


function getAllProduct()
{
    global $conn;
    //Tạo Prepared Statement
    $stmt = $conn->prepare('SELECT * from books');

    //Thiết lập kiểu dữ liệu trả về
    $stmt->setFetchMode(PDO::FETCH_OBJ);

    //Gán giá trị và thực thi
    $stmt->execute();
    return $stmt->fetchAll();
}

function getDetailsProduct($id_product)
{
}