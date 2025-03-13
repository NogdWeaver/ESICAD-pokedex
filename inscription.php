<?php
require_once("head.php");
?>



<form method = "post" action="inscription.php">
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
        <input type = "password" id = "mdp" name = "mdp" placeholder="Votre mot de passe...">
    </p>
    <p>
        <input type="submit" value="S'inscrire" name = "ok" >
    </p>
        
</form>


<?php

    require_once("database-connection.php");


        if(isset($_POST['ok'])){
            
            if(empty($_POST["nom"])  or empty($_POST["prenom"]) or empty($_POST["pseudo"]) or empty($_POST["mdp"])){
                echo "Remplissez tout les champs svp";
            }
            else{
                if(mysqli_num_rows(mysqli_query($databaseConnection,"SELECT * FROM utilisateurs
            WHERE pseudo ='".$_POST['pseudo']."'" )) == 1 ){
                    echo "Ce pseudo est déjà utilisé";
                }
                else{
                    mysqli_query($databaseConnection, "INSERT INTO utilisateurs SET nom='".$_POST['nom']."',
                                 prenom='".$_POST['prenom']."', pseudo='".$_POST['pseudo']."', pswd='".md5($_POST['mdp'])."'" );
                    echo "Vous êtes inscrit!!";
                }
            }

        }


?>




<?php
require_once("footer.php");
?>