<?php
include 'includes/sessionstart.php';
include 'includes/UserDetails.php';
?>
<html lang="en">
<link rel="stylesheet" href="External/bootstrap.min.4.5.2.css">
<!-- <link href="External/Bootstrap.min.4.1.1.css" rel="stylesheet" id="bootstrap-css"> -->
<script src="External/Jquery.min3.5.1.js"></script>
<!-- <script src="External/jquery.mim.3.2.1.js"></script> -->
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>User Account</title>
  <link href="External/all.css" rel="stylesheet">
<link href="External/fontPoppins.css" rel="stylesheet">
<!-- <link href="External/MaterialIcons.css" rel="stylesheet"> -->
<!-- <link href="External/font-awesome.min.css" rel="stylesheet"> -->
        <link rel="stylesheet" href="css/navStyleProfile.css">
        <link rel="stylesheet" href="css/UserAccStyle.css">
        <link rel="stylesheet" href="css/UserAccountNavstyle.css">
<!-- <script src="External/kitfontawesome.js"></script>
<link href="External/fontFamilyGoogle.css" rel="stylesheet"> -->
  </head>
<body>
  


<!------ Include the above in your HEAD tag ---------->
    <!-- <input type="checkbox" id="menu-toggle" />
    <label for="menu-toggle" class="menu-icon"><i class="fa fa-bars"></i></label> -->
    <center>
  <div class="content-container">
    <div class="site-title">
      <h2 id="user_header">User Account</h2>
      <div class="action">
        <div class="profile" onclick="menuToggle();">
            <img src="img/user.png" alt="UserImg">
        </div>

        <div class="menu">
        
            <h3>
                @<?php echo $user; ?>
                <div>
              <?php echo $usertype; ?>
                </div>
                
            </h3>
            <ul>
            <!-- <li>
                    <span class="fa fa-user"></span>
                    <a href="UserAccount.php">My Profile</a>
                </li> -->
                <!-- <li>
                    <span class="material-icons icons-size">mode</span>
                    <a href="#">Edit Account</a>
                </li> -->
                <li>
                <!-- <i class="fas fa-sign-out-alt"></i> -->
                    <span class="fas fa-sign-out-alt"></span>
                    <a href="includes/logout.php">Logout</a>
                </li>
          
            </ul>
        </div>
    </div>
    </div>
    <div class="content">
<div class="container emp-profile">
            <form method="post" id="post">
        
           
              <div class="aj">
                        <div class="tab-content profile-tab" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                        <div class="row">
                                            <div class="col-md-6 Con">
                                                <label class="bold">User Id:</label>
                                            </div>
                                            <div class="col-md-6 Con">
                                                <p id="User"><?php echo $user; ?></p>
                                                <!-- <input type="text" name="User" placeholder="Enter the Username"/> -->
                                               
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6 Con">
                                                <label class="bold">Full Name:</label>
                                            </div>
                                            <div class="col-md-6 Con">
                                                <p id="fullname"><?php echo $fullname; ?></p>
                                                <input type="text" name="Full" class="hide" id="InputName" placeholder="Enter the Fullname"/>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6 Con">
                                                <label class="bold">Age:</label>
                                            </div>
                                            <div class="col-md-6 Con">
                                                <p id="age"><?php echo $age; ?></p>
                                                <input type="text" name="Age" class="hide" id="InputAge" placeholder="Enter the Fullname"/>
                                            </div>
                                        </div>
                                       
                                        <div class="row">
                                            <div class="col-md-6 Con">
                                                <label class="bold">Email:</label>
                                            </div>
                                            <div class="col-md-6 Con">
                                                <p id="email"><?php echo $email ?></p>
                                                <input type="email" name="Email" id="InputEmail" class="hide" placeholder="Enter the Email"/>
                                                
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6 Con">
                                                <label class="bold">Phone:</label>
                                            </div>
                                            <div class="col-md-6 Con">
                                                <p id="phone"><?php echo $phone; ?></p>
                                                <input type="tel" name="Phone" class="hide" id="InputPhone" placeholder="Enter the PhoneNumber"/>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6 Con">
                                                <label class="bold">Created At:</label>
                                            </div>
                                            <div class="col-md-6 Con" style>
                                                <p><?php echo $created; ?></p>
                                                
                                                
                                                
                                            </div>
                                            <div class="col-md-6 Con" style="float: none;
    margin: auto;">
                                            <div class="ButtonWrappe">
                <input type="button" name="Edit" class="btn btn-outline-secondary edit" class="AddRemove" value="Edit" onclick="Edit_User(event)"/>
            </div>
                                                
                                            </div>
                                           
                                            
                                        </div>
                            </div>
                           
                        </div>
                    </div>
                </div>
            </form>           
        </div>
        </div>
  </div>
  </center>

  <script src="js/MenuToggle.js"></script>
  <script>
      function Edit_User(e){
        if (e.target.classList.contains("edit")) {
            e.target.parentElement.parentElement.parentElement.parentElement.classList.toggle("editable");
            var ParentElement=e.target.parentElement.parentElement.parentElement.parentElement;
var fullname=ParentElement.querySelector("#fullname");
var email=ParentElement.querySelector("#email");
var phone=ParentElement.querySelector("#phone");
var age=ParentElement.querySelector("#age");
var InputName=ParentElement.querySelector("#InputName");
var InputEmail=ParentElement.querySelector("#InputEmail");
var InputPhone=ParentElement.querySelector("#InputPhone");
var InputAge=ParentElement.querySelector("#InputAge");



      } 
      if (e.target.parentElement.parentElement.parentElement.parentElement.classList.contains("editable")) {
          InputName.value=fullname.textContent;
          InputEmail.value=email.textContent;
          InputPhone.value=phone.textContent;
          InputAge.value=age.textContent;
          InputName.classList.remove("hide");
          InputAge.classList.remove("hide");
          InputEmail.classList.remove("hide");
          InputPhone.classList.remove("hide");
          fullname.classList.add("hide");
          email.classList.add("hide");
          phone.classList.add("hide");
          age.classList.add("hide");
          var a=e.target;
          a.value="Save";   
        //   a.type="submit";
          a.setAttribute("name","Submit1");
          var user=document.getElementById("User").innerHTML;
          
          document.cookie = "UserName="+user;
}
else{
    var a=e.target;
          a.value="Edit";
          InputName.classList.add("hide");
          InputAge.classList.add("hide");
          InputEmail.classList.add("hide");
          InputPhone.classList.add("hide");
          fullname.classList.remove("hide");
          email.classList.remove("hide");
          phone.classList.remove("hide");
          fullname.textContent=InputName.value;
          email.textContent=InputEmail.value;
          age.textContent=InputAge.value;
          phone.textContent=InputPhone.value;
         
          
          document.getElementById("post").submit();


}
    }
  </script>

        </body>
</html>
<?php


if ($_SERVER["REQUEST_METHOD"] == "POST") {
    require_once "includes/config.php";
    $User=$_COOKIE['UserName'];
 
    $check = mysqli_query($connection, "select * from users where username='$User'");
    $checkrows = mysqli_num_rows($check);
    if ($checkrows > 0) {
        $Full=$_POST["Full"];
        $email=$_POST["Email"];
        $phone=$_POST["Phone"];
        $age=$_POST["Age"];
        
        $qu = "UPDATE `users` SET `fullname`='$Full',`age`='$age',`email` = '$email', `phone` = '$phone' where `users`.`username`='$User'";
        $check1 = mysqli_query($connection, $qu);
        
    }
    mysqli_close($connection);
    echo("<meta http-equiv='refresh' content='1'>");
}
?>
