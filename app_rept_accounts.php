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

<html>

   <body>
       
        <?php 
            $_SESSION["app_message"] = $_SERVER['PHP_SELF'] . " ip=" .
                 $_SERVER['REMOTE_ADDR'] . " " . $_SESSION["username"] . " usersecuritylevel = " . $_SESSION["usersecuritylevel"];               
            require "./include/app_security.php"; 
        ?>

       <br><br><h1 style="color:red; text-align:center;" >Accounts Listing</h1><br>

        <?php
            $link = mysqli_connect("localhost", "paulhuss_paul", "A1gheh01", "paulhuss_unitaca");

            if (!$link) 
            {
                echo "Error: Unable to connect to MySQL.";
                echo "Debugging errno: " . mysqli_connect_errno();
            }

            $account_query = mysqli_query($link, "SELECT * FROM `accounts`");
        ?>

        <table width="90%" border="1px solid red">

            <?php 
                if (mysqli_num_rows($account_query)) 
                { ?>
                    <tr>           
                        <th align="right">Sequence</th>
                        <th align="right">Number</th>
                        <th align="right">Type</th>            
                        <th align="right">Account Category</th>
                        <th align="right">Date</th>
                        <th align="right">Date</th>
                    </tr>

                    <?php   while ($row = mysqli_fetch_row($account_query)) 
                            { ?>
                                <tr>                
                                    <td align="right"> <?php echo $row[0] ?> </td>
                                    <td align="right"> <?php echo $row[1] ?> </td>
                                    <td align="right"> <?php echo $row[2] ?> </td>
                                    <td align="right"> <?php echo $row[3] ?> </td>
                                    <td align="right"> <?php echo $row[4] ?> </td>
                                    <td align="right"> <?php echo $row[5] ?> </td>
                                </tr>
                    <?php }
                            
                    mysqli_free_result($account_query);
                } else {
                    echo "<br>Error - Record count: " . mysqli_num_rows($account_query);
            } ?>
        </table>

        <?php
            if (!mysqli_close($link)) 
            {
                echo "<br>Cannot close link to mysql.";
            }
        ?>

    </body>
    
</html>        
    
<?php msg_logfile(); ?>
