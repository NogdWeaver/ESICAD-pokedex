<?php
require_once("head.php");
?>


<table>
    <thead>
        <tr>
            <th>
            Numéro de pokémon
            </th>
            <th>
            Nom 
            </th>
            <th>
            Portrait
            </th>
            <th>
            Point de Vie
            </th>
            <th>
            Point d'Attaque
            </th>
            <th>
            Point de défense
            </th>
            <th>
            Point de Vitesse
            </th>
            <th>
            Point spécial
            </th>
            <th>
            Type 1
            </th>
            <th>
            Type 2
            </th>
        </tr>
    </thead>
    <tbody>

<?php

require_once("database-connection.php");
$sql = "SELECT * FROM pokemon WHERE IDPOKEMON =" . $_GET["id"] ;
$result = mysqli_query($databaseConnection,$sql, MYSQLI_USE_RESULT);


if(mysqli_num_rows($result) > 0){
    while($row = mysqli_fetch_assoc($result)){
        echo $row["NOMPOKEMON"];
    }
}
else {
    echo "0 results";

}

 

?>

    </tbody>
</table>



<?php
require_once("footer.php");
?>