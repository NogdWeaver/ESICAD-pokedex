<?php
require_once("head.php");
?>


<?php


    if(isset($_SESSION['session'])){
        echo "<h1>" ."Sac à dos de " .  $_SESSION['session']['prenom'] . "</h1>";

        
        
    }

?>


<?php
require_once("footer.php");
?>