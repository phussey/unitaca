<?php session_start(); ?>
<!DOCTYPE html>


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
<?php $mysecuritylevel = "1"; ?>

<html>            
    <body> 
        <?php
        $_SESSION["app_message"] = $_SERVER['PHP_SELF'] . " ip=" .
                $_SERVER['REMOTE_ADDR'] . " " . $_SESSION["username"] . " usersecuritylevel = " . $_SESSION["usersecuritylevel"];
        if ($_SESSION['usersecuritylevel'] != $mysecuritylevel) {
            $_SESSION['app_message'] = NULL;
            $_SESSION["app_message"] = "LOGIN ERROR: " . $_SERVER['PHP_SELF'] . " ip=" .
                    $_SERVER['REMOTE_ADDR'] . " " . $_SESSION["username"] . " usersecuritylevel = " . $_SESSION["usersecuritylevel"];
            echo "
                <script>
                    alert('Login is incorrect. Retry.');
                    window.location.href='./app_login.php';
                </script>";            
            msg_errfile();
        }
        ?>
        <br>
        <table border="1px">
            <caption><h2>Session Data</h2></caption>
            <tr>
                <th>Application</th>
                <th>Version</th>
                <th>User</th>                
                <th>ASL</th>
                <th>User ASL</th>
                <th>Activity Log</th>
                <th>Error Log</th>
                <th>Current Client</th>
                <th>Group </th>
            </tr>            

            <tr>   
                <td><?php echo($_SESSION["app_name"]); ?></td>
                <td><?php echo($_SESSION["app_version"]); ?></td>
                <td><?php echo($_SESSION["username"]); ?></td>                
                <td><?php echo("$mysecuritylevel"); ?></td>
                <td><?php echo($_SESSION["usersecuritylevel"]); ?></td>
                <td><?php echo($_SESSION["logfile"]); ?></td>
                <td><?php echo($_SESSION["error_logfile"]); ?></td>
                <td><?php echo($_SESSION["current_client"]); ?></td>
                <td><?php echo($_SESSION["temp2"]); ?></td> 
            </tr>
        </table>

    </body>        
</html>

<?php msg_logfile(); ?>


