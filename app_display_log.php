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

<html>        

    <body>    
        
        <br><br><h1 style="color:red; text-align:center;">Unitaca Log File</h1><br>  
         <?php  
            $mysecuritylevel = "1";
            $_SESSION["app_message"] = $_SERVER['PHP_SELF'] . " ip=" .
                     $_SERVER['REMOTE_ADDR'] . " " . $_SESSION["username"] . " usersecuritylevel = " . $_SESSION["usersecuritylevel"];       
            require "./include/app_security.php";
            if ($_SESSION['usersecuritylevel'] != $mysecuritylevel) 
            {            
                $_SESSION["app_message"] = "LOGIN ERROR: " . $_SERVER['PHP_SELF'] . " ip=" .
                     $_SERVER['REMOTE_ADDR'] . " " . $_SESSION["username"] . " usersecuritylevel = " . $_SESSION["usersecuritylevel"];       
                msg_errfile();
                echo "<script> alert('Security Level Error'); window.location.href='./app_login.php';</script>";            
            }
        ?>       
        <table style="border: 1";>
            <tr>                
                <th>Date        Time     File     Remote IP </th>
            </tr>
            <td>
                <?php show_source("./log/app.log"); ?>
            </td>
        </table>

    </body>  

</html> 

<?php msg_logfile(); ?>

