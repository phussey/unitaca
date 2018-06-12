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
            $_SESSION["app_message"] = "LOGOUT: " . $_SERVER['PHP_SELF'] . " ip=" .
                 $_SERVER['REMOTE_ADDR'] . " " . $_SESSION["username"] . " usersecuritylevel = " . $_SESSION["usersecuritylevel"];       
        ?>


        <script>
            if(confirm("Logout of this session?")) 
            {         
                <?php
                    session_unset();
                    session_destroy();
                ?>
            } else {
                   location.assign("./index.php");
            }
        </script> 

        
        <h2> session destroyed....returning to Welcome.</h2>
        <br><br><br>
        <h1>Logging out.....</h1>
        <h2>unsetting session........</h2>
        <script>  location.assign("./index.php"); </script>
  
    </body>
</html>
        <?php msg_logfile(); ?>

