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
<html>
    <body>

        <div class="menu">
            <?php require './include/app_menu.php'; ?>
            <?php require './include/app_head_01.php'; ?>
        </div>

    <center>
        Join Us
        <button> onclick="./index.php'''>Home</button >
        <form name ="loginreturn" action="index.php" method="POST" >
            <input type="submit" value="Home">
        </form>

        <?php require './include/app_footer.php'; ?>

    </center>

    <script>
        location(index.php);
        exit;
    </script>        

</body>
</html>