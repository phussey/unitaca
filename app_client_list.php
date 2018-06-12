<?php session_start(); ?>
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
<!DOCTYPE html>
<html>        

    <?php require './include/app_head_01.php'; ?>
    <?php require './include/app_menu.php'; ?> 

    <body>
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

        <br>
        <form action="../php/select-action.php" method="post">
            <select name="cliients">
                <option selected="selected">Choose one</option>
                <?php
                // A sample product array
                $clients = array("Mobile", "Laptop", "Tablet", "Camera");

                // Iterating through the product array
                foreach ($clients as $item) {
                    ?>
                    <option value="<?php echo strtolower($item); ?>">
                        <?php echo $item; ?></option>
                <?php } ?>
            </select>
            <input type="submit" value="Submit">
        </form>

        <?php
//            echo htmlentities($_GET["client"]) . "<br/>";
        $client = $_GET["client"];
        $con = mysqli_connect("localhost", "paulhuss_paul", "A1gheh01");
        if (!$con) {
            exit('Connect Error (' . mysqli_connect_errno() . ') ' . mysqli_connect_error());
        }
        mysqli_set_charset($con, 'utf-8');
        mysqli_select_db($con, "paulhuss_unitaca");
        $client = mysqli_real_escape_string($con, $client);
        $clientdirectory = mysqli_query($con, "SELECT ResidentNumber FROM clientdirectory WHERE ResidentNumber='" . $client . "'");

        if (!mysqli_num_rows($clientdirectory)) {
            echo "The person " . $client . " is not found. Please check the spelling and try again";
        }
        ?>

        <h1 style="color:red; text-align:center;">Client List</h1>

        <table border="red">
            <tr>                
                <th>Client Number</th>
                <th>Client Name</th>
                <th>Case Worker</th>
            </tr>

            <?php
//            $result = mysqli_query($con, "SELECT ResidentNumber, Resident, ResidentCaseWorker FROM clientdirectory WHERE ResidentNumber=" . $client);
            $result = mysqli_query($con, "SELECT * FROM clientdirectory");
            while ($row = mysqli_fetch_array($result)) {
                echo "<tr><td>" . $row[0] . "</td>";
                echo "<td>" . $row[1] . "</td>";
                echo "<td>" . $row[2] . "</td>";
                echo "<td>" . $row[3] . "</td>";
                echo "<td>" . $row[4] . "</td>";
                echo "<td>" . $row[5] . "</td>";
                echo "<td>" . $row[6] . "</td>";
                echo "<td>" . $row[7] . "</td>";
                echo "<td>" . $row[8] . "</td>";
                echo "<td>" . $row[9] . "</td>";
                echo "<td>" . $row[10] . "</td>";
                echo "<td>" . $row[11] . "</td></tr>\n";
            }
            mysqli_free_result($result);
            ?>
        </table>

    <?php
    mysqli_free_result($clientdirectory);
    mysqli_close($con);
    ?>

    <?php require './include/app_footer.php'; ?>
    <?php msg_logfile(); ?>

</body>
</html>
