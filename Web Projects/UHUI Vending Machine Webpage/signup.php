<?php
include_once('connect.php');

if (isset($_POST['username'])) {
    $firstName = $_POST["firstname"];
    $lastName = $_POST["lastname"];
    $username = $_POST["username"];
    $password = $_POST["password"];

    // Use an SQL query to insert data into the Admin table
    $sql = "INSERT INTO `Admin`(`ad_fname`, `ad_lname`, `ad_username`, `ad_password`) VALUES ('$firstName', '$lastName', '$username', '$password')";

    $result = mysqli_query($con, $sql);

    if ($result) {
        echo "<script>alert('Successfully signed up!')</script>";
    } else {
        echo "<script>alert('Sign up failed!')</script>";
    }

    echo "<script>window.location='login.php'</script>";
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
                        <h2>Sign Up</h2>
                        <form action=signup.php method=post>
                            <div class="input_box">
                                <input type="text" name="firstname" placeholder="First Name">
                            </div>
                            <div class="input_box">
                                <input type="text" name="lastname" placeholder="Last Name">
                            </div>
                            <div class="input_box">
                                <input type="text" name="username" placeholder="Username">
                            </div>
                            <div class="input_box">
                                <input type="password" name="password" placeholder="password">
                            </div>
                            <div class="input_box">
                                <input type="submit" value="Sign Up">
                            </div>
                            <p class="forget">
                                Already have account? &nbsp; <a href="login.php">Log In</a>
                            </p>
                        </form>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>