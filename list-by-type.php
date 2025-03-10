<!-- 
    Ce fichier représente la page de liste par type de pokémon du site.
-->
<?php
require_once("head.php");
?>

<table>
    <thead>
        <tr>
            <th>
            Type
            </th>
            <th>
            Pokemon
            </th>
        </tr>
    </thead>
    <tbody>

<!-- SECTION EN TRAVEAUX, A RECUPERER SI JAMAIS -->

<?php

                                                                        /*

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
                                                                                    */
?>

<!-- FIN DES TRAVAUX -->




<!-- 
Requette SQL pour cette page
 


    LISTE AVEC GROUP CONCAT ( PAS CLIQUABLE ):

   <?php /*

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

*/    ?>
   



TEST Pour rendre les noms des pokemons cliquable : 

SELECT t1.NOMTYPES, t2.NOMTYPES, NOMPOKEMON
FROM pokemon
JOIN typespokemon AS t1
	ON t1.IDType = pokemon.idType1
LEFT JOIN typespokemon AS t2
	ON t2.IDType = pokemon.idType2

-->


    <?php

require_once("database-connection.php");
$sql = "SELECT NOMTYPES, pokemon.NOMPOKEMON, IDType
FROM typespokemon
JOIN pokemon ON pokemon.idType1 = typespokemon.IDType or pokemon.idType2 = typespokemon.IDType
;";

$result = mysqli_query($databaseConnection, $sql);




if(mysqli_num_rows($result) > 0){

    $type = 0;

    while($row = mysqli_fetch_assoc($result)){

        echo "<tr>"."<td>";

        if($type != $row["IDType"]-'0'){

            $type = $row["IDType"]-'0'; 
            
            echo $row["NOMTYPES"] ."</td>" ;
        }
        else {
            echo  "<td>".$row["NOMPOKEMON"]."</td>".
                    
             "</tr>";

        }
        




}      


}
else{
echo "0 results";
}

    ?>
 

    </tbody>
</table>
    
 




 <?php
require_once("footer.php");
?>