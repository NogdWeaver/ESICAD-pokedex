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
$sql = "SELECT p.IDPOKEMON, p.NOMPOKEMON, p.URL_PHOTO,p.PV, p.PA, p.PD, p.PVIT, p.PCS, t1.NOMTYPES AS nomtype1 ,t2.NOMTYPES AS nomtype2
FROM pokemon AS p
join typespokemon AS t1 on t1.IDType=p.idType1 
LEFT join typespokemon AS t2 on t2.IDType=p.idType2


WHERE p.IDPOKEMON =" . $_GET["id"];

var_dump($_GET);

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