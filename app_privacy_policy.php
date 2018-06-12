
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
        <?php $_SESSION["app_message"] = $_SERVER['PHP_SELF'] . " from ip " . $_SERVER['REMOTE_ADDR']; ?> 

        <?php require "./include/app_security.php"; ?>

        <br><br><h1 style="color:red; text-align:center;">Our Privacy Policy</h1><br>

        <p>
            This privacy policy sets out how “Unitaca” uses and protects any information that you give “Unitaca” when you use this website.

            “Unitaca” is committed to ensuring that your privacy is protected. Should we ask you to provide certain information by which you can be identified when using this website, then you can be assured that it will only be used in accordance with this privacy statement.

            “Unitaca” may change this policy from time to time by updating this page. You should check this page from time to time to ensure that you are happy with any changes. This policy is effective from 2000 to 2025.

            <h2>What we may collect</h2>

            We may collect the following information:

            <ul>
                <li> name and job title</li><br>
                <li> contact information including email address</li><br>
                <li> demographic information such as postcode, preferences and interests</li><br>
                <li> other information relevant to customer surveys and/or offers</li><br>
            </ul>

            <h2>What we do with the information we gather</h2>

            We require this information to understand your needs and provide you with a better service, and in particular for the following reasons:
            <ul>
                <li>Internal record keeping.</li><br>
                <li>We may use the information to improve our products and services.</li><br>
                <li>We may periodically send promotional emails about new products, special offers or other information which we think you may find interesting using the 
                    email address which you have provided.</li><br>
                <li>From time to time, we may also use your information to contact you for market research purposes. We may contact you by email. We may use the 
                    information to customise the website according to your interests.</li><br>
                <li>Security</li><br>
            </ul>
            <br>

            <h2>How we use cookies</h2>

            A cookie is a small file which asks permission to be placed on your computer’s hard drive. Once you agree, the file is added and the cookie helps analyse web 
            traffic or lets you know when you visit a particular site. Cookies allow web applications to respond to you as an individual. The web application can tailor its 
            operations to your needs, likes and dislikes by gathering and remembering information about your preferences.

            We use traffic log cookies to identify which pages are being used. This helps us analyse data about webpage traffic and improve our website in order to tailor 
            it to customer needs. We only use this information for statistical analysis purposes and then the data is removed from the system.

            Overall, cookies help us provide you with a better website, by enabling us to monitor which pages you find useful and which you do not. A cookie in no way 
            gives us access to your computer or any information about you, other than the data you choose to share with us.

            You can choose to accept or decline cookies. Most web browsers automatically accept cookies, but you can usually modify your browser setting to decline 
            cookies if you prefer. This may prevent you from taking full advantage of the website.

            <h2>Links to other websites</h2>

            Our website may contain links to other websites of interest. However, once you have used these links to leave our site, you should note that we do not 
            have any control over that other website. Therefore, we cannot be responsible for the protection and privacy of any information which you provide whilst 
            visiting such sites and such sites are not governed by this privacy statement. You should exercise caution and look at the privacy statement applicable to the 
            website in question.

            <h2>Controlling your personal information</h2>

            You may choose to restrict the collection or use of your personal information in the following ways. 

            Whenever you are asked to fill in a form on the website, look for the box that you can click to indicate that you do not want the information to be used by 
            anybody for direct marketing purposes if you have previously agreed to us using your personal information for direct marketing purposes, you may change 
            your mind at any time by writing to or emailing us at <a href="support@unitaca.com"> Unitaca Support. </a> We will not sell, distribute or lease your personal information to third parties unless we have your permission or are required by law to do so. We may use 
            your personal information to send you promotional information about third parties which we think you may find interesting if you tell us that you wish this 
            to happen.

            You may request details of personal information which we hold about you under the Data Protection Act 1998. A small fee may be payable. If you would like 
            a copy of the information held on you, please email us at <a href="support@unitaca.com"> Unitaca Support. </a>

            If you believe that any information we are holding on you is incorrect or incomplete, please write to or email us as soon as possible. We will promptly correct 
            any information found to be incorrect.
        </p>
    </body>
</html>
<?php msg_logfile(); ?>
