<?php session_start(); ?>

<!DOCTYPE html>
<html>
    <body>


        <?php
        if (!$_SESSION['app_name']) {
            echo ('Please login.');
        }
        ?>

        <div class="menu">
            <?php require './include/app_menu_SQL.php'; ?>
        </div>

        <?php
        require './include/app_head_01.php';
        require './include/.php';
        ?>

        <br>
        <h2>SQL unitaca connection testing</h2>

        <?php
        $servername = "localhost";
        $username = "paulhuss_paul";
        $passwrd = "A1gheh01";
        $dbname = "unitaca";

        $conn = mysql_connect($servername, $username, $passwrd);
        echo "<br>Connection information: " . $conn;

        if (!$conn) {
            die('<br>Could not connect: ' . mysql_error());
        }
        $sql = 'SELECT Date, NewsItemDetail
            FROM generalnews LIMIT 7';

        mysql_select_db('paulhuss_unitaca');

        $retval = mysql_query($sql, $conn);

        if (!$retval) {
            die('<br>Could not retreive data: ' . mysql_error());
        }
        while ($row = mysql_fetch_array($retval, MYSQL_ASSOC)) {
            echo "<br>Date :{$row['Date']}   " .
            "<br>Detail : {$row['NewsItemDetail']}  " .
            "<br>--------------------------------<br>";
        }
        echo "<br>Fetched data successfully\n";
        echo '<br>Freeing result set ' . $result . '.';
        mysql_free_result($result);

        echo '<br>Closing connection';
        mysql_close($conn);
        ?>

        <?php require './include/app_footer.php'; ?>

    </body>
</html>