<!DOCTYPE html>
<html>
    <link rel="stylesheet" href="report.css">
    <head>
        <title>Uhui Daily Sales Report</title>
    </head>
    <body>
        <div class="img">
            <img src="uhuiLogo.png" alt="Uhui Logo" width="200px" height="120px">
        </div>
        <div class="container">
            <form method="post" action="#" id="dateForm" enctype="multipart/form-data">
                <h3 style="margin-bottom:5px;">Daily Sales Report</h3>
                <div>
                    <label for="date" id="date">Date: </label>
                    <select name="dateSelect" id="dateSelect">
                        <option value="">--SELECT--</option>    
                        <?php
                            include_once('connect.php');
                            $sql = "SELECT DISTINCT o_date FROM orders;";
                            $result = mysqli_query($con, $sql);
                            while ($date = mysqli_fetch_assoc($result)){
                                echo '<option value="'.$date["o_date"].'">'.$date["o_date"].'</option>';
                            }
                        ?>
                    </select>
                </div>               
            </form>

            <div id="reportTable">
                <table class="fl-table">
                    <thead>
                        <tr>
                            <th>Total Item Sold: </th>
                            <td>0</td>
                        </tr>
                        <tr>
                            <th>Total Sales: </th>
                            <td>RM 0.00</td>
                        </tr>
                    </thead>
                </table>
            </div>

            <script>
                // Attach change event listener to the date select
                document.getElementById('dateSelect').addEventListener('change', function() {
                    // Get the selected date value
                    var selectedDate = this.value;

                    // Use AJAX to fetch and update the report table
                    var xhr = new XMLHttpRequest();
                    xhr.open('POST', 'adminDailyUpdate.php', true);
                    xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');

                    // Set up a callback function to handle the response
                    xhr.onreadystatechange = function () {
                        if (xhr.readyState == 4 && xhr.status == 200) {
                            // Update the reportTable div with the received HTML content
                            document.getElementById('reportTable').innerHTML = xhr.responseText;
                        }
                    };

                    // Send the selected date to the server
                    xhr.send('dateSelect=' + selectedDate);
                });
            </script>
        </div>
    </body>
</html>
