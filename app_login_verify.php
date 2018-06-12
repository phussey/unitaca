<!DOCTYPE html>
<?php session_start(); ?>

<?php
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
<?php require './include/app_logs.php' ?>

<html>  
    
    <body>
        
        <?php
            
            $user_request_name = $_GET["username"];
            $user_request_password = $_GET["password"];
            
            if (($cfgfile = fopen("./cfg/app_config.cfg", "r"))) 
            {
                while (!feof($cfgfile)) 
                {
                    fgets($cfgfile);
                }
                fclose($cfgfile);   
            } else {
                echo("Error: getting config file ./cfg/app_config.cfg" . $cfgfile->error);
            }
        ?>
        
        <?php
            $con = mysqli_connect("localhost", "paulhuss_paul", "A1gheh01", "paulhuss_unitaca");
            mysqli_set_charset($con, 'utf-8');
            $qry = "SELECT * FROM `security` WHERE `UserName` = " . '"' . $user_request_name . '"';        
            $result = mysqli_query($con, $qry);
            $row = mysqli_fetch_row($result);
            if ($user_request_password != $row[2]) 
            { 
                $_SESSION["username"] = $user_request_name;
                $_SESSION["userpassword"] = $user_request_password;
                $_SESSION["usersecuritylevel"] = $row[3];        
                $_SESSION["app_message"] = "LOGIN ERROR: " . $_SERVER['PHP_SELF'] . " ip=" . $_SERVER['REMOTE_ADDR'] . " " . 
                    $_SESSION["username"] . " " . $_SESSION["userpassword"] . " " . $_SESSION["usersecuritylevel"];         
                msg_logfile(); 
                echo "
                <script>
                    alert('Login is incorrect. Retry.');
                    window.location.href='./app_login.php';
                </script>";
            } else {
                $_SESSION["username"] = $user_request_name;
                $_SESSION["userpassword"] = $user_request_password;
                $_SESSION["usersecuritylevel"] = $row[3];        
                $_SESSION["app_message"] = $_SERVER['PHP_SELF'] . " ip=" . $_SERVER['REMOTE_ADDR'] . " " . 
                    $_SESSION["username"] . " " . $_SESSION["userpassword"] . " " . $_SESSION["usersecuritylevel"];         
                msg_logfile();
                header('Location:./app_client_detail.php');    
            }
        ?>
    </body>
</html>
        
