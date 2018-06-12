<?php session_start(); ?>
<!DOCTYPE html>

<!--
Copyright (C) 2016 paul

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
-->

<?php require './include/app_head_01.php'; ?>
<?php require './include/app_menu.php'; ?>    


<html>        

    <body>   

        <?php
//            $client = $_GET["clientnumber"];
            $qry = "SELECT * FROM clientdirectory ORDER BY client LIMIT 0, 25";
            $con = mysqli_connect("localhost", "paulhuss_paul", "A1gheh01", "paulhuss_unitaca") or die(mysql_error());
            mysqli_set_charset($con, 'utf-8');
            $result = mysqli_query($con, $qry) or die(mysql_errno());
            $_SESSION["app_message"] = $_SERVER['PHP_SELF'] . " ip=" .
                     $_SERVER['REMOTE_ADDR'] . " " . $_SESSION["username"] . " usersecuritylevel = " . $_SESSION["usersecuritylevel"];        
        ?>
 

        <table>  
            <caption><h2>Client Detail</h2></caption>

            <tr>                
                <th>Client Number</th>
                <th>Client Name </th>
                <th>Care Level</th>       
                <th>Case Worker</th>
                <th>Provider</th>
                <th>tbd</th>
                <th>Services</th>

            </tr>
            <?php do {
                    while ($row = mysqli_fetch_assoc($result)) 
                    { ?>
                        <tr>                   
                            <td> <?php echo $row["clientNumber"] ?> </td>
                            <td> <?php echo $row["client"] ?> </td>
                            <td> <?php echo $row["CareLevel"] ?> </td>
                            <td> <?php echo $row["AgencyCaseWorker"] ?> </td>
                            <td> <?php echo $row["GovernmentDepartment"] ?> </td>
                            <td> <?php echo $row[""] ?> </td>
                            <td> <?php echo $row[""] ?> </td>                
                            <td> <a href="./app_client_edit.php">Edit</a></td>                
                            <td> <a href="./app_client_delete.php" onclick="return confirm('Confirm: Delete this record?');">Delete</a></td>  
                            <td> <a href="./app_clients.php">Detail</a></td>                        
                        </tr>    
                    <?php 
                    }
                    ?>
            <?php } while($row = mysqli_fetch_assoc($result)); ?>
        </table>
 
     
        <?php
            mysqli_free_result($result);
            mysqli_close($con);
            msg_logfile(); 
        ?>

    </body>
</html>

 
