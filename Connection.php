<?php
require_once("head.php");
?>


<form method = "post" action="Connection.php">
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
		<input type="submit" value="Se Connecter" name = "ok" >
	</p>
		
</form>


<?php

require_once("database-connection.php");



//$sql = "SELECT * FROM utilisateurs WHERE pseudo ='".$_POST['pseudo']."' AND pswd = '". $_POST['mdp']. "'";

//$result = mysqli_query($databaseConnection,$sql);



	if(isset($_POST['ok'])){
	

		if(empty($_POST["pseudo"]) or empty($_POST["mdp"])){
			echo "Remplissez tout les champs svp";
		}
		else{

			if(mysqli_num_rows($value = mysqli_query($databaseConnection,
			"SELECT * FROM utilisateurs WHERE pseudo ='".$_POST['pseudo']."' AND pswd = '". md5($_POST['mdp']). "'" )) == 1 ){


				
				$value = mysqli_fetch_assoc($value);


				$_SESSION['session'] = [
					'pseudo' => $value["pseudo"],
					'prenom' => $value["PRENOM"],
					'nom' => $value["NOM"]
				];


				echo  $_SESSION["session"]['prenom'] . " " .  $_SESSION["session"]['nom'];



				

			}
			else{
				echo "0 results";
			}

		}


	}


?>
 


<?php
require_once("footer.php");
?>