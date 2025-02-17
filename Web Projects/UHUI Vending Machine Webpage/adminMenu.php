<html>
    <head>
        <link rel="stylesheet" href="menuStyle.css">
    </head>

    <body>
        <div class="img">
            <img src="uhuiLogo.png" alt="Uhui Logo" width="200px" height="120px">
        </div>
        <div class="container">
            <form method="post" action="adminMenu.php" enctype="multipart/form-data">
                <label for="name">Name:</label><br>
                <input type="text" id="name" name="name" required><br>

                <label for="quantity">Quantity:</label><br>
                <input type="text" id="quantity" name="quantity" required><br>

                <label for="price">Price:</label><br>
                <input type="text" id="price" name="price" required><br>

                <label for="price">Cost:</label><br>
                <input type="text" id="cost" name="cost" required><br>

                <label>Image:</label><br>
                <label for="images" class="drop-container" id="dropcontainer">
                    <span class="drop-title">Drop files here</span>
                    or
                    <input type="file" id="image" name="image" accept="image/*" required>
                </label>
                <br>
                <button class="submitButton" type="submit">Submit</button>

                <?php
                include_once('connect.php');

                if (isset($_POST['name']) && isset($_FILES['image'])) {
                    $name = $_POST["name"];
                    $quantity = $_POST["quantity"];
                    $price = $_POST["price"];
                    $cost = $_POST["cost"];

                    $image = $_FILES['image']['name'];

                    $targetDirectory = "img/";
                    $targetFile = $targetDirectory . $image;
                    
                    if (move_uploaded_file($_FILES['image']['tmp_name'], $targetFile)) {
                        $sql = "INSERT INTO item VALUES ('', '$quantity', '$name', '$price', '$cost','$image')";
                    
                        $result = mysqli_query($con, $sql);
                
                        if ($result) {
                            echo "<script>alert('Item added!')</script>";
                            header("Location: adminMain.html"); 
                            exit;
                        } else {
                            echo "<script>alert('Process failed!')</script>";
                            header("Location: adminMain.html");
                        }
                    }
                }
                $name = '';
                $quantity = '';
                $price = '';
                echo '
                <script>
                        const nameText = document.getElementById("name");
                        const quantityText = document.getElementById("quantity");
                        const priceText = document.getElementById("price");
                        nameText.textContent = "";
                        quantityText.textContent = "";
                        priceText.textContent = "";
                </script>
                ';
            ?>
            </form>

            <table class="fl-table">
                <thead>
                    <tr>
                        <th>NAME</th>
                        <th>QUANTITY</th>
                        <th>PRICE (RM)</th>
                        <th>COST (RM)</th>
                    </tr>
                </thead>
                
                <?php
                    include('connect.php');
                    $sql = 'SELECT * FROM item';
                    $result = mysqli_query($con, $sql);
                    while ($item = mysqli_fetch_assoc($result)){
                        echo '
                        <tbody>
                            <tr>
                                <td>'.$item["i_name"].'</td>
                                <td>'.$item["i_qty"].'</td>
                                <td>'.$item["i_price"].'</td>
                                <td>'.$item["i_cost"].'</td> 
                            </tr>
                        </tbody>';
                    }
                ?>
            </table>
        </div>
    </body>
</html>