<!DOCTYPE html>
<?php session_start(); ?>

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

<?php require './include/app_head_01.php'; ?>
<?php require './include/app_menu.php'; ?>    
<?php require './include/app_footer.php'; ?>        


<html>

    <body>    
       <br><br><h1 style="color:red; text-align:center;" >Test Page A001</h1><br>

        <?php $_SESSION['mysecuritylevel'] = "1"; ?>
        <?php $usersecuritylevel = $_SESSION['usersecuritylevel']; ?>

        <?php $_SESSION["app_message"] = $_SERVER['PHP_SELF'] . " ip=" . $_SERVER['REMOTE_ADDR'] . " " . $_SESSION["username"] . " usersecuritylevel = " . $usersecuritylevel; ?> 
        <?php require "./include/app_security.php"; ?>
        <div>
            <table cellspacing="1" cellpadding="0" border="0" bgcolor="black" id="shell" height=100% width=100%>
                <tr height="300">
                    <td bgcolor="pink">
                        <table id="navigation" title="Navigation" border="0" height="100% width=10%">
                            <tr>
                                <td>
                                    <a href="http://www.who.int/" target="_blank">World Health Organization</a> <br>              
                                    <a href="http://en.wikipedia.org/wiki/ICD-10/"target="_blank">WHO Wiki </a><br>
                                    <a href="http://www.cdc.gov/" target="_blank">CDCP </a> <br>           
                                    <a href="./app_privacy_policy.php"target="_blank">Privacy Policy </a><br>
                                    <a href="https://www.facebook.com/groups/1244060438946015/?ref=aymt_homepage_panel"target="_blank">Facebook </a><br>
                                    <a href="http://twitter.com/" target="_blank">Twitter</a> <br>
                                    <a href="http://google.com/" target="_blank">Google</a>
                                </td></tr>
                        </table>
                    </td><td bgcolor="white">
                        <table title="Content" id="content" border="0">
                            <tr>
                                <td>        
                                <?php
                                    $con = mysqli_connect("localhost", "paulhuss_paul", "A1gheh01", "paulhuss_unitaca") or die(mysql_error());
                                    mysqli_set_charset($con, 'utf-8');
                                    $sql = "SELECT client FROM clientdirectory";
                                    $result = mysqli_query($con, $sql) or die("<br>Unable to get results " . mysql_errno());

                                    echo "<select name='selectclient'>";
                                    while ($row = mysqli_fetch_array($result)) {
                                        echo "<option value='" . $row['client'] . "'>" . $row['client'] . "</option>";
                                    }
                                    echo "</select>";
                                ?>

                                    <script>
                                        var x = document.getElementById("selectclient").value;
                                        window.alert(x);
                                        document.getElementById("client").innerHTML = x;
                                    </script>

                                    <?php
                                    $_SESSION['previous_client'] = $_SESSION['current_client'];
                                    $_SESSION['current_client'] = 'client';
                                    echo("<br>" . $_SESSION['current_client'] . "<br>");
                                    ?>    

                                    <form max-width:320px  width:50%>
                                          <fieldset name="personal">
                                            <legend>Personal</legend>  
                                            Name: <input type="text" name="client" value=<?php 'client' ?>><br>
                                            Phone: <input type="text"value="text"><br>
                                            Email: <input type="text"><br>
                                            Date of birth: <input type="text">
                                        </fieldset>

                                        <fieldset name="address">
                                            <legend>Address</legend>
                                            Address: <input type="text"><br>
                                            Address: <input type="text"><br>
                                            Province: <input type="text"><br>             
                                            City: <input type="text"><br>             
                                            Country: <input type="text"><br>
                                            Mobile: <input type="text">
                                        </fieldset>                                    
                                        <fieldset name="address">
                                            <legend>Medicare</legend>
                                            Medicare #: <input type="text"><br>
                                            Address: <input type="text"><br>
                                            Province: <input type="text"><br>             
                                            City: <input type="text"><br>             
                                            Country: <input type="text"><br>
                                            Mobile: <input type="text">
                                        </fieldset>                                    
                                        <fieldset name="address">
                                            <legend>Address</legend>
                                            Address: <input type="text"><br>
                                            Address: <input type="text"><br>
                                            Province: <input type="text"><br>             
                                            City: <input type="text"><br>             
                                            Country: <input type="text"><br>
                                            Mobile: <input type="text">
                                        </fieldset>                                    
                                        <fieldset name="address">
                                            <legend>Address</legend>
                                            Address: <input type="text"><br>
                                            Address: <input type="text"><br>
                                            Province: <input type="text"><br>             
                                            City: <input type="text"><br>             
                                            Country: <input type="text"><br>
                                            Mobile: <input type="text">
                                        </fieldset>                                    
                                        <fieldset name="address">
                                            <legend>Address</legend>
                                            Address: <input type="text"><br>
                                            Address: <input type="text"><br>
                                            Province: <input type="text"><br>             
                                            City: <input type="text"><br>             
                                            Country: <input type="text"><br>
                                            Mobile: <input type="text">
                                        </fieldset>                                    
                                        <fieldset name="address">
                                            <legend>Address</legend>
                                            Address: <input type="text"><br>
                                            Address: <input type="text"><br>
                                            Province: <input type="text"><br>             
                                            City: <input type="text"><br>             
                                            Country: <input type="text"><br>
                                            Mobile: <input type="text">
                                        </fieldset>                                    
                                        <fieldset name="address">
                                            <legend>Address</legend>
                                            Address: <input type="text"><br>
                                            Address: <input type="text"><br>
                                            Province: <input type="text"><br>             
                                            City: <input type="text"><br>             
                                            Country: <input type="text"><br>
                                            Mobile: <input type="text">
                                        </fieldset>                                    
                                        <fieldset name="address">
                                            <legend>Address</legend>
                                            Address: <input type="text"><br>
                                            Address: <input type="text"><br>
                                            Province: <input type="text"><br>             
                                            City: <input type="text"><br>             
                                            Country: <input type="text"><br>
                                            Mobile: <input type="text">
                                        </fieldset>                                    
                                        <fieldset name="address">
                                            <legend>Address</legend>
                                            Address: <input type="text"><br>
                                            Address: <input type="text"><br>
                                            Province: <input type="text"><br>             
                                            City: <input type="text"><br>             
                                            Country: <input type="text"><br>
                                            Mobile: <input type="text">
                                        </fieldset>                                    
                                        <fieldset name="address">
                                            <legend>Address</legend>
                                            Address: <input type="text"><br>
                                            Address: <input type="text"><br>
                                            Province: <input type="text"><br>             
                                            City: <input type="text"><br>             
                                            Country: <input type="text"><br>
                                            Mobile: <input type="text">
                                        </fieldset>                                    
                                        <fieldset name="address">
                                            <legend>Address</legend>
                                            Address: <input type="text"><br>
                                            Address: <input type="text"><br>
                                            Province: <input type="text"><br>             
                                            City: <input type="text"><br>             
                                            Country: <input type="text"><br>
                                            Mobile: <input type="text">
                                        </fieldset>                                    
                                        <fieldset name="address">
                                            <legend>Address</legend>
                                            Address: <input type="text"><br>
                                            Address: <input type="text"><br>
                                            Province: <input type="text"><br>             
                                            City: <input type="text"><br>             
                                            Country: <input type="text"><br>
                                            Mobile: <input type="text">
                                        </fieldset>                                    
                                        <fieldset name="address">
                                            <legend>Address</legend>
                                            Address: <input type="text"><br>
                                            Address: <input type="text"><br>
                                            Province: <input type="text"><br>             
                                            City: <input type="text"><br>             
                                            Country: <input type="text"><br>
                                            Mobile: <input type="text">
                                        </fieldset>                                    
                                        <fieldset name="address">
                                            <legend>Address</legend>
                                            Address: <input type="text"><br>
                                            Address: <input type="text"><br>
                                            Province: <input type="text"><br>             
                                            City: <input type="text"><br>             
                                            Country: <input type="text"><br>
                                            Mobile: <input type="text">
                                        </fieldset>                                    
                                        <fieldset name="address">
                                            <legend>Address</legend>
                                            Address: <input type="text"><br>
                                            Address: <input type="text"><br>
                                            Province: <input type="text"><br>             
                                            City: <input type="text"><br>             
                                            Country: <input type="text"><br>
                                            Mobile: <input type="text">
                                        </fieldset>                                    
                                        <fieldset name="address">
                                            <legend>Address</legend>
                                            Address: <input type="text"><br>
                                            Address: <input type="text"><br>
                                            Province: <input type="text"><br>             
                                            City: <input type="text"><br>             
                                            Country: <input type="text"><br>
                                            Mobile: <input type="text">
                                        </fieldset>
                                    </form>
                                    <?php mysqli_free_result($result); ?>
                                    <?php mysqli_close($con); ?>
                                </td></tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
        <?php msg_logfile(); ?>    
    </body>        
</html>
