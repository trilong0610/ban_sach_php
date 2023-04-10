<?php
$conn = new PDO('mysql:host=localhost;dbname=bookstore', 'root', '');

function getAllCategory()
{
    global $conn;
    //Tạo Prepared Statement
    $stmt = $conn->prepare('SELECT * from categories');

    //Thiết lập kiểu dữ liệu trả về
    $stmt->setFetchMode(PDO::FETCH_OBJ);

    //Gán giá trị và thực thi
    $stmt->execute();
    return $stmt->fetchAll();
}

function getProductOfCategory($id_product)
{
    global $conn;
    //Tạo Prepared Statement
    $stmt = $conn->prepare("SELECT * FROM `books` WHERE category_id = $id_product;");

    //Thiết lập kiểu dữ liệu trả về
    $stmt->setFetchMode(PDO::FETCH_OBJ);

    //Gán giá trị và thực thi
    $stmt->execute();
    return $stmt->fetchAll();
}

function addCategory($category_name)
{
    global $conn;
    //Tạo Prepared Statement
    $stmt = $conn->prepare("INSERT INTO `categories`(`category_name`) VALUES (:category_name)");
    $stmt->bindParam(':category_name', $category_name);
    $category_name = $category_name;
    //Gán giá trị và thực thi
    return $stmt->execute();
}

function deleteCategory($id)
{
    global $conn;
    //Tạo Prepared Statement
    $stmt = $conn->prepare("DELETE FROM `categories` WHERE `id` = :id");
    $stmt->bindParam(':id', $id);
    //Gán giá trị và thực thi
    return $stmt->execute();
}