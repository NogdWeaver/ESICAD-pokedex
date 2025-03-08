<!-- 
    Ce fichier représente la page de liste par type de pokémon du site.
-->
<?php
require_once("head.php");
?>

<?php
    require_once("database-connection.php");
    $sql = "SELECT NOMTYPES,  GROUP_CONCAT(pokemon.NOMPOKEMON) 
            FROM typespokemon 
            JOIN pokemon 
            on pokemon.idType1 = typespokemon.IDType 
                or pokemon.idType2 = typespokemon.IDType 
            GROUP BY IDType;";

$result = mysqli_query($databaseConnection, $sql);



if(mysqli_num_rows($result) > 0){

    echo  "<table>";
    while($row = mysqli_fetch_assoc($result)){
        echo "<tr>" . "<td>" . 
        $row["NOMTYPES"] . "</td>" .
        "<td>". 
        $row["GROUP_CONCAT(pokemon.NOMPOKEMON)"] ."</td>". "</tr>";
    
    }
    echo  "</table>" ;        

}
else{
    echo "0 results";
}

?>


<?php
require_once("footer.php");
?>



<!-- 
Requette SQL pour cette page
 

SELECT NOMTYPES,  GROUP_CONCAT(pokemon.NOMPOKEMON)
FROM typespokemon 
JOIN pokemon on pokemon.idType1 = typespokemon.IDType 
or pokemon.idType2 = typespokemon.IDType 
GROUP BY IDType;
 
 Bien mais il manque le deuxième type -->