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
<html>  
    <?php require './include/app_head_01.php'; ?>
    <?php require './include/app_menu.php'; ?>

    <?php

    function renderForm($first, $last, $error) { ?>

        <body>            
            <?php $_SESSION["app_message"] = $_SERVER['PHP_SELF'] . " ip=" . $_SERVER['REMOTE_ADDR'] . " " . $_SESSION["username"]; ?> 
            <?php require "./include/app_security.php"; ?>

            <form action="#" method="post">
                <div>
                    <strong>First : </strong> <input type="text" name="first" value="<?php echo $first; ?>" /><br/>
                    <strong>Last  : </strong> <input type="text" name="secondlastname" value="<?php echo $last; ?>" /><br/>
                    <p>* required</p>
                    <input type="submit" name="submit" value="Submit">
                </div>
            </form>

            <?php
            require('./app_connect.php');
            // check if the form has been submitted. If it has, start to process the form and save it to the database
            if (isset($_POST['submit'])) {
                // get form data, making sure it is valid
                $firstname = mysql_real_escape_string(htmlspecialchars($_POST['firstname']));
                $lastname = mysql_real_escape_string(htmlspecialchars($_POST['lastname']));
                // check to make sure both fields are entered
                if ($firstname == '' || $lastname == '') {
                    // generate error message
                    $error = 'ERROR: Please fill in all required fields!';
                    // if either field is blank, display the form again
                    renderForm($firstname, $lastname, $error);
                } else {
                    // save the data to the database
                    mysql_query("INSERT players SET firstname='$firstname', lastname='$lastname'") or die(mysql_error());
                    // once saved, redirect back to the view page
                    header("Location: app_client_view.php");
                }
            } else {
                // if the form hasn't been submitted, display the form
                renderForm('', '', '');
            }
            ?>

            <?php require './include/app_footer.php'; ?>
            <?php msg_logfile(); ?>

    </body>
</html>

