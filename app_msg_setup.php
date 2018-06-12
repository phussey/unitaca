<?php

$_SESSION["app_message"] = $_SERVER['PHP_SELF'] .
        " from ip " .
        $_SERVER['REMOTE_ADDR'];
?> 
