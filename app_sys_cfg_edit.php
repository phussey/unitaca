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
<?php require './include/app_footer.php'; ?>

<html>        

    <body>    

        <?php
        $currentClient = filter_input(INPUT_POST, 'selectclient');
        $mysecuritylevel = "1";
        $_SESSION["app_message"] = $_SERVER['PHP_SELF'] . " ip=" .
                $_SERVER['REMOTE_ADDR'] . " " . $_SESSION["username"] . " usersecuritylevel = " . $_SESSION["usersecuritylevel"];
        require "./include/app_security.php";
        if ($_SESSION['usersecuritylevel'] > $mysecuritylevel) {
            $_SESSION["app_message"] = "LOGIN ERROR: " . $_SERVER['PHP_SELF'] . " ip=" .
                    $_SERVER['REMOTE_ADDR'] . " " . $_SESSION["username"] . " usersecuritylevel = " . $_SESSION["usersecuritylevel"];
            msg_errfile();
            echo "
                <script>
                    alert('Login is incorrect. Retry.');
                    window.location.href='./app_login.php';
                </script>";
        }
        ?>    
        
        <?php
            if ($cfgfile = fopen("./cfg/app_config.cfg", "rw")) 
            {
                $my_idx = 0;
                while (!feof($cfgfile)) {
                    $mycfg[$my_idx] = (fgets($cfgfile));
                    $my_idx++;
                }
            } else {
                echo("Error: getting config file ./cfg/app_config.cfg");
            }
        ?>

        <br><br>
        
        <input type="button" value="Update" onclick=update_cfg_file()>     
        <input type="button" value="Cancel">           

        <form>
            <fieldset id = 'frm-personal' name = "personal" >
                <legend>Application Configuration</legend>
                Application Client: <input type = "text" value = "<?php echo("$mycfg[0]") ?>"> <br>
                WWW: <input type = "text" value = "<?php echo("$mycfg[1]") ?>"><br>
                ID: <input type = "text" value = "<?php echo("$mycfg[2]") ?>"> <br>
                License Expiration: <input type = "text" value = "<?php echo("$mycfg[3]") ?>" >
            </fieldset>

            <fieldset id = 'frm-address' name = "address">
                <legend>Address </legend>
                Address: <input type = "text" value = "Address"><br>
                Address: <input type = "text" value = "Address"><br>
                Province: <input type = "text" value = "Province"><br>
                City: <input type = "text" value = "City"><br>
                Country: <input type = "text" value = "Country"><br>
                Mobile: <input type = "text" value = "Mobile">
            </fieldset>

            <fieldset id = 'frm-medicare' name = "address">
                <legend>Medicare Information</legend>
                Provider: <input type = "text" value = "Provider"><br>
                Address: <input type = "text" value = "Address"><br>
                Province: <input type = "text" value = "Province"><br>
                City: <input type = "text" value = "City"><br>
                Country: <input type = "text" value = "Country"><br>
                Mobile: <input type = "text" value = "Mobile">
            </fieldset>
        </form>
        
        <?php
            fclose($cfgfile);
            mysqli_free_result($result);
            mysqli_close($con);
        ?>

    </body>         
</html> 

<?php
    function update_cfg_file() 
    {
        echo("Update");
    }
?>

<?php msg_logfile(); ?>


