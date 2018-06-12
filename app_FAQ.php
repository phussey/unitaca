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

<html>            
    <body> 
        
        <?php             
            $_SESSION["app_message"] = $_SERVER['PHP_SELF'] . " ip=" .
                $_SERVER['REMOTE_ADDR'] . " " . $_SESSION["username"] . " " . $_SESSION["usersecuritylevel"];
        ?>
        
        <br><br><h1 style="color:red; text-align:center;">Frequently Asked Questions</h1><br>

         <h2>What is Unitaca used for?</h2>

        <p>Unitaca offers secure on-line access to portions of your electronic health records (EHR). It 
            enables you to securely use the Internet to receive and help manage information about your health. With 
            Unitaca, you can: 
        <pre>
            • Review test results 
            • View current medications & allergies 
            • Request medical appointments 
            • Request prescription refills 
            • Communicate electronically and securely with your clinic's medical care team  </p>
        </pre>

        <h2>Are there any requirements to use Unitaca?</h2>

        <p>You must be 18 years or older, have a valid Social Security #, and be a patient of a provider using the 
            Unitaca EHR or be a patient at many hospitals or emergency departments. 


        <h2>Are there any fees for using Unitaca?</h2>

        <p>Currently, there are no fees to use Unitaca. Please refer to the Unitaca Terms and Conditions for 
            additional information. 


        <h2>How do I sign up for Unitaca?</h2>

        <p>You can request access to Unitaca in various ways:

        <p>1) If you visit a clinic that uses the Unitaca systems can gather the necessary information from you 
            to issue you a Unitaca access code and instructions or assist you with in-room Unitaca sign-up.

        <p>2) If you visit a  hospital or emergency department, Patient Registration is able to gather the 
            necessary information from you to issue you a Unitaca access code and instructions.

        <p>This access code & instructions will enable you to login and create your own user ID and password and 
            activate your account.

        <p>Once you receive your one-time-use access code, please use it immediately to activate your 
            Unitaca Account, as the Code is only valid for 60 days. 


        <h2>Does every patient automatically have Unitaca?</h2>

        <p>No. Though we strongly encourage you to sign up for Unitaca, a Unitaca account will be offered 
            and you may decline. We respect your personal preference and we do not require anyone to become a 
            member of the Unitaca community. 


        SETTING UP
        <h2>How do I choose my personal Unitaca ID and password?</h2>

        <p>The instructions that come with your Unitaca access code direct you to the Unitaca homepage. 
            Once you use your access code, you will be prompted to create a login ID and password. 
            This is the ID you will use every time you log into Unitaca. Choose an ID and password that are unique 
            to you and easy for you to remember. Avoid using an ID or password that is easy for others to guess, 
            such as your first or last name. 
        <pre>
            • Your ID must be between 6 and 18 characters long. Only letters or numbers are allowed and it cannot 
            contain any spaces. Once selected, your Unitaca ID cannot be changed. 
            • Your password must be between 8 and 18 characters long and must include at least one number and 
            one letter. 
            • Remember to enter an e-mail address so Unitaca can notify you when you have new information to view. 
        </pre>

        <h2>What if I forget my Unitaca ID?</h2>

        <p>If you forget your Unitaca ID, you can have it emailed to you by clicking on the Forgot Unitaca ID Link 
            on the login page of Unitaca. Follow the instructions; correctly answer the security questions, and you 
            will be sent an email with your Unitaca ID. If you need further assistance in retrieving your Unitaca ID, 
            please contact the Unitaca Technical Support Desk . 

        <h2>What if I forget my password?</h2>

        <p>If you forget your password, you can set up a new one by clicking on the Forgot Password Link on the 
            login page of Unitaca. Follow the instructions; correctly answer your password reset question, and you
            will be allowed to reset your password. If you need further assistance in resetting your password, please 
            contact the Unitaca Technical Support Desk . 

        <h2>Can I email my clinic physician through Unitaca?</h2>

        <p>The message feature is for NON-URGENT messages only. For medical emergencies, dial 9-1-1.

        <p>Unitaca allows secure messaging to a member of your clinic's healthcare team. Once you have a 
            Unitaca account, any physician who you see at one of the participating medical clinics may be selected from a drop down menu.

        <p>You will NOT be able to send messages to your hospital or emergency department care teams, 
            unless the physician that cared for you in the hospital is also a physician you see in a clinic, such as an 
            orthopedic or cardiac surgeon, Family Medicine Resident. 

        <h2>How will I know when new information is available in Unitaca?</h2>

        <p>When you activate your personal Unitaca account, you will be asked to provide an email address. 
            Be sure to enter an email address so you can receive notifications about activity in Unitaca. As new 
            medical information becomes available in your Unitaca account, a notification will be sent to your email 
            address directing you to log into your secure Unitaca account for viewing. 

        <h2>When will I see information in Unitaca?</h2>

        <p>Medical information from hospital stays and emergency department visits will begin to show up in your 
            Unitaca account 36 hours after discharge, if you already have a Unitaca account. Depending on the 
            type of test, it may take several weeks for the result to be posted in Unitaca.

        <p>Medical information from clinic visits will begin to show up in Unitaca 48 hours after your visit, if you 
            already have a Unitaca account. Depending on the type of test, it may take several weeks for the result 
            to be posted in Unitaca.

        <p>Any tests done prior to setting up your Unitaca account may not automatically show up in Unitaca. 
            If you want to see this information, please talk with your provider about having it manually added to your 
            Unitaca account. 

        <h2>Will my clinic physician contact me through Unitaca?</h2>

        <p>When your physician releases medical information into your Unitaca account, a message may be included 
            to help you better understand the significance of the information you receive. If you have sent your 
            physician a message through Unitaca, your healthcare team may reply with a message sent to you 
            through your Unitaca account. 

        <h2>Whom do I call if I have questions about test results I see in Unitaca?</h2>

        <p>If the tests were done during an office visit, please contact your physician's office with questions.
            For hospital stays or emergency department visits, please follow-up with your primary care provider, 
            or specialist involved in your hospital stay who also provides care to you in a clinic, such as an orthopedic
            or cardiac surgeon.    

        <h2>If some of my health information on Unitaca is not correct, what should I do?</h2>

        <p>Your Unitaca information comes directly from your Unitaca's electronic health records. If the information 
            you believe to be in error is related to a visit in your doctor's office, please contact your doctor's office or 
            discuss with him/her at your next clinic visit.

        <p>If the medical information you believe to be in error is related to a hospital or emergency room visit, 
            Swedish requires that patients write a letter explaining what information you believe to be in error and 
            and why. This letter must include the your signature, date of birth and a photo copy of your 
            government-issued photo ID. 

        <h2>Can I give others access to my Unitaca account OR get access to a loved one's Unitaca account for 
            whom I am responsible?</h2>

        <p>Proxy Access (access to another person's medical information) may be requested by parents or legal 
            guardians of children under the age of 13, and by adult children or legal guardians of adults. If you are 
            an adult (18 years and older), you may request another person as proxy for your medical records.

        <p>For adult patients: The forms for proxy activation must be completed, signed, and accompanied by 
            photo identification for both the patient and the person designated as proxy. The proxy must provide 
            proof of guardianship or medical power of attorney. If the adult patient is unable to sign legal documents 
            and does not have either a legal guardian or active medical power of attorney, proxy access cannot be 
            assigned.

        <p>For pediatric patients: The forms for proxy activation must be completed, signed, and accompanied by 
            photo identification. If the proxy requestor is not the birth or adoptive parent of the child, legal 
            paperwork proving he/she is the legally recognized caregiver for the child is required.

        <h2>Can my spouse and I share one Unitaca account?</h2>

        <p>No, due to federal privacy regulations, an individual's medical information must be secured in an 
            individual account. Each adult must sign up for his/her own Unitaca account.

        <h2>From my Unitaca account, can I ask questions regarding a family member?</h2>

        <p>No. Your Unitaca account contains your personal medical information. When you send a message to your 
            provider, the communication is added to your electronic health record. If you ask a question about a 
            family member, it will appear in your health record and not your family member's health record, which could potentiallly jeopardize medical care. 


        TECHNICAL QUESTIONS
        <h2>Do I need any special equipment to use Unitaca on my Mac or PC?</h2>

        <p>Minimally, to access Unitaca, you will need: 
        <pre>
            • A personal computer, tablet or smartphone 
            • An Internet connection 
            • An Internet connection and personal email address.
        </pre>
        <h2>How is Unitaca secure?</h2>

        <p>We take great care to ensure your health information is kept private and secure. Access to 
            information is controlled through secure access codes, personal IDs, and passwords. Each person 
            controls his/her password, and the account cannot be accessed without that password.</p>

        <p>Further, Unitaca uses the latest 128-bit SSL encryption technology with no caching to automatically 
            encrypt your session with Unitaca. Unlike conventional e-mail, all Unitaca messaging is done while 
            you are securely logged on to our website. </p>


        <h2>I was logged out of Unitaca, what happened?</h2>

        <p>We aim to protect your privacy and security of your information. While logged into Unitaca, if your 
            eyboard remains idle for 10 minutes or more, you will be automatically logged out of Unitaca. We 
            recommend that you log out of your Unitaca session if you need to leave your computer for even a short 
            period of time. </p>

        <h2>Is there a Unitaca app for my smart phone?</h2>

        <p>Yes. From the Unitaca homepage at https://www.unitaca.co/unitaca/mobile/ 
            you can use the app on your cellphone browser as the system is multiplatform compliant. 

        <h2>Whom do I call if I have additional technical questions?</h2>

        <p>If you have additional technical questions, please contact the Unitaca Technical Support Desk . 
            For other clients , please contact their Unitaca Help Desk at support@unitaca.com. 

    </body>
    
</html>

<?php msg_logfile(); ?>
