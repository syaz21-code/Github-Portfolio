<?php
include_once('connect.php');

    // Insert to table Order
    if (isset($_POST['totalPrice']) && isset($_POST['totalQuantity']) && isset($_POST['totalCost'])){
        $totalPrice = $_POST["totalPrice"];
        $currentDate = date("Y-m-d");
        $currentMonth = date("m");
        $totalQuantity = $_POST["totalQuantity"];
        $totalCost = $_POST["totalCost"];

        $sql = "INSERT INTO `orders` VALUES ('','$currentDate', '$currentMonth','$totalPrice', '$totalCost', '$totalQuantity')";

        $result = mysqli_query($con, $sql);

        if ($result) {
            echo "Success";
        } else {
            echo "Failed: ".mysqli_error($con);
        }
    }

    // Insert to table Order Item
    $jsonData = file_get_contents("php://input");

    // Decode the JSON data
    $itemArray = json_decode($jsonData);

    // Check if the array is not null and has elements
    $latestOrder = "SELECT o_id FROM orders ORDER BY o_id DESC LIMIT 1";
    $latestOrderResult = mysqli_query($con, $latestOrder);
    $orderId = (int)mysqli_fetch_array($latestOrderResult)[0];
    $orderId += 1;
    foreach ($itemArray as $item) {
        if ($item->quantity >= 1 ){
            $orderSql = "INSERT INTO `order_item` VALUES ('', '$item->name', $item->price, $item->quantity, $orderId)";

            $orderSqlResult = mysqli_query($con, $orderSql);

            if ($orderSqlResult) {
                echo "Success";
            }
        }
    }

    /* Update the newest added order_item data based on the latest o_id
    $updateOrderIdSql = "UPDATE `order_item` SET o_id = o_id + 1 WHERE o_id = $orderId";
    $updateOrderIdResult = mysqli_query($con, $updateOrderIdSql);

    if ($updateOrderIdResult) {
        echo "Updated successfully";
    } else {
        echo "Failed to update: " . mysqli_error($con);
    } */


?>
