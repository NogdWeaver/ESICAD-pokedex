<?php
require_once("head.php");
?>


<form>
    <p>
        <label for = "nom">
            Nom
        </label>
        <input type = "text" id = "nom" name = "nom" placeholder="Votre nom...">
    </p>
    <p>
        <label for = "prenom">
            Prénom
        </label>
        <input type = "text" id = "prenom" name = "prenom" placeholder="Votre prénom...">
    </p> 
    <p>       
        <label for = "pseudo">
            Pseudo
        </label>
        <input type = "text" id = "pseudo" name = "pseudo" placeholder="Votre Pseudo...">
    </p>  
    <p>      
        <label for = "mdp" >
            Mot de passe
        </label>
        <input type = "password" id = "mdp" name = "mdp" placeholder="MOT DE PASSE">
    </p>
        
</form>


<?php
require_once("footer.php");
?>