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
    <body>


        <?php
        if (!$_SESSION['app_name']) {
            echo ('Please login.');
        }
        ?>

        <div class="menu">
            <?php require './include/app_menu.php'; ?>
        </div>

        <?php
        require './include/app_head_01.php';
        require './include/app_error_handler.php';
        ?>

        <br>
        <h2>Accounts Listing</h2>

        <?php
        $link = mysqli_connect("localhost", "paulhuss_paul", "A1gheh01", "paulhuss_unitaca");

        if (!$link) {
            echo "Error: Unable to connect to MySQL.";
            echo "Debugging errno: " . mysqli_connect_errno();
        }

        $account_query = mysqli_query($link, "SELECT * FROM `medical1cd9substancedictionary`");
        echo "<br>Record count: " . mysqli_num_rows($account_query);
        ?>

        <table style="border: 1px solid black ">

            <?php if (mysqli_num_rows($account_query)) { ?>
                <tr>           
                    <th>Sequencec</th>
                    <th>Number</th>
                    <th>Type</th>            
                    <th>DateA</th>
                    <th>DateB</th>
                    <th>DateC</th>
                </tr>

                <?php while ($row = mysqli_fetch_row($account_query)) { ?>
                    <tr>                
                        <td> <?php echo $row[0] ?> </td>
                        <td> <?php echo $row[1] ?> </td>
                        <td> <?php echo $row[2] ?> </td>
                        <td> <?php echo $row[3] ?> </td>
                        <td> <?php echo $row[4] ?> </td>
                        <td> <?php echo $row[5] ?> </td>
                        <td> <?php echo $row[6] ?> </td>
                        <td> <?php echo $row[7] ?> </td>
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

    </body>
</html>