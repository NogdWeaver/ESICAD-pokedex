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
$sql = "SELECT IDPOKEMON, NOMPOKEMON, URL_PHOTO,PV, PA, PD, PVIT, PCS, p1.NOMTYPES AS nomtype1 ,p2.NOMTYPES AS nomtype2 
FROM pokemon 
join typespokemon AS p1 on p1.IDType=pokemon.idType1 
LEFT join typespokemon AS p2 on p2.IDType=pokemon.idType2
WHERE IDPOKEMON = " . $_GET["id"];

var_dump($_GET);

$result = mysqli_query($databaseConnection,$sql); 

if(mysqli_num_rows($result) > 0){
    while($row = mysqli_fetch_assoc($result)){
        echo "<tr>" .
         "<td>".  $row["IDPOKEMON"] . "</td>".
         "<td>" .
          "<a href=\"detailpokemon.php?id=" . $row['IDPOKEMON'] . "\">". $row["NOMPOKEMON"] ."</a>"
          . "</td>" .
         "<td>" . "<img src=" . 
         $row["URL_PHOTO"] . ">" . "</td>" . 
         "<td>" . 
         $row["PV"] . "</td>" .
         "<td>" . 
         $row["PA"] . "</td>" .
         "<td>" . 
         $row["PD"] . "</td>" .
         "<td>" . 
         $row["PVIT"] . "</td>" .
         "<td>" . 
         $row["PCS"] . "</td>" .
         "<td>".
         $row["nomtype1"] . "</td>" .
         "<td>" . 
         $row["nomtype2"] . "</td>" .
        "<td>" . 
          "</tr>";

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