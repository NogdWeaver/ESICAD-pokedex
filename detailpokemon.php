<?php
require_once("head.php");
?>


<!-- Préparation du tableau -->

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

//Connection a la BDD et requette 

require_once("database-connection.php");
$sql = "SELECT p.IDPOKEMON, p.NOMPOKEMON, p.URL_PHOTO,p.PV, p.PA, p.PD, p.PVIT, p.PCS, t1.NOMTYPES AS nomtype1 ,t2.NOMTYPES AS nomtype2,

e.idEvolution, a.idAncetre 


FROM pokemon AS p

LEFT JOIN evolutions AS e ON e.idAncetre = p.IDPOKEMON
LEFT JOIN pokemon AS p2 ON e.idEvolution = p2.IDPOKEMON
LEFT JOIN evolutions AS a ON a.idEvolution = p.IDPOKEMON
LEFT JOIN pokemon AS p3 ON a.idAncetre = p3.IDPOKEMON

join typespokemon AS t1 on t1.IDType=p.idType1 
LEFT join typespokemon AS t2 on t2.IDType=p.idType2

 

WHERE p.IDPOKEMON =" . $_GET["id"]; //larequette n'est pas super opti mais j'avais besoin d'obtenir idAncetre et idEVolution 


$result = mysqli_query($databaseConnection,$sql); 


if(mysqli_num_rows($result) > 0){
    while($row = mysqli_fetch_assoc($result)){ 

        //remplissage  du tableau des informations des pokémons 

        echo "<tr>" .
         "<td>".  $row["IDPOKEMON"] . "</td>".
         "<td>" .
         $row["NOMPOKEMON"] ."</a>"
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

            "<td>".

          "</tr>";

          // 2 Boucle pour vérifier si il existe bien un ancetre et/ou une évolution 

        if($row['idAncetre'] != NULL){
            echo "<a href=\"detailpokemon.php?id=" . $row['idAncetre'] . "\">". "<p>"."Ancetre"."</p>" ."</a>";
        }

        else { 
            echo "<p>". "Pas d'Ancetre". "</p>";
        }

        if($row['idEvolution'] != NULL){
            echo "<a href=\"detailpokemon.php?id=" . $row['idEvolution'] . "\">"."<p>". "Evolution"."</p>" ."</a>" ;
        }
        else{
            echo "<p>". "Pas d'Evolution". "</p>";
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