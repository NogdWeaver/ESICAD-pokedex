<?php
    global $nomsession;

    if(isset($_SESSION['session'])){
    echo $nomsession;
    }
    else{
        var_dump($nomsession);
        echo "sonnovabitch" ;
    }

?>