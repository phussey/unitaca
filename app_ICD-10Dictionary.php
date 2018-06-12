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

    <h1 style="text-align:center;">ICD-10 Dictionary</h1>    
    <h3 style="text-align:center;">International Coding of Diseases</h3>

    <?php
    $link = mysqli_connect("localhost", "paulhuss_paul", "A1gheh01", "paulhuss_unitaca");

    if (!$link) {
        echo "Error: Unable to connect to MySQL.";
        echo "Debugging errno: " . mysqli_connect_errno();
    }

    $account_query = mysqli_query($link, "SELECT * FROM `ICD-10Dictionary`");
    ?>

    <table align="center" border="1" style="width:70%">

        <?php if (mysqli_num_rows($account_query)) { ?>
            <tr>           
                <th>Sequence</th>
                <th>Code</th>
                <th>Reference</th>            
                <th>Label</th>

            </tr>

            <?php while ($row = mysqli_fetch_row($account_query)) { ?>
                <tr>                
                    <td> <?php echo $row[0] . "<br>" ?> </td>
                    <td> <?php echo $row[1] . "<br>" ?> </td>
                    <td> <?php echo $row[2] . "<br>" ?> </td>
                    <td> <?php echo $row[3] . "<br>" ?> </td>

                </tr>
                <?php
            }
            mysqli_free_result($account_query);
        } else {
            echo "<br>Error - Record count: " . mysqli_num_rows($account_query);
        }
        ?>

    </table>
    <?php
    if ($link) {
        if (!mysqli_close($link)) {
            echo "<br>Cannot close link to mysql.";
        }
    }
    ?>

    <?php require './include/app_footer.php'; ?>
    <?php msg_logfile(); ?>

</body>
</html>