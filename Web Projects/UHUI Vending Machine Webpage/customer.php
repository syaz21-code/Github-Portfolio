<!DOCTYPE html>
<html>
    <link rel="stylesheet" href="customer.css">
    <title>Uhui vending machine</title>
    <link rel="icon" type="image/x-icon" href="uhuiLogo.png">
    <body>
        <head >
            <h1 style="font-family:'Calibri'; color:rebeccapurple; text-align: center;" id="top"><u>Uhui Vending Machine Menu</u></h1> 
            <br><br>
        </head>       
            <div class="stickyNav">
                <img src="uhuiLogo.png" alt="Uhui Logo" width="200px" height="120px">
                <span id="totalQuantity" style="color:#fff; font-size:1px;">0</span>
                <span id="totalCost" style="color:#fff; font-size:1px;">0</span>
                <p class="checkout" style="margin-left:-10px; background-color: white; color: black;">Total price: RM<span id="totalPrice" style="background-color: white;">0.00</span></p><br> 
                <button class="checkout" title="Click here to checkout" id="checkoutButton">CHECKOUT</button>       
            </div>

            <div class="item_container">    
            <?php
                include('connect.php');
                $sql = "SELECT * FROM item";
                $result = mysqli_query($con,$sql);
                $count = 1;
                echo 
                '<script>
                class Items {
                    name = " ";
                    price = 0;
                    quantity = 0;
                
                    getName() {
                        return this.name;
                    }
                
                    getPrice() {
                        return this.price;
                    }
                
                    getQuantity() {
                        return this.quantity;
                    }
                }

                var itemArray = [];
                </script>';

                while ($item = mysqli_fetch_array($result)){
                    echo '
                    <div class="item_details">
                        <img class="image; size" src="img/'.$item["i_image"].'" alt="air">
                        <div class="container">
                            <p style="margin-right: 20px;"><b>'.$item["i_name"].'</b><br>
                            <b>Price: RM'.$item["i_price"].'</b></p>
                        </div>
                        <div class="container">
                            <button id="decrement'.$count.'">-</button>
                            <p style="margin-left: 15px; margin-right: 15px;">Quantity: <span id="count'.$count.'">0</span></p>
                            <button id="increment'.$count.'">+</button>
                        </div>
                    </div>
                    
                    <script>
                    const newItem'.$count.' = new Items();
                    newItem'.$count.'.name = "'.$item["i_name"].'";
                    newItem'.$count.'.price = '.$item["i_price"].';
                    newItem'.$count.'.quantity = 0;
                    itemArray.push(newItem'.$count.');
                    </script>
                    ';
                    $count++;
                }
            ?>
            </div>
        
        <script>
            <?php
                include("connect.php");
                $sql = "SELECT COUNT(*) FROM item;";
                $result = mysqli_query($con, $sql);
                $counter = mysqli_fetch_array($result)[0];
                for ($i = 1; $i <= $counter; $i++){
                    echo '
                    const count'.$i.'Element = document.getElementById("count'.$i.'");
                    const incrementButton'.$i.' = document.getElementById("increment'.$i.'");
                    const decrementButton'.$i.' = document.getElementById("decrement'.$i.'");
                    let count'.$i.' = 0;
                    ';
                }


            ?>
            const totalPriceElement = document.getElementById("totalPrice");
            const totalQuantityElement = document.getElementById("totalQuantity");
            const totalCostElement = document.getElementById("totalCost");
            var totalPrice = 0;
            var totalCost = 0;
            var totalQuantity = 0;

            function updateCount(){
                <?php
                include("connect.php");
                $sql = "SELECT COUNT(*) FROM item;";
                $result = mysqli_query($con, $sql);
                $counter = mysqli_fetch_array($result)[0];
                for ($i = 1; $i <= $counter; $i++){
                    echo '
                        count'.$i.'Element.textContent = count'.$i.';
                    ';
                }
                ?>
                totalPriceElement.textContent = Math.abs(totalPrice).toFixed(2);
                totalQuantityElement.textContent = totalQuantity;
                totalCostElement.textContent = totalCost;
            }
            
            <?php 
                include_once("connect.php");
                $sql = "SELECT * FROM item;";
                $result = mysqli_query($con, $sql);
                $count = 1;
                $totalCost = 0;
                while ($i = mysqli_fetch_array($result)){
                    echo ' 

                    incrementButton'.$count.'.addEventListener("click", () => {
                        count'.$count.'++;
                        totalPrice += '.$i["i_price"].';
                        totalCost += '.$i["i_cost"].';
                        totalQuantity += 1;
                        updateCount();
                        itemArray['.$count.'-1].quantity++;
                    });
                    decrementButton'.$count.'.addEventListener("click", () => {
                        if (count'.$count.' > 0) {
                            count'.$count.'--;
                            totalPrice -= '.$i["i_price"].';
                            totalCost -= '.$i["i_cost"].';
                            totalQuantity -= 1;
                            itemArray['.$count.'-1].quantity--;
                        }
                        updateCount();
                    });
                    ';
                    $count++;
                }  
            ?>
        </script>

        <script>
            document.getElementById("checkoutButton").addEventListener("click", function () {
                // Send Order data to server for insertion
                var xhr = new XMLHttpRequest();
                xhr.open("POST", "getData.php", true);
                xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

                var totalCost = encodeURIComponent(document.getElementById("totalCost").textContent);
                var totalPrice = encodeURIComponent(document.getElementById("totalPrice").textContent);
                var totalQuantity = encodeURIComponent(document.getElementById("totalQuantity").textContent);

                var params = "totalPrice=" + totalPrice + "&totalQuantity=" + totalQuantity + "&totalCost=" + totalCost;

                xhr.onreadystatechange = function() {
                    if (xhr.readyState == 4 && xhr.status == 200) {
                        var response = xhr.responseText;
                        if (response === "Success") {
                            // Success handling
                            alert('Successful!');
                            // Continue with the rest of your code
                        } else {
                            // Failure handling
                            alert('Failed: ' + response);
                        }
                    }
                };

                xhr.send(params);

                // Send Ordered Item data to server for insertion
                var jsonData = JSON.stringify(itemArray);

                // Create an XMLHttpRequest object
                var orderItem = new XMLHttpRequest();

                // Set up the request
                orderItem.open("POST", "getData.php", true);
                orderItem.setRequestHeader("Content-Type", "application/json");

                // Set up a callback function to handle the response
                orderItem.onreadystatechange = function () {
                    if (orderItem.readyState == 4 && orderItem.status == 200) {
                        console.log(orderItem.responseText); // Display the response from the server
                    }
                };

                // Send the JSON data to the server
                orderItem.send(jsonData);
                
                // Your existing code to open a new window
                const screenWidth = window.screen.width;
                const screenHeight = window.screen.height;
                const popupWidth = screenWidth;
                const popupHeight = screenHeight;
                const left = (screenWidth - popupWidth) / 2;
                const top = (screenHeight - popupHeight) / 2;
                window.open("receipt.php", "PopupWindow", `width=${popupWidth}, height=${popupHeight}, left=${left}, top=${top}`);

                
            });
        </script>



    </body>
</html>