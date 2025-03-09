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
$sql = "SELECT p.IDPOKEMON, p.NOMPOKEMON, p.URL_PHOTO,p.PV, p.PA, p.PD, p.PVIT, p.PCS, t1.NOMTYPES AS nomtype1 ,t2.NOMTYPES AS nomtype2,

e.idEvolution, a.idAncetre


FROM pokemon AS p

LEFT JOIN evolutions AS e ON e.idAncetre = p.IDPOKEMON
LEFT JOIN pokemon AS p2 ON e.idEvolution = p2.IDPOKEMON
LEFT JOIN evolutions AS a ON a.idEvolution = p.IDPOKEMON
LEFT JOIN pokemon AS p3 ON a.idAncetre = p3.IDPOKEMON

join typespokemon AS t1 on t1.IDType=p.idType1 
LEFT join typespokemon AS t2 on t2.IDType=p.idType2


WHERE p.IDPOKEMON =" . $_GET["id"];


$result = mysqli_query($databaseConnection,$sql); 


if(mysqli_num_rows($result) > 0){
    while($row = mysqli_fetch_assoc($result)){
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

        if($row['idAncetre'] != NULL){
            echo "<a href=\"detailpokemon.php?id=" . $row['idAncetre'] . "\">". "Ancetre" ."</a>";
        }

        else { 
            echo "Pas d'Ancetre";
        }

        if($row['idEvolution'] != NULL){
            echo "<a href=\"detailpokemon.php?id=" . $row['idEvolution'] . "\">". "Evolution" ."</a>" ;
        }
        else{
            echo "Pas d'Evolution";
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
    /*
$sql2 = "SELECT a.idAncetre, e.idEvolution 
FROM pokemon AS P
LEFT JOIN evolutions AS e ON e.idAncetre = p.IDPOKEMON
LEFT JOIN pokemon AS p2 ON e.idEvolution = p2.IDPOKEMON
LEFT JOIN evolutions AS a ON a.idEvolution = p.IDPOKEMON
LEFT JOIN pokemon AS p3 ON a.idAncetre = p3.IDPOKEMON

WHERE p.IDPOKEMON =" . $_GET["id"];

$result2 = mysqli_query($databaseConnection,$sql2);

var_dump($result2);
var_dump($_GET);
var_dump($row["a.idAncetre"]);

if(mysqli_num_rows($result2) > 0){
    while($row2 = mysqli_fetch_assoc($result2)){
        echo $row2["idAncetre"] ;

    }
}

else{
    echo "0 results";

}

*/
?>




<?php
require_once("footer.php");
?>