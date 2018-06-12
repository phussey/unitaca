<?php session_start(); ?>
<!DOCTYPE html>
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
<?php require './include/app_head_01.php'; ?>

<html>            
    <body>
        <?php require './include/app_session_data.php'; ?>
        <?php require './include/app_menu.php'; ?> 
        <h1 style="color:darkblue; text-align:center;">Welcome</h1>

        <table border="1
               "; align="center"; width="90%">        

            <td width="33%">
                <p> Unitaca (Unit-aca) offers secure on-line access to portions of your electronic health records (EHR).
                    It enables you to securely use the Internet to receive and help manage information about 
                    your health. 
                </p>

                <pre style="color:blue">
    With Unitaca, you can:
    • Review medical test results. 
    • View current medications & allergies. 
    • Request medical appointments. 
    • Request prescription refills.
    • Communicate electronically and securely 
      with your clinic's medical care team. 
                </pre>
            </td>

            <td width="33%"> 
                <img src="./images/GlobalStetheschope.png" style="float:center; margin-right:0px; width:100%; height:75%; border:none;"
                     "alt="HIPAA" /> 
            </td>  

            <td width="33%"; margin-right:3px>                    
                <p>
                    Most of a persons health records are scattered amongst various hospitals, institutions 
                    and private medical practices.Unitaca is a system designed for the permanent, 
                    personal recording of life long health information.        
                </p>
            </td> 
        </table>

            <br>

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
