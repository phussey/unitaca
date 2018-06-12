<?php session_start(); ?>
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

<!DOCTYPE html>
<html>
    <body>

        <div class="menu">
            <?php require './include/app_menu.php'; ?>
            <?php require './include/app_head_01.php'; ?>
        </div>

        <br>
        <form name="logon" action="index.php" method="POST" >
            Username <input type = "text" user = "client">
            Password  <input type = "password" name = "userpassword">
            <input type = "submit" value = "Login">
        </form>

        <?php
        $app_config_name = "./cfg/app_config.cfg";

        if ($cfgfile = fopen("$app_config_name", "r")) {
            while (!feof($cfgfile)) {
                echo fgets($cfgfile) . ", ";
                fclose($cfgfile);
            }
        } else
            echo("Error: getting config file " . app_config_name);

        fclose($cfgfile);
        //       $_SESSION["user_name"] = UserName;
        //      $_SESSION["user_password"] = Password;
        //       $_SESSION["security_level"] = SecurityLevel;

        $_SESSION["user_name"] = $client;
        $_SESSION["user_password"] = $passwrd;
        $_SESSION["security_level"] = $securitylevel;
        $cookie_name = "unitaca";
        $_SESSION["app_name"] = "unitaca";
        $_SESSION["app_author"] = "pH";
        $_SESSION["app_version"] = "2016-RC1.1.0";
        setcookie($cookie_name, $_SESSION["app_name"], $_SESSION["app_author"], $_SESSION["app_version"], $_SESSION["user"], time() + (86400 * 30), "./unitaca");

        $con = mysqli_connect("localhost", "paulhuss_paul", "A1gheh01");
        if (!$con) {
            exit('Connect Error (' . mysqli_connect_errno() . ') ' . mysqli_connect_error());
        }
        mysqli_set_charset($con, 'utf-8');
        mysqli_select_db($con, "paulhuss_unitaca");

        $username = mysqli_real_escape_string($con, htmlentities($_GET["client"]));

        $usersecurity = mysqli_query($con, "SELECT UserName Password SecurityLevel FROM security WHERE UserName='" . client . "'");

        if (!mysqli_num_rows($usersecurityi)) {
            echo("The user " . $client . " is not found. Check spelling and try again");
        }
        ?>
        <br>
        <?php
        $app_config_name = "./cfg/app_config.cfg";

        if ($cfgfile = fopen("$app_config_name", "r")) {
            while (!feof($cfgfile)) {
                echo fgets($cfgfile) . ", ";
            }
        } else {
            echo("Error: getting config file " . app_config_name);
        }

        fclose($cfgfile);
        $_SESSION["user_name"] = UserName;
        $_SESSION["user_password"] = Password;
        $_SESSION["security_level"] = SecurityLevel;
        ?>
        ?>

        <?php require './include/app_footer.php'; ?>

    </body>
</html>
