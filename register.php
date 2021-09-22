<?php
// Include config file
require_once "includes/config.php";
 
// Define variables and initialize with empty values
$fullname=$username =$email= $Phone=$password = $confirm_password = "";
$fullname_err=$username_err =$email_err=$Phone_err= $password_err = $confirm_password_err = "";
 
// Processing form data when form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (empty(trim($_POST["fullname"]))) {
      
        $fullname_err = "Please enter a name";
    } else {
        $fullname = trim($_POST["fullname"]);
    }
    if (empty(trim($_POST["age"]))) {
      
        $age_err = "Please enter a age";
    } else {
        $age = trim($_POST["age"]);
    }
    if (empty(trim($_POST["Phone"]))) {
      
        $Phone_err = "Please enter a Phone Number";
    } 
    else if((preg_match('/^[6-9]\d{9}$/',$_POST["Phone"] ))){
        $Phone = $_POST["Phone"];
        
    }
    else{
        $Phone_err="Enter Number Correctly";
    }
        
if (empty(trim($_POST["email"]))) {
        $email_err = "Email is required";
    } else {
        $sql1 = "SELECT id FROM users WHERE email = ?";
        if ($stmt = mysqli_prepare($connection, $sql1)) {
            // Bind variables to the prepared statement as parameters
            mysqli_stmt_bind_param($stmt, "s", $param_email);
            $param_email = trim($_POST["email"]);
          
        
            if (mysqli_stmt_execute($stmt)) {
                /* store result */
                mysqli_stmt_store_result($stmt);
               
            
                if (mysqli_stmt_num_rows($stmt) >= 1) {
                    $email_err= "This Email is already taken.";
                } else {
                    $email = trim($_POST["email"]);
                }
            } else {
                echo "Oops! Something went wrong. Please try again later.";
            }
            // check if e-mail address is well-formed
        // if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        //     $email_err = "Invalid email format";
        // }
        mysqli_stmt_close($stmt);
        }
        
    }
      
    
 
    // Validate username
    if (empty(trim($_POST["username"]))) {
        $username_err = "Please enter a username.";
        
    } elseif (strlen(trim($_POST["username"])) >= 10) {
        
        
        $username_err="Username is Too Long!(Maximum is 10 Characters)";

    }
        else {
            
        // Prepare a select statement
        $sql = "SELECT id FROM users WHERE username = ?";
        
        if ($stmt = mysqli_prepare($connection, $sql)) {
            // Bind variables to the prepared statement as parameters
            mysqli_stmt_bind_param($stmt, "s", $param_username);
            
            // Set parameters
            $param_username = trim($_POST["username"]);
            
            // Attempt to execute the prepared statement
            if (mysqli_stmt_execute($stmt)) {
                /* store result */
                mysqli_stmt_store_result($stmt);
                
                if (mysqli_stmt_num_rows($stmt) == 1) {
                    $username_err = "This username is already taken.";
                } else {
                    $username = trim($_POST["username"]);
                }
            } else {
                echo "Oops! Something went wrong. Please try again later.";
            }

            // Close statement
            mysqli_stmt_close($stmt);
        }
    }
    
    // Validate password
    if (empty(trim($_POST["password"]))) {
        $password_err = "Please enter a password.";
    } elseif (strlen(trim($_POST["password"])) < 6) {
        $password_err = "Password must have atleast 6 characters.";
    } else {
        $password = trim($_POST["password"]);
    }
    
    // Validate confirm password
    if (empty(trim($_POST["confirm_password"]))) {
        $confirm_password_err = "Please confirm password.";
    } else {
        $confirm_password = trim($_POST["confirm_password"]);
        if (empty($password_err) && ($password != $confirm_password)) {
            $confirm_password_err = "Password did not match.";
        }
    }
    
    // Check input errors before inserting in database
    if (empty($fullname_err) &&empty($username_err) && empty($email_err)&& empty($Phone_err)&& empty($password_err) && empty($confirm_password_err)&& empty($age_err)) {
        
        // Prepare an insert statement
        $sql = "INSERT INTO users (fullname,username,age,email,phone,password,usertype) VALUES (?,?,?,?,?,?,?)";
         
        if ($stmt = mysqli_prepare($connection, $sql)) {
            // Bind variables to the prepared statement as parameters
            mysqli_stmt_bind_param($stmt, "sssssss", $param_fullname, $param_username,$param_age, $param_email,$param_phone,$param_password,$param_userType);
            
            // Set parameters
           
            $param_fullname=$fullname;
            $param_email=$email;
            $param_phone=$Phone;
            $param_age=$age;
            $param_username = $username;
            $param_password =password_hash($password, PASSWORD_DEFAULT); 
            $param_password = substr( $param_password, 0, 60 );
            $param_userType='User';
            
            // Attempt to execute the prepared statement
            if (mysqli_stmt_execute($stmt)) {
                // Redirect to login page
                header("location: index.php");
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
    <title>Sign Up</title>
    <link rel="stylesheet" href="External/bootstrap.min.4.5.2.css">
    <link rel="stylesheet" href="css/registerStyle.css">
 
</head>
<body>
<div class="container">
    <div class="title">Registration</div>
    <div class="content">
        <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
        <div class="user-details">
          <div class="input-box">
            <span class="details">Full Name</span>
            <input type="text" name="fullname" class="form-control <?php echo (!empty($fullname_err)) ? 'is-invalid' : ''; ?>"  value="<?php echo $fullname; ?>" placeholder="Enter your name" >
            <span class="invalid-feedback"><?php echo $fullname_err; ?></span>
          </div>
          <div class="input-box">
            <span class="details">Username</span>
            <input type="text" name="username" placeholder="Enter your username" class="form-control <?php echo (!empty($username_err)) ? 'is-invalid' : ''; ?>" value="<?php echo $username; ?>" >
            <span class="invalid-feedback"><?php echo $username_err; ?></span>
          </div>
          <div class="input-box">
            <span class="details">Age</span>
            <input type="number" name="age" placeholder="Enter your age" class="form-control <?php echo (!empty($age_err)) ? 'is-invalid' : ''; ?>" value="<?php echo $username; ?>" >
            <span class="invalid-feedback"><?php echo $age_err; ?></span>
          </div>
         <div class="input-box">
            <span class="details">Email</span>
            <input type="email" placeholder="Enter your email" name="email" class="form-control <?php echo (!empty($email_err)) ? 'is-invalid' : ''; ?>" value="<?php echo $email; ?>" >
            <span class="invalid-feedback"><?php echo $email_err; ?></span>
          </div>
          <div class="input-box">
            <span class="details">Phone Number</span>
            <input type="tel" placeholder="Enter your Phone Number" name="Phone" class="form-control <?php echo (!empty($Phone_err)) ? 'is-invalid' : ''; ?>" value="<?php echo $Phone; ?>" >
            <span class="invalid-feedback"><?php echo $Phone_err; ?></span>
          </div>
          <div class="input-box">
            <span class="details">Password</span>
            <input type="password" name="password" placeholder="Enter your password" class="form-control <?php echo (!empty($password_err)) ? 'is-invalid' : ''; ?>" value="<?php echo $password; ?>" >
            <span class="invalid-feedback"><?php echo $password_err; ?></span>
          </div>
          <div class="input-box">
            <span class="details">Confirm Password</span>
            <input type="password" name="confirm_password" placeholder="Confirm your password" class="form-control <?php echo (!empty($confirm_password_err)) ? 'is-invalid' : ''; ?>" value="<?php echo $confirm_password; ?>" >
            <span class="invalid-feedback"><?php echo $confirm_password_err; ?></span>
          </div>
        </div>
  
          
   
            <div class="form-group button">
                <input type="submit" class="btn btn-primary" value="Register">
                <!-- <input type="reset" class="btn btn-secondary ml-2" value="Reset"> -->
            </div>
            <center><p ><a href="index.php">Go Back</a></p></center>
        </form>
    </div>    
</body>
</html>