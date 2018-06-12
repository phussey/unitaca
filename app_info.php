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
<?php require './include/app_menu.php'; ?>    
<?php require './include/app_footer.php'; ?>        

<html>            
    <body> 
        
        <?php             
            $_SESSION["app_message"] = $_SERVER['PHP_SELF'] . " ip=" .
                $_SERVER['REMOTE_ADDR'] . " " . $_SESSION["username"] . " " . $_SESSION["usersecuritylevel"];
        ?>

        <?php require "./include/app_security.php"; ?>
        
        <br><h1 style="text-align:right;"> SESSION Information </h1>

        <table border="1" style="width:75%" align="center">
            <th>Application Session </th>    
            <th>Name </th>     
            <tr>
                <td> <?php echo $_SESSION['app_name'] ?></td>
                <td> application name. </td>
            </tr>
        </table>

        <h1> User Information </h1>

        <table border="1" style="width:75%">
            <th>User </th>    
            <th>Name </th>

            <tr>
                <td> SESSION[`username`]</td>
                <td> <?php echo $_SESSION['username'] ?></td>
            </tr>  

            <tr>
                <td> SESSION[password]</td>
                <td> <?php echo "............." ?></td>
                </td>
            </tr>  
            <tr>
                <td> SESSION['usersecuritylevel']</td>
                <td> <?php echo $_SESSION["usersecuritylevel"] ?></td>
            </tr>
        </table>

        <h1>Browser Information </h1>

        <table border="1" style="width:75%">
            <th>Name </th>    
            <th>Value </th>

            <tr>
                <td> Browser CodeName </td>
                <td> <script> navigator.appCodeName</script> </td>
            </tr>   
            <tr>
                <td> Browser Name </td>
                <td> <script> navigator.appName</script> </td>
            </tr>  
            <tr> 
                <td> Platform </td>
                <td> </script> navigator.appName </script></td>
            </tr>  
        </table>

    </body>

</html>    

<?php msg_logfile(); ?>
