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
        <br>     


        <table border="2" >       
            <tr>                  
                <th>Application</th> 
                <th>Sequence</th>
                <th>UserName</th>   
                <th>Password</th>
                <th>Level</th>   
                <th>Other</th>
            </tr>

            <tr>                       
                <td> <?php echo $_SESSION["app_name"] ?> </td>
                <td> <?php echo $row[0] ?> </td>
                <td> <?php echo $row[1] ?> </td>
                <td> <?php echo $row[2] ?> </td>
                <td> <?php echo $row[3] ?> </td>
                <td> <?php echo $row[4] ?> </td>
            </tr>
        </table>

        <?php require './include/app_footer.php'; ?>

    </body>
</html>
