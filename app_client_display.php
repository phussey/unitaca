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
        
        <br><br><h1 style="color:red; text-align:center;">Client Display</h1>

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
            $client = $_GET['selectclient'];
            $con = mysqli_connect("localhost", "paulhuss_paul", "A1gheh01", "paulhuss_unitaca") or die(mysql_error());
            mysqli_set_charset($con, 'utf-8');
            $sql = "SELECT * FROM `clientdirectory` WHERE `client` = \"$client\"";
            $result = mysqli_query($con, $sql) ;
            $row = mysqli_fetch_array($result);        

            $clientNumber = $row['clientNumber'];
            $_SESSION['previous_client'] = $client;
            $_SESSION['current_client'] = $row['client'];  

        ?>  
        
        <form>
            <fieldset id='frm-personal' name="personal">
                <legend>Personal </legend>  
                Name:<br> <input type="text"  value="<?php echo($row['client']) ?>"> <br>
                ID: <br> <input type="text" value="<?php echo($row['clientNumber']) ?>"><br> 
                Phone: <br> <input type="text" value="<?php echo($row['PhoneNumber']) ?>"> <br>
                Date of birth: <br> <input type="text" value="<?php echo($row['DateofBirth']) ?>">
            </fieldset>

            <fieldset id='frm-address' name="address">
                <legend>Address  </legend>
                Address:<br>  <input type="text" value="<?php echo($row['AddressA']) ?>"><br>
                Address:<br>  <input type="text" value="<?php echo($row['AddressB']) ?>"><br>
                Province:<br>  <input type="text" value="<?php echo($row['ProvinceState']) ?>"><br>             
                City:<br>  <input type="text" value="<?php echo($row['City']) ?>"><br>             
                Country:<br>  <input type="text" value="<?php echo($row['Country']) ?>"><br>
                Postal Code:<br>   <input type="text" value="<?php echo($row['PostalCode']) ?>">
            </fieldset>                

            <fieldset id='frm-medicare' name="medicare">
                <legend>Medicare Information</legend>
                Provider:<br>  <input type="text" value="<?php echo($row['AddressA']) ?>"><br>
                Address:<br>  <input type="text" value="<?php echo($row['AddressA']) ?>"><br>
                Province:<br>  <input type="text" value="<?php echo($row['AddressA']) ?>"><br>             
                City:<br>  <input type="text" value="<?php echo($row['AddressA']) ?>"><br>             
                Country:<br>  <input type="text" value="<?php echo($row['AddressA']) ?>"><br>
                Mobile:<br>  <input type="text" value="<?php echo($row['AddressA']) ?>">
            </fieldset>
        </form>

        <?php
            mysqli_free_result($result);
            mysqli_close($con);
        ?>

    </body>     
</html>

<?php msg_logfile(); ?>