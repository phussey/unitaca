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
<html>        
    <body>              
        <?php require './include/app_menu.php'; ?>
        <br>
        <h1 style="text-align:right;">Client Selection</h1>

        <?php
            $_SESSION['mysecuritylevel'] = "1";
            $usersecuritylevel = $_SESSION['usersecuritylevel'];
            $_SESSION["app_message"] = $_SERVER['PHP_SELF'] . " ip=" .
                    $_SERVER['REMOTE_ADDR'] . " " . $_SESSION["username"] . " usersecuritylevel = " . $usersecuritylevel;
            require "./include/app_security.php";
            if ($_SESSION['mysecuritylevel'] < $usersecuritylevel) {
                echo(var_dump($_SESSION));
                die("Security Error");
            }
        ?>

        <?php
            $con = mysqli_connect("localhost", "paulhuss_paul", "A1gheh01", "paulhuss_unitaca") or die(mysql_error());
            mysqli_set_charset($con, 'utf-8');
            $sql = "SELECT  client, clientNumber FROM clientdirectory ORDER BY client";
            $result = mysqli_query($con, $sql) or die("<br>Unable to get Client." . mysql_errno());
            $row = mysqli_fetch_array($result);

    //        $client = $row['client'];
    //        $clientNumber = $row['clientNumber'];
        ?>
        <form action="./app_client_display.php?$client" method="GET">            
            <?php
                echo "<select name='selectclient'>";
                echo "<option value='" . $row['client'] . "'>" . $row['client'] . "</option>";
                while ($row = mysqli_fetch_array($result)) {
                    echo "<option value='" . $row['client'] . "'>" . $row['client'] . "</option>";
                }
                echo "</select>";
            ?>
            <input type="submit" value="Submit">
        </form>

        <?php
            mysqli_free_result($result);
            mysqli_close($con);
            require './include/app_footer.php';
            msg_logfile();
        ?>
    </body>     
</html>
