<?php session_start(); ?>
<!DOCTYPE html>
<?php
// GNU License
/*
 * Copyright (C) 2016 paul
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */
?>

<?php require './include/app_head_01.php'; ?>          
<?php require './include/app_menu.php'; ?>    
<?php require './include/app_footer.php'; ?>

<?php
    $_SESSION["username"] = $user_request_name;
    $_SESSION["password"] = $user_request_password;
    $_SESSION["usersecuritylevel"] = NULL;
    $_SESSION["app_message"] = $_SERVER['PHP_SELF'] . " ip=" . $_SERVER['REMOTE_ADDR'] . " " .
    $_SESSION["username"] . " " . "xxxxxxxx" . " " . $_SESSION["usersecuritylevel"] . " " .
    $cookie_name = "./cookies/unitaca";
    setcookie($cookie_name, $_SESSION["username"], $_SESSION["app_name"], $_SESSION["app_version"], $_SESSION["password"], $_SESSION["usersecuritylevel"], "/");
?>

<html>         
    <body>    

        <br><br><h1 style="color:red; text-align:center;">Security</h1>

        <?php $_SESSION["app_message"] = $_SERVER['PHP_SELF'] . " ip=" . $_SERVER['REMOTE_ADDR']; ?> 
        <br><br>
        <h1 style="color:red; text-align:center;">Login </h1>    
        <br>

        <section style="color:red; text-align:center;">  
            
            <form name="login" action="./app_login_verify.php" method="POST" accept-charset="utf-8">
                <label for="username">User Name</label><br>
                <input type="text" name="username" placeholder="your user name" required><br>
                <label for="password">   Password</label><br>
                <input type="password" name="password" placeholder="password" required><br><br>
                <input type="submit" value="Login">                                 
            </form>
            
            <form name="register" action="./index.php" method="POST" accept-charset="utf-8">
                <input type="submit" value="Register">
            </form>    

            <form name="cancel" action="./index.php" method="POST" accept-charset="utf-8">
                <input type="submit" value="Cancel">
            </form>    

        </section>

    </body>
</html>

<?php msg_logfile() ?>
