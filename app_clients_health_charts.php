<?php session_start(); ?>
<!DOCTYPE html>

<?php
// GNU License
/*
 * Copyright (C) 2016 pH
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

       
        <?php
            $con = mysqli_connect("localhost", "paulhuss_paul", "A1gheh01", "paulhuss_unitaca") or die(mysql_error());
            mysqli_set_charset($con, 'utf-8');
            $sql = "SELECT * FROM clientdirectory ORDER BY client";
            $result = mysqli_query($con, $sql) or die("<br>Unable to get Client." . mysql_errno());
            $row = mysqli_fetch_array($result);
        ?>

        <form name='frm_selectclient' action='#' method='GET'>            
            <?php
                if(!(isset($currentClient))) {
                    $currentClient = $row['clientNumber'];
                }
            ?>
            <br><br>
           
            <select name='selectclient'>
                <option selected hidden>Select Client</option>

                    <option value=<?php $row['clientNumber']; ?></option>
                    <?php
                        while ($row = mysqli_fetch_array($result)) 
                        {
                            echo "<option value='" . $row['clientNumber'] . "'>" . $row['client'] . "</option>";
                        }
                    ?>
            </select>
            
            <input type="submit" value="Submit">        
            <input type="button" value="Previous">        
            <input type="button" value="Next">        
            <input type="button" value="Update">     
            <input type="button" value="Cancel">           
        </form>

        <?php do { ?>
                <fieldset id='frm-client' name="Client>" >
                    
                    <legend>Client Chart</legend>  
                    <img src="./images/clients/ph-2016-0910-A001.png" height="135" width="145"/><br>
                    
                    Name:<br>   <input type="text"  value="<?php echo($row['client']) ?>"> <br>
                    ID: <br>    <input type="text"  value="<?php echo($row['clientNumber']) ?>"><br> 
                    Phone: <br> <input type="text"  value="<?php echo($row['PhoneNumber']) ?>"> <br>
                    DOB: <br>   <input type="text"  value="<?php echo($row['DateofBirth']) ?>">
                </fieldset>

                <table id="app_chart_medications">
                    <caption>Medication(s)</caption>
                    <th> Medication </th>
                    <th> Dosage</th>
                    <th> UoM </th>
                    <th> Amount</th>
                    <th> Frequency</th>
                    <th> Notes</th>

                    <?php for($i = 0; $i < 4; $i++) { ?>
                        <tr>
                            <td>
                                <?php echo($row['Medication']) ?>                              
                            </td>
                            <td>
                                Example
                            </td>
                            <td>
                                Example
                            </td>
                            <td>
                                Example
                            </td>
                            <td>
                                Example
                            </td>
                            <td>
                                Example
                            </td>
                        </tr>
                    <?php } ?>    
                </table>
                
               <table id="app_appointments">
                    <caption>Appointments</caption>
                    <th> Appointments</th>
                    <th> Dosage</th>
                    <th> UoM </th>
                    <th> Amount</th>
                    <th> Frequency</th>
                    <th> Notes</th>

                    <?php for($i = 0; $i < 4; $i++) { ?>
                        <tr>
                            <td>
                                <?php echo($row['Appointment']) ?>                              
                            </td>
                            <td>
                                Example
                            </td>
                            <td>
                                Example
                            </td>
                            <td>
                                Example
                            </td>
                            <td>
                                Example
                            </td>
                            <td>
                                Example
                            </td>
                        </tr>
                    <?php } ?>    
                </table>
        
               <table id="app_diet">
                    <caption>Diet</caption>
                    <th> Diet </th>
                    <th> Amount</th>
                    <th> UoM </th>
                    <th> Amount</th>
                    <th> Frequency</th>
                    <th> Notes</th>

                    <?php for($i = 0; $i < 4; $i++) { ?>
                        <tr>
                            <td>
                                <?php echo($row['Diet']) ?>                              
                            </td>
                            <td>
                                Example
                            </td>
                            <td>
                                Example
                            </td>
                            <td>
                                Example
                            </td>
                            <td>
                                Example
                            </td>
                            <td>
                                Example
                            </td>
                        </tr>
                    <?php } ?>    
                </table>
      
        <?php } while($row=mysqli_fetch_row($result)); ?>   

        <?php
            mysqli_free_result($result);
            mysqli_close($con);
        ?>    
 
   
    </body>     
</html>
     
<?php msg_logfile(); ?>
 