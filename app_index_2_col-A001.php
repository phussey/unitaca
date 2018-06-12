<?php

/* 
 * Copyright (C) 2017 paul
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

<?php require './include/app_head_01.php'; ?>

<html>            
    <body onload="window.alert('Welcome to Unitaca Rev. Cand. 1.1.20170804-A001');">
        <?php require './include/app_session_data.php'; ?>
        <?php require './include/app_menu.php'; ?>         

        <h1 style="color:red; text-align:center;">Welcome</h1>

        <form name="logon" action="app_login.php" align="center" method="POST" >
            <input type="submit" value="Login">
        </form>

        <form name="register" action="#" align="center" method="POST" >
            <input type="submit" value="Register">
        </form>


        <?php require './include/app_footer.php'; ?>
        <?php msg_logfile(); ?>
    </body>        
</html>        
        
        
        
        
        
        
        
        

