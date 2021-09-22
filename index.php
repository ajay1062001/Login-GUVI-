<?php
// Initialize the session
session_start();
 
// Check if the user is already logged in, if yes then redirect him to welcome page
if (isset($_SESSION["loggedin"]) && $_SESSION["loggedin"] === true) {
    header("location:UserAccount.php");
    exit;
}
 
// Include config file
require_once "includes/config.php";
 
// Define variables and initialize with empty values
$username = $password = "";
$username_err = $password_err = $login_err = "";
 
// Processing form data when form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
 
    // Check if username is empty
    if (empty(trim($_POST["username"]))) {
        $username_err = "Please enter username.";
    } else {
        $username = trim($_POST["username"]);
    }
    
    // Check if password is empty
    if (empty(trim($_POST["password"]))) {
        $password_err = "Please enter your password.";
    } else {
        $password = trim($_POST["password"]);
    }
    
    // Validate credentials
    if (empty($username_err) && empty($password_err)) {
        // Prepare a select statement
        $sql = "SELECT id, username,password FROM users WHERE (email = ? OR username=?)AND (Status='Active')";
        
        if ($stmt = mysqli_prepare($connection, $sql)) {
            // Bind variables to the prepared statement as parameters
            mysqli_stmt_bind_param($stmt, "ss", $param_username,$param_username);
            
            // Set parameters
      
            $param_username = $username;
            
            // Attempt to execute the prepared statement
            if (mysqli_stmt_execute($stmt)) {
                // Store result
                mysqli_stmt_store_result($stmt);
                
                // Check if username exists, if yes then verify password
                if (mysqli_stmt_num_rows($stmt) == 1) {
                    
                    // Bind result variables
                    mysqli_stmt_bind_result($stmt, $id, $username, $hashed_password);
                    
                    
                    if (mysqli_stmt_fetch($stmt)) {
                       
                        
                        if (password_verify($password, $hashed_password)) {
                            echo $hashed_password;
                            echo $password;
                           
                            // Password is correct, so start a new session
                            session_start();
                            
                            // Store data in session variables
                            $_SESSION["loggedin"] = true;
                            $_SESSION["id"] = $id;
                            $_SESSION["username"] = $username;
                           
                            
                            // Redirect user to welcome page
                            header("location:UserAccount.php");
                        } else {
                            // Password is not valid, display a generic error message
                            $login_err = "Invalid username or password.";
                        }
                    }
                } else {
                    // Username doesn't exist, display a generic error message
                    $login_err = "Invalid username or password.";
                }
            } else {
                echo "Oops! Something went wrong. Please try again later.";
            }

            // Close statement
            mysqli_stmt_close($stmt);
        }
    }
    
    // Close connection
    mysqli_close($connection);
}
   
?>
 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
<link rel="stylesheet" href="External/bootstrap.min.4.5.2.css">

<link href="External/fontPoppins.css" rel="stylesheet">
<link rel="stylesheet" href="css/logstyle.css">

</head>

<body>

    <div class="wrapper">
    <div class="title">Login</div>

        <?php
        if (!empty($login_err)) {
            echo '<div class="alert alert-danger">' . $login_err . '</div>';
        }
        ?>

        <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
        <div class="field">
                <input type="text" name="username" <?php echo (!empty($username_err)) ? 'is-invalid' : ''; ?>" value="<?php echo $username; ?>" required>
                <label>Email Address/Username</label>
                <span class="invalid-feedback"><?php echo $username_err; ?></span>
            </div>
            <div class="field">
                <input type="password" name="password" <?php echo (!empty($password_err)) ? 'is-invalid' : ''; ?>" required>
                <label>Password</label>
                <span class="invalid-feedback"><?php echo $password_err; ?></span>
            </div>
            
            <div class="field">
                <input type="submit" id="log" value="Login">
            </div>
            <div class="signup-link">Not a member? <a href="register.php">Signup now</a></div>
           
         
            <!-- <div class="form-group">
                <input type="submit" class="btn btn-primary" style="color: #fff;background-color: #2E294E;border-color: #2E294E;"value="Login">
            </div>
            <a href="loginUser.php"style="color: #2E294E;font-size: x-large;">User!</a> -->
        </form>
    </div>
    
</body>
</html>