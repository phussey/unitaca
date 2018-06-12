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
<!DOCTYPE html>
<html>        


    <?php require './include/app_head_01.php'; ?>
    <?php require './include/app_menu.php'; ?> 
    <body>
        <?php $_SESSION["app_message"] = $_SERVER['PHP_SELF'] . " from ip " . $_SERVER['REMOTE_ADDR']; ?> 
        <?php require "./include/app_security.php"; ?>
        <?php
            if ($cfgfile = fopen("./cfg/app_config.cfg", "r")) 
            {
                while (!feof($cfgfile)) 
                {
                    fgets($cfgfile);
                }
            } else {
                echo("Error: getting config file ./cfg/app_config.cfg");
            }

            $_SESSION["app_name"] = "Unitaca";
            $_SESSION["app_author"] = $_GET['author'];
            $_SESSION["securitylevel"] = $_GET['securitylevel'];
            fclose($cfgfile);
        ?>

        <h1> Security Edit</h1>   

        <?php
            $qry = "SELECT * FROM `security` LIMIT 0,30";
            $con = mysqli_connect("localhost", "paulhuss_paul", "A1gheh01", "paulhuss_unitaca") or die(mysql_error());
            mysqli_set_charset($con, 'utf-8');
            $result = mysqli_query($con, $qry) or die(mysql_errno());
            echo("<br>User Count = " . mysqli_num_rows($result));
        ?>

        <?php require './include/app_footer.php'; ?>    
        <?php msg_logfile(); ?>
    </body>
</html>
