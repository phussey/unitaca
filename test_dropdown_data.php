<?php session_start(); ?>
/*
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
    */

    <!DOCTYPE html>
    <html>        

        <?php require './include/app_head_01.php'; ?>
        <div "menu"  <?php require './include/app_menu.php'; ?> </div>

        <body>
            <?php $_SESSION["app_message"] = $_SERVER['PHP_SELF'] . " ip=" . $_SERVER['REMOTE_ADDR'] . " " . $_SESSION["username"]; ?> 

            <?php require "./include/app_security.php"; ?>

            <form action="../php/select-action.php" method="post">
                <select name="cliients">
                    <option selected="selected">Choose one</option>

                    <?php
                    $clients = array("Mobile", "Laptop", "Tablet", "Camera");

                    foreach ($clients as $item) {
                        ?>
                        <option value="<?php echo strtolower($item); ?>">
                            <?php echo $item; ?></option> <?php } ?>             

                </select>
                <input type="submit" value="Submit">
            </form>-->    

            <?php require './include/app_footer.php'; ?>
            <?php msg_logfile(); ?>

        </body>
    </html>