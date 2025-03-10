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



    <?php

require_once("database-connection.php");
$sql = "SELECT NOMTYPES, pokemon.NOMPOKEMON, IDType, pokemon.URL_PHOTO, pokemon.IDPOKEMON
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
            
            echo "<h3>" .$row["NOMTYPES"] . "</h3>" ."</td>" ;
        }
        else {
            echo "<td>" . "<a href=\"detailpokemon.php?id=" . $row['IDPOKEMON'] . "\">". $row["NOMPOKEMON"] ."</a>"
            ."</td>".

                "<td>". "<img src =". $row["URL_PHOTO"] . " width=\"50\" height=\"50\" >". "</td>".
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