<?php session_start(); ?>
<!DOCTYPE html>

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
<?php
    $_SESSION["app_name"] = "Unitaca";
    $_SESSION["app_version"] = "2017-RC1.2.1";
    $_SESSION["logfile"] = "./log/app.log";
    $_SESSION["error_logfile"] = "./log/app_error.log";
?>       
<?php require './include/app_head_01.php'; ?>
<?php require './include/app_menu.php'; ?>    

<html>         
    <body> 


        <div style="width: 90%; overflow: hidden;">
            <br><br><h1 style="color:red; text-align:center;">Welcome</h1><br>
            <div style="width: 600px; float: left;"> 
                Unitaca (Unit-aca) offers secure on-line access to portions of your electronic health records (EHR).
                It enables you to securely use the Internet to receive and help manage information about 
                your health. 

                <pre style="color:blue">
        With Unitaca, you can:

            • Review medical test results. 
            • View current medications & allergies. 
            • Request medical appointments. 
            • Request prescription refills.
            • Communicate electronically and securely 
              with your clinic's medical care team. 
                </pre>
            </div>

            <div style="margin-left: 700px;"> 
                <img src="./images/GlobalStetheschope.png" style="float:right; margin-right:10px; width:60%; height:75%; border:none;"
                     alt="HIPAA" />                 
                Most of a persons health records are scattered amongst various hospitals, institutions 
                and private medical practices.Unitaca is a system designed for the permanent, 
                personal recording of life long health information.
                Welcome to AsysCare: a Medical System used by Individuals, Physicians, Nurses and Caregivers to manage Patient 
                and Resident health care and health care outcomes. This system is used in sub-acute care facilities such as 
                Nursing Homes, Residential Care Homes and Home-Based sub-acute environments. 
                This Internet communications tool and database provides Caregivers and Administrators secure access to information
                regarding Patients and Residents from any location with access to a web browser -  such as a computer, 
                web-enabled cell phone or Personal Digital Assistant devices.Patients and Residents can monitor their 
                individual Medical Records to ensure that this Information is up-to-date and correct or to report on 
                any subject matter they may feel their Health Care Providers need to better plan and administer to their needs.
            </div>                

        </div>

        <form name="logon" action="app_login.php" align="center" method="POST" >
            <input type="submit" value="Login">
        </form>

        <form name="register" action="#" align="center" method="POST" >
            <input type="submit" value="Register">
        </form>

    </body>        
</html>

<?php
    $_SESSION["app_message"] = $_SERVER['PHP_SELF'] . " ip=" . $_SERVER['REMOTE_ADDR'] . " " . $_SESSION["username"];
    msg_logfile();
?>
<?php require './include/app_footer.php'; ?>        
<?php msg_logfile();?>
