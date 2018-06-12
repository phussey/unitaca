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

<?php
$app_config_name = "./cfg/app_config.cfg";

if ($cfgfile = fopen("$app_config_name", "r")) {
    while (!feof($cfgfile)) {
        echo(fgets($cfgfile)) . ", ";
    }
} else
    echo("Error: getting config file " . app_config_name);

$_SESSION["app_name"] = "unitaca";
$_SESSION["app_author"] = "pH";
$_SESSION["app_version"] = "2016-RC1.1.0";
fclose($cfgfile);
?>

<h2>getting security from MySQL.......</h2>

<?php
if (!$con = mysqli_connect("localhost", "paulhuss_paul", "A1gheh01")) {
    echo('Connect Error (' . mysqli_connect_errno() . ') ' . mysqli_connect_error());
}
mysqli_set_charset($con, 'utf-8');

if (!mysqli_select_db($con, 'paulhuss_unitaca')) {
    echo("Unable to select pauluss_unitaca database.");
}

//    $securityitems = "SELECT `ID`, `UserName`, `Password`, `LastAccess` FROM security WHERE UserName= " . $Name;
//   if (!$useritem = mysqli_query($con, $securityitems)) {
//       echo("The user " . $Name . " is not found. ");
//   }

$securityitems = "SELECT * FROM `security` ";
if (!$securityitems = mysqli_query($con, $securityitems)) {
    echo("Nothing found. ");
} echo (mysqli_num_rows($securityitems) . " Records found.");

$_SESSION["app_user"] = "paul";
$_SESSION["user_security_level"] = "1";

$cookie_name = "unitaca";
setcookie($cookie_name, $_SESSION["app_name"], $_SESSION["app_author"], $_SESSION["app_version"], $_SESSION["app_user"], $_SESSION["user_security_level"], time() + (86400 * 30), "/");
?>

<table border="2", style="width:90% " >       
    <tr>                  
        <th>Application</th>             
        <th>UserName</th>   
        <th>Security Level</th>
        <th>Sequence</th>
        <th>Level</th>   
        <th>Other</th>
    </tr>

    <?php while ($row = mysqli_fetch_row($securityitems)) { ?>
        <tr>                       
            <td> <?php echo $_SESSION["app_name"] ?> </td>                    
            <td> <?php echo $_SESSION["app_user"] ?> </td>
            <td> <?php echo $_SESSION["user_security_level"] ?> </td>
            <td> <?php echo $row[0] ?> </td>
            <td> <?php echo $row[1] ?> </td>
            <td> <?php echo $row[2] ?> </td>
            <td> <?php echo $row[3] ?> </td>
            <td> <?php echo $row[4] ?> </td>
        </tr>
    <?php } ?>
</table>

<?php require './include/app_footer.php'; ?>

</body>
</html>
