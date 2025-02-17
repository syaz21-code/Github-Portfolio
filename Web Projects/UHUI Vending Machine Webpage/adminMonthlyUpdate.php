<?php
include('connect.php');

$monthSelected = isset($_POST["monthSelect"]) ? $_POST["monthSelect"] : null;
$sumQty = 0; $sumSale = 0; $sumCost = 0; $profit = 0;

// Check if $monthSelected is set before proceeding with calculations
if ($monthSelected !== null) {
    // Calculation untuk Total Item Sold
    $qtySql =  "SELECT o_quantity 
                FROM orders
                WHERE o_month = '$monthSelected'";
    $qtyResult = mysqli_query($con, $qtySql);

    while ($qty = mysqli_fetch_array($qtyResult)) {
        foreach ($qty as $value) {
            $sumQty += $value;
        }
    }

    // Calculation untuk Total Sales
    $saleSql = "SELECT o_totprice
                FROM orders
                WHERE o_month = '$monthSelected'";
    $saleResult = mysqli_query($con, $saleSql);

    while ($sale = mysqli_fetch_array($saleResult)) {
        foreach ($sale as $value) {
            $sumSale += $value;
        }
    }

    // Calculation untuk Total Cost
    $costSql = "SELECT o_totcost 
                FROM orders
                WHERE o_month = '$monthSelected'";
    $costResult = mysqli_query($con, $costSql);

    while ($cost = mysqli_fetch_array($costResult)) {
        foreach ($cost as $value) {
            $sumCost += $value;
        }
    }

    $sumQty /= 2; $sumCost /= 2; $sumSale /= 2;

    // Calculation untuk Profit of the month
    $profit = $sumSale - $sumCost;
}

// Generate the updated HTML for the report table
echo '
    <table class="fl-table">
        <thead>
            <tr>
                <th>Total Item Sold: </th>
                <td>'.$sumQty.'</td>
            </tr>
            <tr>
                <th>Total Sales: </th>
                <td>RM '.$sumSale.'</td>
            </tr>
            <tr>
                <th>Total Cost: </th>
                <td>RM '.$sumCost.'</td>
            </tr>
            <tr>
                <th>Profit: </th>
                <td>RM '.$profit.'</td>
            </tr>
        </thead>
    </table>
';
?>
