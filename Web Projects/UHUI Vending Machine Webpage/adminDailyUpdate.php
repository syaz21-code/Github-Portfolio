<?php
include_once('connect.php');

$dateSelected = isset($_POST["dateSelect"]) ? $_POST["dateSelect"] : null;
$sumSale = 0.00;
$sumQty = 0.00;

// Check if $dateSelected is set before proceeding with calculations
if ($dateSelected !== null) {
    // Calculation for Total Item Sold
    $qtySql = "SELECT o_quantity FROM orders WHERE o_date = '$dateSelected'";
    $qtyResult = mysqli_query($con, $qtySql);

    $sumQty = 0;
    while ($qty = mysqli_fetch_array($qtyResult)) {
        foreach ($qty as $value) {
            $sumQty += $value;
        }
    }

    // Calculation for Total Sales
    $saleSql = "SELECT o_totprice FROM orders WHERE o_date = '$dateSelected'";
    $saleResult = mysqli_query($con, $saleSql);

    $sumSale = 0;
    while ($sale = mysqli_fetch_array($saleResult)) {
        foreach ($sale as $value) {
            $sumSale += $value;
        }
    }

    $sumQty /= 2;
    $sumSale /= 2;
}

echo '
<table class="fl-table">
    <thead>
        <tr>
            <th>Total Item Sold: </th>
            <td>' . $sumQty . '</td>
        </tr>
        <tr>
            <th>Total Sales: </th>
            <td>RM ' . $sumSale . '</td>
        </tr>
    </thead>
</table>';
?>
