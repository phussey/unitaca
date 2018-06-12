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
            $currentClient = filter_input(INPUT_POST, 'selectclient');
            $mysecuritylevel = "1";
            $_SESSION["app_message"] = $_SERVER['PHP_SELF'] . " ip=" .
                     $_SERVER['REMOTE_ADDR'] . " " . $_SESSION["username"] . " usersecuritylevel = " . $_SESSION["usersecuritylevel"];       
            require "./include/app_security.php";
            if ($_SESSION['usersecuritylevel'] != $mysecuritylevel) 
            {            
                $_SESSION["app_message"] = "LOGIN ERROR: " . $_SERVER['PHP_SELF'] . " ip=" .
                     $_SERVER['REMOTE_ADDR'] . " " . $_SESSION["username"] . " usersecuritylevel = " . $_SESSION["usersecuritylevel"];       
                msg_errfile();
                echo "
                <script>
                    alert('Login is incorrect. Retry.');
                    window.location.href='./app_login.php';
                </script>";            }
        ?>
        
        <?php             
            $_SESSION["app_message"] = $_SERVER['PHP_SELF'] . " ip=" .
                $_SERVER['REMOTE_ADDR'] . " " . $_SESSION["username"] . " usersecuritylevel = " . $usersecuritylevel;
        ?>

        <br><br><h1 style="color:red; text-align:center;">Security</h1><br>

        <?php
            $qry = "SELECT * FROM `security` LIMIT 0,30";
            require "./app_connect.php";
            $result = mysqli_query($con, $qry) or die(mysql_errno());
        ?>

            <table border="1" width="100%" align="center" >  
               <tr>                                 
                    <th>Sequence</th>                   
                    <th>User</th>            
                    <th>User Name</th>                 
                    <th>Password</th>   
                    <th>Security Level</th>
                    <th>Date Added</th>              
                    <th>App User</th>                     
                    <th>Unit</th>                    
                    <th>Archived</th>                
                </tr>

                <?php while ($row = mysqli_fetch_row($result)) 
                      { ?>
                        <tr>                   
                            <td> <?php echo $row[0] ?> </td>            
                            <td> <img src="./images/clients/default.jpg" height="30" width="35"/></td>
                            <td> <?php echo $row[1] ?> </td>
                            <td> <?php echo "********" ?> </td>
                            <td> <?php echo $row[3] ?> </td>
                            <td> <?php echo $row[4] ?> </td>
                            <td> <?php echo $row[6] ?> </td>
                            <td> <?php echo $row[5] ?> </td>
                            <td> <?php  if ($row[7]) 
                                            {   echo "Yes";
                                            } else { 
                                                echo "No";
                                            }            
                                 ?> 
                            </td>                
                            <td> <a href="./app_security_edit.php"</a>Edit</td>                
                            <td> <a href="./app_security_delete.php"</a>Delete</td>
                        </tr>         
                    <?php } ?>
            </table> 
    </body>
</html>

<?php msg_logfile(); ?>
