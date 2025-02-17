<?php
include('connect.php');
session_start();

if (isset($_POST['username']) && isset($_POST['password'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];

    $sql = "SELECT * FROM `admin` WHERE `ad_username` = '$username' AND `ad_password` = '$password'";
    $result = mysqli_query($con, $sql);

    if (mysqli_num_rows($result) == 1) {
        // Login successful, redirect to adminMain.html
        header("Location: adminMain.html");
        exit;
    } else {
        echo "<script>alert('Login failed. Please check your username and password.')</script>";
    }
}
?>


<html>
    <link rel="stylesheet" href="style.css">
    <body>
        <section>
            <div class="colour"></div>
            <div class="colour"></div>
            <div class="colour"></div>
            <div class="box">
                <div class="square" style="--i: 0"></div>
                <div class="square" style="--i: 1"></div>
                <div class="square" style="--i: 2"></div>
                <div class="square" style="--i: 3"></div>
                <div class="square" style="--i: 4"></div>
                <div class="container">
                    <div class="form">
                        <h2>Login</h2>
                        <form action=login.php method=post>
                            <div class="input_box">
                                <input type="text" name="username" placeholder="Username">
                            </div>
                            <div class="input_box">
                                <input type="password" name="password" placeholder="password">
                            </div>
                            <div class="input_box">
                            <input type="submit" value="Log In">
                            </div>
                            <p class="forget">
                                Don't have account? &nbsp; <a href="signup.php">Sign Up</a>
                            </p>
                        </form>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>