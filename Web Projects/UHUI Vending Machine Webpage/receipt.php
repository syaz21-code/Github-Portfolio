<?php
    include_once('connect.php');
    $latestSql = "SELECT * FROM orders ORDER BY o_id DESC LIMIT 1";
    $latestSqlResult = mysqli_query($con, $latestSql);
    $latestId = mysqli_fetch_array($latestSqlResult);

    $sql = "SELECT * FROM order_item WHERE o_id = $latestId[o_id]";
    $result = mysqli_query($con, $sql);
    echo'
<html>
    <link rel="stylesheet" href="receipt.css">
    <body>
        <div class="receipt">
            <form action="">
                <img src="uhuiLogo.png" alt="Uhui Logo" width="250px" height="150px">
                <div class="container">
                    <table>
                        <div class="level1">
                            <h3 id="orderDate">02.11.2023</h3>
                            <h3 id="orderNo">Receipt No:<br>#'.$latestId[0].'</h3>
                        </div>
                    </table>
                    
                    <hr width="70%">

                    <div class="level2">
                        <table>
                            <tr>
                                <th style="padding-left: 300px;">DESCRIPTION</th>
                                <th>UNIT PRICE<br>(RM)</th>
                                <th>QUANTITY</th>
                                <th>TOTAL<br>(RM)</th>
                            </tr>
                        </table>
                    </div>

                    <hr width="70%">
    ';
    $count = 1;
    while($order_item = mysqli_fetch_array($result)){
        echo'
                    <div class="level3">
                        <table class="data-table">
                            <tr>
                                <td>'.$order_item["oi_name"].'</td>
                                <td><span id = "price'.$count.'">'.$order_item["oi_price"].'</span></td>
                                <td><span id = "quantity'.$count.'">'.$order_item["oi_quantity"].'</span></td>
                                <td><span id = "subtotal'.$count.'">0.00</span></td>
                            </tr>
                        </table>
                    </div>
        ';
        $count++;
    }

                echo'
                    <hr width="70%">

                    <div class="level4">
                        <table class="data-table">
                           <tr>
                                <th>TOTAL</th>
                                <th>RM <span id="totalcost">0.00</span></th>
                            </tr> 
                        </table>
                    </div>

                    <hr width="70%">

                    <div class="level5">
                        <table class="data-table">
                            <tr>
                                <th>Item count&nbsp;&nbsp;: <span id="itemCount">0</span></th>
                            </tr>
                        </table>
                    </div>

                    <div class="message">
                        <h5 style="letter-spacing: 2px;">THANK YOU FOR PURCHASING.</h5>
                        <p style="margin-top: -12px;">UHUI Enterprise,<br>Universiti Teknologi PETRONAS.</p>
                    </div>

                </div>
            </form>
        </div>
    </body>
    
</html>
';
?>

<script>
window.onload = function() {
    const orderDate = document.getElementById('orderDate');
    const date = new Date();

    // Get year, month, and day
    const year = date.getFullYear();
    const month = String(date.getMonth() + 1).padStart(2, '0'); // Months are zero-based
    const day = String(date.getDate()).padStart(2, '0');

    // Format: year-month-day
    const formattedDate = `${year}-${month}-${day}`;
    orderDate.textContent = formattedDate;
    const totalCost = document.getElementById('totalcost');
    let totalcost = 0;
    const totalQuantity = document.getElementById('itemCount');
    let itemCount = 0;

    <?php
        include_once('connect.php');
        $latestSql = "SELECT * FROM orders ORDER BY o_id DESC LIMIT 1";
        $latestSqlResult = mysqli_query($con, $latestSql);
        $latestId = mysqli_fetch_array($latestSqlResult);

        $conditionSql = "SELECT COUNT(*) FROM order_item WHERE o_id = $latestId[o_id]";
        $conditionSqlResult = mysqli_query($con, $conditionSql);
        $condition = mysqli_fetch_array($conditionSqlResult);

        for ($i = 1; $i <= $condition[0]; $i++) {
            echo '
            const price'.$i.' = parseFloat(document.getElementById("price'.$i.'").textContent);
            const quantity'.$i.' = parseFloat(document.getElementById("quantity'.$i.'").textContent);
            const subtotal'.$i.' = document.getElementById("subtotal'.$i.'");

            let total'.$i.' = 0;

            total'.$i.' = price'.$i.' * quantity'.$i.';

            totalcost += total'.$i.';
            itemCount += quantity'.$i.';

            subtotal'.$i.'.textContent = total'.$i.'.toFixed(2);
            ';
        }
    ?>
    totalCost.textContent = totalcost.toFixed(2);
    totalQuantity.textContent = itemCount;
}
</script>