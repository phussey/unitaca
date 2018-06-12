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
       
        <br><br><h1 style="color:red; text-align:center;" >Countries</h1>

        <?php
            $_SESSION['mysecuritylevel'] = "1";
            $usersecuritylevel = $_SESSION['usersecuritylevel'];
            $_SESSION["app_message"] = $_SERVER['PHP_SELF'] . " ip=" .
                    $_SERVER['REMOTE_ADDR'] . " " . $_SESSION["username"] . " usersecuritylevel = " . $usersecuritylevel;
            require "./include/app_security.php";
            if ($_SESSION['mysecuritylevel'] < $usersecuritylevel) 
            {
                echo(var_dump($_SESSION));
                die("Security Error");
            }
        ?>
    
        <?php
            $link = mysqli_connect("localhost", "paulhuss_paul", "A1gheh01", "paulhuss_unitaca");

            if (!$link) 
            {
                echo "Error: Unable to connect to MySQL.";
                echo "Debugging errno: " . mysqli_connect_errno();
            }

            $account_query = mysqli_query($link, "SELECT * FROM `Countries` ");
        ?>

        <table width=60% border="1" align="center">
            <tr>           
                <th>Sequence</th>
                <th>Country Code</th>
                <th>Country</th>            
            </tr>
            <?php while ($row = mysqli_fetch_row($account_query)) 
                { ?>
                    <tr>                
                        <td align="center"> <?php echo $row[0] ?> </td>
                        <td align="center"> <?php echo $row[2] ?> </td>
                        <td align="left"> <?php echo $row[1] ?> </td>
                    </tr>
            <?php } ?>
        </table>
       
        <?php
            mysqli_free_result($account_query);
            mysqli_close($link);
        ?>
       
    </body>
</html>        
    
<?php msg_logfile(); ?>
