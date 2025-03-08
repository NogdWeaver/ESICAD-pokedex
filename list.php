<!-- 
    Ce fichier représente la page de liste de tous les pokémons.
-->
<?php
require_once("head.php");
?>

   <!--
 <pre>
    &lt;
    A REMPLACER PAR VOTRE CODE POUR CHARGER ET AFFICHER DANS UN TABLEAU LA LISTE DES POKEMONS PAR LEUR NOM.
    CHAQUE POKEMON DOIT ETRE CLIQUABLE POUR NAVIGUER SUR UNE PAGE OU L'ON AFFICHE SON IMAGE ET L'ENSEMBLE DE SES CARACTERISTIQUES 
    &gt;
    </pre>
    
    -->
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
$sql =     "SELECT IDPOKEMON, NOMPOKEMON, URL_PHOTO,PV, PA, PD, PVIT, PCS, p1.NOMTYPES AS nomtype1 ,p2.NOMTYPES AS nomtype2 
FROM pokemon join typespokemon AS p1 on p1.IDType=pokemon.idType1 
LEFT join typespokemon AS p2 on p2.IDType=pokemon.idType2 
ORDER BY IDPOKEMON";

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


<!-- REQUETTE SQL POUR LES EVOLUTIONS

SELECT p3.NOMPOKEMON AS ancetre, p.NOMPOKEMON as pokemon, p2.NOMPOKEMON AS evolution 
FROM pokemon AS p 
LEFT JOIN evolutions AS e ON e.idAncetre = p.IDPOKEMON
LEFT JOIN pokemon AS p2 ON e.idEvolution = p2.IDPOKEMON
LEFT JOIN evolutions AS a ON a.idEvolution = p.IDPOKEMON
LEFT JOIN pokemon AS p3 ON a.idAncetre = p3.IDPOKEMON

-->