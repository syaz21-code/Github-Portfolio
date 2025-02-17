<!DOCTYPE html>
<html>
    <link rel="stylesheet" href="report.css">
    <head>
        <title>Uhui Monthly Sales Report</title>
    </head>
    <body>
        <div class="img">
            <img src="uhuiLogo.png" alt="Uhui Logo" width="200px" height="120px">
        </div>
        <div class="container">
            <form method="post" action="#" id="monthForm" enctype="multipart/form-data">
                <h3 style="margin-bottom:5px;">Monthly Sales Report</h3>
                <div>
                    <label for="month" id="month">Month: </label>
                    <select name="monthSelect" id="monthSelect">
                        <option value="">--SELECT--</option>    
                        <?php
                            include_once('connect.php');
                            $sql = "SELECT DISTINCT o_month FROM orders;";
                            $result = mysqli_query($con, $sql);
                            while ($month = mysqli_fetch_assoc($result)){
                                echo '<option value="'.$month["o_month"].'">'.$month["o_month"].'</option>';
                            }
                        ?>
                    </select>
                </div>
            </form>

            <div id="monthlyReport">
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
                        <tr>
                            <th>Total Cost: </th>
                            <td>RM 0.00</td>
                        </tr>
                        <tr>
                            <th>Profit: </th>
                            <td>RM 0.00</td>
                        </tr>
                    </thead>
                </table>
            </div>

            <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
            <script>
                $(document).ready(function() {
                    // Attach change event listener to the month select
                    $("#monthSelect").change(function() {
                        // Get the selected month value
                        var selectedMonth = $(this).val();

                        // Use AJAX to fetch and update the monthly report table
                        $.ajax({
                            type: "POST",
                            url: "adminMonthlyUpdate.php",
                            data: { monthSelect: selectedMonth },
                            success: function(response) {
                                // Update the monthlyReport div with the received HTML content
                                $("#monthlyReport").html(response);
                            }
                        });
                    });
                });
            </script>
        </div>
    </body>
</html>
